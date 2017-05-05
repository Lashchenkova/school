<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ClassesSubjects
 *
 * @ORM\Table(name="classes_subjects", uniqueConstraints={@ORM\UniqueConstraint(name="uniq", columns={"classNumber", "t_s_id"})}, indexes={@ORM\Index(name="classNumber", columns={"classNumber"}), @ORM\Index(name="classNumber_2", columns={"classNumber"}), @ORM\Index(name="subject_id", columns={"t_s_id"})})
 * @ORM\Entity
 */
class ClassesSubjects
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \AppBundle\Entity\TeachersSubjects
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\TeachersSubjects")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="t_s_id", referencedColumnName="id")
     * })
     */
    private $tS;

    /**
     * @var \AppBundle\Entity\Classes
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Classes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="classNumber", referencedColumnName="classNumber")
     * })
     */
    private $classnumber;



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
     * Set tS
     *
     * @param \AppBundle\Entity\TeachersSubjects $tS
     *
     * @return ClassesSubjects
     */
    public function setTS(\AppBundle\Entity\TeachersSubjects $tS = null)
    {
        $this->tS = $tS;

        return $this;
    }

    /**
     * Get tS
     *
     * @return \AppBundle\Entity\TeachersSubjects
     */
    public function getTS()
    {
        return $this->tS;
    }

    /**
     * Set classnumber
     *
     * @param \AppBundle\Entity\Classes $classnumber
     *
     * @return ClassesSubjects
     */
    public function setClassnumber(\AppBundle\Entity\Classes $classnumber = null)
    {
        $this->classnumber = $classnumber;

        return $this;
    }

    /**
     * Get classnumber
     *
     * @return \AppBundle\Entity\Classes
     */
    public function getClassnumber()
    {
        return $this->classnumber;
    }
}
