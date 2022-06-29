<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Doctrine\Persistence\ManagerRegistry;
use App\Entity\Recipes;
use App\Form\Recipes1Type;



class AdminController extends AbstractController
{
    #[Route('/admin', name: 'app_test')]
    public function index(): Response
    {
        // if($this->isGranted('ROLE_USER'))
        // {
        //     return $this->redirectToRoute('app_main', [], Response::HTTP_SEE_OTHER);
        // }
        return $this->render('admin/index.html.twig', [
            'controller_name' => 'TestController',
        ]);
    }

   
}
