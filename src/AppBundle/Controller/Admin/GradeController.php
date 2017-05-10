<?php

namespace AppBundle\Controller\Admin;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use AppBundle\Entity\Student;

class GradeController extends Controller
{
    /**
     * @Template()
     * @Route("/admin/grades", name="admin_grades")
     *
     */
    public function indexAction(Request $request)
    {
        $grades = $this
            ->get('doctrine')
            ->getRepository('AppBundle:Grade')
            ->findAllGrades();

        return ['grades' => $grades];
    }
}
