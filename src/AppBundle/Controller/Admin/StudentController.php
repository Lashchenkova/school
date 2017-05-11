<?php

namespace AppBundle\Controller\Admin;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use AppBundle\Entity\Student;
use AppBundle\Form\StudentType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;

class StudentController extends Controller
{
    /**
     * @Template()
     * @Route("/admin/students", name="admin_students")
     *
     * @param Request $request
     * @return array
     */
    public function indexAction(Request $request)
    {
        $students = $this
            ->get('doctrine')
            ->getRepository('AppBundle:Student')
            ->findAllStudents();

        return ['students' => $students];
    }

    /**
     * @Route("/admin/students/delete/{id}", name="admin_student_delete")
     *
     * @param Request $request
     * @return Response
     */
    public function deleteAction(Request $request)
    {
        $doctrine = $this
            ->get('doctrine');

        $student = $doctrine
            ->getRepository('AppBundle:Student')
            ->find($request->get('id'));

        if (!$student) {
            $this->addFlash('fail', 'Student not found');
            return $this->redirectToRoute('admin_students');
        }

        $doctrine->getManager()->remove($student);
        $doctrine->getManager()->flush();

        $this->addFlash('success', 'Student deleted');
        return $this->redirectToRoute('admin_students');
    }

    /**
     * @Template()
     * @Route("/admin/students/edit/{id}", name="admin_student_edit")
     *
     * @param Request $request
     * @return \Symfony\Component\HttpFoundation\RedirectResponse|array
     */
    public function editAction(Request $request)
    {
        $doctrine = $this
            ->get('doctrine');

        $student = $doctrine
            ->getRepository('AppBundle:Student')
            ->find($request->get('id'));

        if (!$student) {
            $this->addFlash('fail', 'Student not found');
            return $this->redirectToRoute('admin_students');
        }

        $form = $this->createForm(StudentType::class, $student);
        $form->add('submit', SubmitType::class);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $doctrine->getManager()->persist($student);
            $doctrine->getManager()->flush();
            $this->addFlash('success', 'Student saved');
            return $this->redirectToRoute('admin_students');
        }

        return ['form' => $form->createView()];
    }

    /**
     * @Template()
     * @Route("/admin/students/create", name="admin_students_create")
     *
     */
    public function createAction(Request $request)
    {
//        $students = $this
//            ->get('doctrine')
//            ->getRepository('AppBundle:Student')
//            ->findAllStudents();
//
//        return ['students' => $students];
    }
}
