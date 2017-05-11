<?php

namespace AppBundle\Controller\Admin;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use AppBundle\Entity\Student;

class SubjectController extends Controller
{
    /**
     * @Template()
     * @Route("/admin/subjects", name="admin_subjects")
     *
     */
    public function indexAction(Request $request)
    {
        $subjects = $this
            ->get('doctrine')
            ->getRepository('AppBundle:TeacherSubject')
            ->findAllSubjects();
        dump($subjects);
        return ['subjects' => $subjects];
    }
}
