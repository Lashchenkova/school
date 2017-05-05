<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * TeachersSubjects
 *
 * @ORM\Table(name="teachers_subjects", uniqueConstraints={@ORM\UniqueConstraint(name="uniq", columns={"teacher_id", "subject_id"})}, indexes={@ORM\Index(name="teacher_id", columns={"teacher_id", "subject_id"}), @ORM\Index(name="subject_id", columns={"subject_id"}), @ORM\Index(name="IDX_AAEF733241807E1D", columns={"teacher_id"})})
 * @ORM\Entity
 */
class TeachersSubjects
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
     * @var \AppBundle\Entity\Teachers
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Teachers")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="teacher_id", referencedColumnName="id")
     * })
     */
    private $teacher;

    /**
     * @var \AppBundle\Entity\Subjects
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Subjects")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="subject_id", referencedColumnName="id")
     * })
     */
    private $subject;



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
     * @param \AppBundle\Entity\Teachers $teacher
     *
     * @return TeachersSubjects
     */
    public function setTeacher(\AppBundle\Entity\Teachers $teacher = null)
    {
        $this->teacher = $teacher;

        return $this;
    }

    /**
     * Get teacher
     *
     * @return \AppBundle\Entity\Teachers
     */
    public function getTeacher()
    {
        return $this->teacher;
    }

    /**
     * Set subject
     *
     * @param \AppBundle\Entity\Subjects $subject
     *
     * @return TeachersSubjects
     */
    public function setSubject(\AppBundle\Entity\Subjects $subject = null)
    {
        $this->subject = $subject;

        return $this;
    }

    /**
     * Get subject
     *
     * @return \AppBundle\Entity\Subjects
     */
    public function getSubject()
    {
        return $this->subject;
    }
}
