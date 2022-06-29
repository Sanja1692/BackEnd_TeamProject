<?php

namespace App\Form;

use App\Entity\Users;
use App\Service\FileUploader;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Validator\Constraints\IsTrue;
use Symfony\Component\Validator\Constraints\Length;
use Symfony\Component\Validator\Constraints\NotBlank;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class UsersType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('email', TextType::class, [
            'label' => false,
            'attr' => ["class"=>"form-control mb-2", "placeholder"=>"Email"]
        ])
            // ->add('roles')
            ->add('plainPassword', PasswordType::class, [
                // instead of being set onto the object directly,
                // this is read and encoded in the controller
                'label' => false,
                'mapped' => false,
                'attr' => ['autocomplete' => 'new-password', 'class' => 'form-control', "placeholder"=>"Your Password"],
                'constraints' => [
                    new NotBlank([
                        'message' => 'Please enter a password',
                    ]),
                    new Length([
                        'min' => 6,
                        'minMessage' => 'Your password should be at least {{ limit }} characters',
                        // max length allowed by Symfony for security reasons
                        'max' => 4096,
                    ]),
                ],
            ])
            ->add('fname', TextType::class, [
                'label' => false,
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', "placeholder"=>"First Name"]
            ])
            ->add('lname', TextType::class, [
                'label' => false,
                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px', "placeholder"=>"Last Name"]
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
             ->add('blocked', ChoiceType::class, [
                                'choices' => ['blocked' => 'blocked', 'allowed' => 'allowed'],
                                'attr' => ['class' => 'form-control', 'style' => 'margin-bottom:15px']
                            ])
            
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Users::class,
        ]);
    }
}
