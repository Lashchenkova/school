<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class StudentController extends Controller
{
    /**
     * @Template()
     * @Route("/students", name="students")
     */
    public function indexAction(Request $request)
    {
        // replace this example code with whatever you need
        return [];
    }
}
