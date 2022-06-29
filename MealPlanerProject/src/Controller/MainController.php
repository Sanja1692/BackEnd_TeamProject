<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use App\Repository\NutriotionRepository;
use App\Repository\IngredientslistRepository;
use App\Repository\AllergenesinrecipesRepository;
use App\Entity\Types;
use App\Entity\Recipes;
use App\Entity\Typeslist;
use App\Entity\Plans;
use Symfony\Component\HttpFoundation\Request;
use App\Form\PlansType;

class MainController extends AbstractController
{

    #[Route('/', name: 'app_main')]
    public function index(ManagerRegistry $doctrine, NutriotionRepository $ser): Response
    {
    $types = $doctrine->getRepository(Types::class)->findAll();
    $recipes = $ser->createQueryBuilder('n')
    ->addSelect('r.id,r.name, r.picture, r.cookTime, n.calories')
    ->Join('n.fkrecipes', 'r')
    ->getQuery()
    ->getResult()
    ;    
    // dd($recipes);
        return $this->render('main/index.html.twig', [ 'recipes'=> $recipes, 'types'=>$types]);
    }

    #[Route('/details/{id}', name: 'main_details')]
    public function details(NutriotionRepository $nutrrepo, IngredientslistRepository $ingrrepo, AllergenesinrecipesRepository $allrepo, ManagerRegistry $doctrine, Request $request, $id): Response
    {
        $recipe = $nutrrepo->createQueryBuilder('n')
        ->addSelect('r.name ,r.picture, r.description, r.cookTime, n.calories, n.protein, n.fat, n.carbohydrates')
        ->Join('n.fkrecipes', 'r')
        
        ->andWhere('r.id = ?1')
        ->setParameter(1, $id)
        ->getQuery()
        ->getResult()
        ;

        $ingredients = $ingrrepo->createQueryBuilder('i')
        ->addSelect('i.qty, ing.name, u.unitname')
        ->Join('i.fkingredients', 'ing')
        ->Join('i.fkunits', 'u')
        
        ->andWhere('i.fkrecipes = ?1')
        ->setParameter(1, $id)
        ->getQuery()
        ->getResult()
        ;

        $allergens = $allrepo->findBy(['fkrecipes' => $id]);

        $plan = new Plans();
        $form = $this->createForm(PlansType::class, $plan);
        $form->handleRequest($request);
        $user = $this->getUser();
        $fkrecipe = $doctrine->getRepository(Recipes::class)->find($id);
   
        if ($form->isSubmitted() && $form->isValid()) {
          $plan = $form->getData();
          $plan->setFkuser($user);
          $plan->setFkrecipes($fkrecipe);
          $em = $doctrine->getManager();
          $em->persist($plan);
          $em->flush();

          return $this->redirectToRoute('app_allrecipes');
        }
        

      return $this->render('main/details.html.twig', ['recipe' => $recipe, 'ingredients' => $ingredients, 'allergens' => $allergens, 'form' => $form->createView()]);
    }

    #[Route('/filter/{type}', name: 'main_filter')]
    public function getTypes(ManagerRegistry $doctrine, $type): Response
    {
      $recipes = $doctrine->getRepository(Typeslist::class)->findBy(['fktypes' => $type]);
      foreach($recipes as $value) {
          $value->fkrecipes->getName();
      }
      
      return $this->render('main/filter.html.twig', ['recipes' => $recipes]);
    }
}
