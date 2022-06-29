<?php

namespace App\Form;

use App\Entity\Recipes;
use App\Service\FileUploader;
use App\Entity\Users;
use App\Entity\Category;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;

class RecipesType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('name', TextType::class, [
            'label' => false,
            'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', "placeholder"=>"Recipe Title"]
        ])
        ->add('presteps', TextType::class, [
            'label' => false,
            'attr' => ["class"=>"form-control mb-2", "placeholder"=>"Description"]
        ])
        ->add('description', TextType::class, [
            'label' => false,
            'attr' => ["class"=>"form-control mb-2", "placeholder"=>"Add Preparation Steps"]
        ])
                    
             ->add('approvestat', ChoiceType::class, [
                'label' => 'Approve Recipe',
                'choices' => ['approved' => 'approved', 'no' => 'no'],
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px'], 'data' => 'no'
            ])
            // ->add('fkcategory', EntityType::class, ['class' => Category::class, 'choice_label' => 'catName'])
            ->add('cookTime', NumberType::class, [
                'label' => false,
                'attr' => ["class"=>"form-control mb-2", "placeholder"=>"Cook time in Minutes"]
            ])
            ->add('picture', FileType::class, [
                'label' => 'Upload Picture',
                //unmapped means that is not associated to any entity property
                            'mapped' => false,
                //not mandatory to have a file
                            'required' => false,
                
                //in the associated entity, so you can use the PHP constraint classes as validators
                            'constraints' => [
                                new File([
                                    'maxSize' => '5048k', // 14
                                    'mimeTypes' => [
                                        'image/png',
                                        'image/jpeg',
                                        'image/jpg',
                                    ],
                                    'mimeTypesMessage' => 'Please upload a valid image file',
                                ])
                            ],        ])
            ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Recipes::class,
        ]);
    }
}
