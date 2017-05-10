<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * GradeSubject
 *
 * @ORM\Table(name="grade_subject", uniqueConstraints={@ORM\UniqueConstraint(name="uniq", columns={"classNumber", "t_s_id"})}, indexes={@ORM\Index(name="classNumber", columns={"classNumber"}), @ORM\Index(name="classNumber_2", columns={"classNumber"}), @ORM\Index(name="subject_id", columns={"t_s_id"})})
 * @ORM\Entity(repositoryClass="AppBundle\Repository\GradeSubjectRepository")
 */
class GradeSubject
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var \AppBundle\Entity\GradeSubject
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\TeacherSubject")
     * @ORM\JoinColumn(name="t_s_id", referencedColumnName="id")
     */
    private $tS;

    /**
     * @var \AppBundle\Entity\Grade
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Grade")
     * @ORM\JoinColumn(name="classNumber", referencedColumnName="classNumber")
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
     * @param \AppBundle\Entity\TeacherSubject $tS
     *
     * @return GradeSubject
     */
    public function setTS(\AppBundle\Entity\TeacherSubject $tS = null)
    {
        $this->tS = $tS;

        return $this;
    }

    /**
     * Get tS
     *
     */
    public function getTS()
    {
        return $this->tS;
    }

    /**
     * Set classnumber
     *
     * @param \AppBundle\Entity\Grade $classnumber
     *
     * @return GradeSubject
     */
    public function setClassnumber(\AppBundle\Entity\Grade $classnumber = null)
    {
        $this->classnumber = $classnumber;

        return $this;
    }

    /**
     * Get classnumber
     *
     * @return \AppBundle\Entity\Grade
     */
    public function getClassnumber()
    {
        return $this->classnumber;
    }
}
