<?php

namespace App\Form;

use App\Entity\Nutriotion;
use App\Entity\Category;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\NumberType;

class NutriotionType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
        ->add('calories', NumberType::class, [
            'label' => 'Nutrition Info',
            'attr' => ["class"=>"form-control mb-2", "placeholder"=>"Calories"]
        ]) 
        ->add('protein', NumberType::class, [
            'label' => false,
            'attr' => ["class"=>"form-control mb-2", "placeholder"=>"Protein"]
        ]) 
        ->add('fat', NumberType::class, [
            'label' => false,
            'attr' => ["class"=>"form-control mb-2", "placeholder"=>"Fat"]
        ]) 
        ->add('carbohydrates', NumberType::class, [
            'label' => false,
            'attr' => ["class"=>"form-control mb-2", "placeholder"=>"Carbohydrate"]
        ]) 
            ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Nutriotion::class,
        ]);
    }
}
