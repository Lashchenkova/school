<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Classes
 *
 * @ORM\Table(name="classes", uniqueConstraints={@ORM\UniqueConstraint(name="classNumber", columns={"classNumber"}), @ORM\UniqueConstraint(name="classTeacher_2", columns={"classTeacher"})}, indexes={@ORM\Index(name="classTeacher", columns={"classTeacher"})})
 * @ORM\Entity
 */
class Classes
{
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
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \AppBundle\Entity\Teachers
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Teachers")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="classTeacher", referencedColumnName="id")
     * })
     */
    private $classteacher;



    /**
     * Set classnumber
     *
     * @param string $classnumber
     *
     * @return Classes
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
     * @return Classes
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
     * @param \AppBundle\Entity\Teachers $classteacher
     *
     * @return Classes
     */
    public function setClassteacher(\AppBundle\Entity\Teachers $classteacher = null)
    {
        $this->classteacher = $classteacher;

        return $this;
    }

    /**
     * Get classteacher
     *
     * @return \AppBundle\Entity\Teachers
     */
    public function getClassteacher()
    {
        return $this->classteacher;
    }
}
