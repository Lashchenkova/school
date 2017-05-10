<?php

namespace AppBundle\Controller\Admin;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use AppBundle\Entity\Student;

class StudentController extends Controller
{
    /**
     * @Template()
     * @Route("/admin/students", name="admin_students")
     *
     */
    public function indexAction(Request $request)
    {
        $students = $this->get('doctrine')->getRepository('AppBundle:Student')->findAll();
        dump($students);
        return ['students' => $students];
    }
}
