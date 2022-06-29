<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\Recipes;
use App\Entity\Types;
use App\Entity\Plans;
use App\Form\Recipes1Type;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;
use App\Repository\NutriotionRepository;
use App\Form\PlansType;
use Symfony\Component\HttpFoundation\Request;



class HomeController extends AbstractController
{
    #[Route('/home', name: 'app_static')]
    public function index(EntityManagerInterface $entityManager, ManagerRegistry $doctrine): Response
    {
        $user = $this->getUser();

        $recipes = $entityManager
            ->getRepository(Recipes::class)
            ->findAll();

        $week = array("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday");
        $mealplanbyuser = $entityManager
            ->getRepository(Plans::class)->findBy(['fkuser' => $user]);

        $recipeByUser = $doctrine->getRepository(Recipes::class)->findBy(['fkuserid' => $this->getUser()]);

        return $this->render('home/index.html.twig', [
            'recipes' => $recipes, 'user' => $user, "week"=>$week,'mealplanbyuser' => $mealplanbyuser, 'recipesbyuser' => $recipeByUser 
        ]);
    }

    #[Route('/home/allrecipes', name: 'app_allrecipes')]
    public function allrecipes(ManagerRegistry $doctrine, NutriotionRepository $ser, Request $request): Response
    {
    $types = $doctrine->getRepository(Types::class)->findAll();
    $recipes = $ser->createQueryBuilder('n')
    ->addSelect('r.id,r.name, r.picture, r.cookTime, n.calories')
    ->Join('n.fkrecipes', 'r')

    ->getQuery()
    ->getResult()
    ;    
        return $this->render('home/allrecipes.html.twig', [ 'recipes'=> $recipes, 'types'=>$types]);
    }

    #[Route('/delete/{id}', name: 'app_delete')]
    public function delete(ManagerRegistry $doctrine, $id): Response
    {
      $em = $doctrine->getManager();
      $planitem = $em->getRepository(Plans::class)->find($id);
      $em->remove($planitem);
        
        $em->flush();
        $this->addFlash(
            'notice',
            'Your Event has been removed!'
        );
        return $this->redirectToRoute('app_static');
    }

    #[Route('/home/edit/{id}', name: 'app_edit')]
    public function edit(Request $request, ManagerRegistry $doctrine, $id): Response
  {
      $plan = $doctrine->getRepository(Plans::class)->find($id);
      $form = $this->createForm(PlansType::class, $plan);
      $form->handleRequest($request);

      if ($form->isSubmitted() && $form->isValid()) {
          $plan = $form->getData();
          $em = $doctrine->getManager();
          $em->persist($plan);
          $em->flush();
          $this->addFlash(
               'notice',
               'Mealplan edited Edited'
               );

          return $this->redirectToRoute('app_static');
      }

      return $this->render('home/edit.html.twig', ['form' => $form->createView()]);
  }
  #[Route('/contact', name: 'app_contact', methods: ['GET'])]
    public function contacts(): Response
    {
        return $this->render('home/contact.html.twig');
    }
    #[Route('/about', name: 'app_about', methods: ['GET'])]
    public function about(): Response
    {
        return $this->render('home/about.html.twig');
    }

}
