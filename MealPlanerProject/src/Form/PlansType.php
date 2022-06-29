<?php

namespace App\Form;

use App\Entity\Plans;

use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\FormBuilderInterface;


class PlansType extends AbstractType
{
  public function buildForm(FormBuilderInterface $builder, array $options): void
  {
      $builder
          ->add('time', ChoiceType::class, [
              'label' => false,
              'choices' => ['Breakfast' => 'Breakfast', 'Lunch' => 'Lunch', 'Dinner' => 'Dinner'],
              'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
          ])
          ->add('datum', ChoiceType::class, [
            'label' => false,
            'choices' => ['Monday' => 'Monday', 'Tuesday' => 'Tuesday', 'Wednesday' => 'Wednesday', 'Thursday' => 'Thursday', 'Friday' => 'Friday', 'Saturday' => 'Saturday', 'Sunday' => 'Sunday'],
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
            ])
          ->add('save', SubmitType::class, [
              'label' => 'Add To Planner',
              'attr' => ['class' => 'usrbtn2', 'style' => 'margin-bottom:15px']
          ]);
  }

  public function configureOptions(OptionsResolver $resolver): void
  {
      $resolver->setDefaults([
          'data_class' => Plans::class,
      ]);
  }
}