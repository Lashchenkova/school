<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Doctrine\Common\Collections\ArrayCollection;

/**
 * TeacherSubject
 *
 * @ORM\Table(name="teacher_subject", uniqueConstraints={@ORM\UniqueConstraint(name="uniq", columns={"teacher_id", "subject_id"})}, indexes={@ORM\Index(name="teacher_id", columns={"teacher_id", "subject_id"}), @ORM\Index(name="subject_id", columns={"subject_id"}), @ORM\Index(name="IDX_AAEF733241807E1D", columns={"teacher_id"})})
 * @ORM\Entity(repositoryClass="AppBundle\Repository\TeacherSubjectRepository")
 */
class TeacherSubject
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
     * @var \AppBundle\Entity\Teacher
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Teacher")
     * @ORM\JoinColumn(name="teacher_id", referencedColumnName="id")
     */
    private $teacher;

    /**
     * @var \AppBundle\Entity\Subject
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Subject")
     * @ORM\JoinColumn(name="subject_id", referencedColumnName="id")
     */
    private $subject;

    /**
     * @var ArrayCollection
     * @ORM\OneToMany(targetEntity="AppBundle\Entity\GradeSubject", mappedBy="t_s_id")
     */
    private $gradeSubject;

    public function __construct() {
        $this->gradeSubject = new ArrayCollection();
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
     * Set teacher
     *
     * @param \AppBundle\Entity\Teacher $teacher
     *
     * @return TeacherSubject
     */
    public function setTeacher(\AppBundle\Entity\Teacher $teacher = null)
    {
        $this->teacher = $teacher;

        return $this;
    }

    /**
     * Get teacher
     *
     * @return \AppBundle\Entity\Teacher
     */
    public function getTeacher()
    {
        return $this->teacher;
    }

    /**
     * Set subject
     *
     * @param \AppBundle\Entity\Subject $subject
     *
     * @return TeacherSubject
     */
    public function setSubject(\AppBundle\Entity\Subject $subject = null)
    {
        $this->subject = $subject;

        return $this;
    }

    /**
     * Get subject
     *
     * @return \AppBundle\Entity\Subject
     */
    public function getSubject()
    {
        return $this->subject;
    }
}
