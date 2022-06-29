<?php

namespace App\Controller;

use App\Entity\Ingredients;
use App\Entity\Units;

use App\Entity\Ingredientslist;
use App\Entity\Nutriotion;
use App\Service\FileUploader;
use App\Entity\Recipes;
use App\Form\RecipesType;
use App\Form\IngredientsType;
use App\Form\IngredientslistType;
use App\Form\NutriotionType;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\Extension\Core\Type\FileType;

#[Route('admin/recipes')]
class RecipesAdminController extends AbstractController
{
    #[Route('/', name: 'app_recipes_index', methods: ['GET'])]
    public function index(EntityManagerInterface $entityManager): Response
    {
        $recipes = $entityManager
            ->getRepository(Recipes::class)
            ->findAll();

        return $this->render('recipes/index.html.twig', [
            'recipes' => $recipes,
        ]);
    }

    #[Route('/new', name: 'app_recipes_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager, ManagerRegistry $doctrine, FileUploader $fileUploader): Response
    {
        $unit = $doctrine->getManager()->getRepository(Units::class)->find(2);
        $recipe = new Recipes();
        $ing = new Ingredients();
        $inglist = new Ingredientslist();
        $nutrition = new Nutriotion();
        $form = $this->createForm(RecipesType::class, $recipe);
        $form2 = $this->createForm(IngredientsType::class, $ing);
        $form3 = $this->createForm(IngredientslistType::class, $inglist);
        $form4 = $this->createForm(NutriotionType::class, $nutrition);
        $form->handleRequest($request);
        $form2->handleRequest($request);
        $form3->handleRequest($request);
        $form4->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $user = $this->getUser();
            $recipe = $form -> getData();
            $pictureFile = $form->get('picture')->getData();
            // dd($form->get("picture")->getData());
            if($pictureFile){
                $pictureFileName = $fileUploader->upload($pictureFile);
                $recipe->setPicture($pictureFileName);
            }
            $recipe->setFkuserid($user);
            $entityManager = $doctrine -> getManager();
            $entityManager->persist($recipe);
            $entityManager->flush();

            // dd($user);
            
            $ingredients = $form2->get("name")->getData();
            
            $ingredientsArray = explode(", ", $ingredients);
            $qtty = $form3->get("qty")->getData();
            
            $qttyArray = explode(", ", $qtty);
            $i = 0;
            foreach($ingredientsArray as $ingArr){
                $ing = new Ingredients();
                $qtty = new Ingredientslist();
                $ing->setName($ingArr);
                $entityManager->persist($ing);
                $entityManager->flush();
                $qtty->setQty($qttyArray[$i]);
                $qtty->setFkrecipes($recipe);
                $qtty->setFkunits($unit);
                $qtty->setFkingredients($ing);
                $entityManager->persist($qtty);
                $entityManager->flush();
                $i++;
            }
            $nutrition->setFkrecipes($recipe);
            
            // dd($qttyArray);
            
            $entityManager->persist($nutrition);
            $entityManager->flush();

            return $this->redirectToRoute('app_recipes_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('recipes/new.html.twig', [
            'recipe' => $recipe,
            'form' => $form,
            'form2' => $form2,
            'form3' => $form3,
            'form4' => $form4
        ]);
    }

    #[Route('/{id}', name: 'app_recipes_show', methods: ['GET'])]
    public function show(Recipes $recipe): Response
    {
        return $this->render('recipes/show.html.twig', [
            'recipe' => $recipe,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_recipes_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Recipes $recipe, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(RecipesType::class, $recipe);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_recipes_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('recipes/edit.html.twig', [
            'recipe' => $recipe,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_recipes_delete', methods: ['POST'])]
    public function delete(Request $request, Recipes $recipe, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$recipe->getId(), $request->request->get('_token'))) {
            $entityManager->remove($recipe);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_recipes_index', [], Response::HTTP_SEE_OTHER);
    }
     #[Route('/admin/newrec', name: 'app_test_approve', methods: ['GET'])]
    public function approve(EntityManagerInterface $entityManager, ManagerRegistry $doctrine): Response
    {   
        $newRecipe = $doctrine -> getRepository(Recipes::class)->findBy(['approveStat' => "no"]);
        dd($newRecipe);
        return $this->render('recipes/newrecipes.html.twig', [ 'recipes' => $newRecipe,
    ]);
    }
}
