<?php

namespace AppBundle\Controller\Admin;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use AppBundle\Entity\Student;

class TeacherController extends Controller
{
    /**
     * @Template()
     * @Route("/admin/teachers", name="admin_teachers")
     *
     */
    public function indexAction(Request $request)
    {
        $teachers = $this->get('doctrine')->getRepository('AppBundle:Teacher')->findAll();

        return ['teachers' => $teachers];
    }
}
