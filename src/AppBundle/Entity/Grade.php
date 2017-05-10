<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Grade
 *
 * @ORM\Table(name="grade", uniqueConstraints={@ORM\UniqueConstraint(name="classNumber", columns={"classNumber"}), @ORM\UniqueConstraint(name="classTeacher_2", columns={"classTeacher"})}, indexes={@ORM\Index(name="classTeacher", columns={"classTeacher"})})
 * @ORM\Entity(repositoryClass="AppBundle\Repository\GradeRepository")
 */
class Grade
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     *
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="classNumber", type="string", length=4, nullable=false)
     */
    private $classnumber;

    /**
     * @var string
     *
     * @ORM\Column(name="classroom", type="string", length=10, nullable=false)
     */
    private $classroom;

    /**
     * @var \AppBundle\Entity\Teacher
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Teacher")
     * @ORM\JoinColumn(name="classTeacher", referencedColumnName="id")
     */
    private $classteacher;



    /**
     * Set classnumber
     *
     * @param string $classnumber
     *
     * @return Grade
     */
    public function setClassnumber($classnumber)
    {
        $this->classnumber = $classnumber;

        return $this;
    }

    /**
     * Get classnumber
     *
     * @return string
     */
    public function getClassnumber()
    {
        return $this->classnumber;
    }

    /**
     * Set classroom
     *
     * @param string $classroom
     *
     * @return Grade
     */
    public function setClassroom($classroom)
    {
        $this->classroom = $classroom;

        return $this;
    }

    /**
     * Get classroom
     *
     * @return string
     */
    public function getClassroom()
    {
        return $this->classroom;
    }

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set classteacher
     *
     * @param \AppBundle\Entity\Teacher $classteacher
     *
     * @return Grade
     */
    public function setClassteacher(\AppBundle\Entity\Teacher $classteacher = null)
    {
        $this->classteacher = $classteacher;

        return $this;
    }

    /**
     * Get classteacher
     *
     * @return \AppBundle\Entity\Teacher
     */
    public function getClassteacher()
    {
        return $this->classteacher;
    }
}
