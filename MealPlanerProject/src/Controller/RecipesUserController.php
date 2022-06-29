<?php

namespace App\Controller;

use App\Entity\Recipes;
use App\Form\Recipes1Type;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use App\Service\FileUploader;

#[Route('/home/recipes')]
class RecipesUserController extends AbstractController
{
    #[Route('/', name: 'app_recipes_user_index', methods: ['GET'])]
    public function index(EntityManagerInterface $entityManager, ManagerRegistry $doctrine): Response
    {
        
        $recipeByUser = $doctrine->getRepository(Recipes::class)->findBy(['fkuserid' => $this->getUser()]);


        return $this->render('recipes_user/index.html.twig', [
            'recipes' => $recipeByUser,
        ]);
    }

    #[Route('/new', name: 'app_recipes_user_new')]
    public function new(Request $request, EntityManagerInterface $entityManager, ManagerRegistry $doctrine, FileUploader $fileUploader): Response
    {
        $this->getUser();
        $recipe = new Recipes();
        $form = $this->createForm(Recipes1Type::class, $recipe);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $user = $this->getUser();
            $recipe->setFkuserid($user);
            $pictureFile = $form->get('picture')->getData();

            dd($pictureFile);
                if($pictureFile){
                    $pictureFileName = $fileUploader->upload($pictureFile);
                    
                    $recipe->setPicture($pictureFileName);
                }
                $recipe = $form -> getData();
                $entityManager = $doctrine -> getManager();
            $entityManager->persist($recipe);
            $entityManager->flush();

            return $this->redirectToRoute('app_recipes_user_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('recipes_user/new.html.twig', [
            'recipe' => $recipe,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_recipes_user_show', methods: ['GET'])]
    public function show(Recipes $recipe): Response
    {
        return $this->render('recipes_user/show.html.twig', [
            'recipe' => $recipe,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_recipes_user_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, Recipes $recipe, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(Recipes1Type::class, $recipe);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_recipes_user_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->renderForm('recipes_user/edit.html.twig', [
            'recipe' => $recipe,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_recipes_user_delete', methods: ['POST'])]
    public function delete(Request $request, Recipes $recipe, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$recipe->getId(), $request->request->get('_token'))) {
            $entityManager->remove($recipe);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_recipes_user_index', [], Response::HTTP_SEE_OTHER);
    }
}
