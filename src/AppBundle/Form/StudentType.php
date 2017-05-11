<?php

namespace AppBundle\Form;

use AppBundle\Entity\Student;
use AppBundle\Form\DataTransformer\DateTimeTransformer;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\TextType;

class StudentType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('firstname')
            ->add('lastname')
            ->add('dateofbirth', TextType::class)
            ->add('gender', choiceType::class, [
                'choices'  => [
                    'Male' => Student::GENDER_MALE,
                    'Female' => Student::GENDER_FEMALE
                ],
            ]);
//            ->add('user')
//            ->add('classnumber');

        $builder
            ->get('dateofbirth')
            ->addModelTransformer(new DateTimeTransformer());

    }

    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'AppBundle\Entity\Student'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'appbundle_student';
    }


}
