<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Teacher
 *
 * @ORM\Table(name="teacher", uniqueConstraints={@ORM\UniqueConstraint(name="user_id_2", columns={"user_id"})}, indexes={@ORM\Index(name="user_id", columns={"user_id"})})
 * @ORM\Entity(repositoryClass="AppBundle\Repository\TeacherRepository")
 */
class Teacher
{
    const GENDER_MALE = 'm';
    const GENDER_FEMALE = 'f';

    /**
     * @var string
     *
     * @ORM\Column(name="FirstName", type="string", length=30, nullable=false)
     */
    private $firstname;

    /**
     * @var string
     *
     * @ORM\Column(name="LastName", type="string", length=30, nullable=false)
     */
    private $lastname;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="DateOfBirth", type="date", nullable=false)
     */
    private $dateofbirth;

    /**
     * @var string
     *
     * @ORM\Column(name="gender", type="string", options={"fixed": true}, nullable=false)
     */
    private $gender;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var \AppBundle\Entity\User
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\User")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     * })
     */
    private $user;



    /**
     * Set firstname
     *
     * @param string $firstname
     *
     * @return Teacher
     */
    public function setFirstname($firstname)
    {
        $this->firstname = $firstname;

        return $this;
    }

    /**
     * Get firstname
     *
     * @return string
     */
    public function getFirstname()
    {
        return $this->firstname;
    }

    /**
     * Set lastname
     *
     * @param string $lastname
     *
     * @return Teacher
     */
    public function setLastname($lastname)
    {
        $this->lastname = $lastname;

        return $this;
    }

    /**
     * Get lastname
     *
     * @return string
     */
    public function getLastname()
    {
        return $this->lastname;
    }

    /**
     * Set dateofbirth
     *
     * @param \DateTime $dateofbirth
     *
     * @return Teacher
     */
    public function setDateofbirth($dateofbirth)
    {
        $this->dateofbirth = $dateofbirth;

        return $this;
    }

    /**
     * Get dateofbirth
     *
     * @return \DateTime
     */
    public function getDateofbirth()
    {
        return $this->dateofbirth;
    }

    /**
     * Set gender
     *
     * @param string $gender
     *
     * @return Teacher
     */
    public function setGender($gender)
    {
        $this->gender = $gender;

        return $this;
    }

    /**
     * Get gender
     *
     * @return string
     */
    public function getGender()
    {
        return $this->gender;
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
     * Set user
     *
     * @param \AppBundle\Entity\User $user
     *
     * @return Teacher
     */
    public function setUser(\AppBundle\Entity\User $user = null)
    {
        $this->user = $user;

        return $this;
    }

    /**
     * Get user
     *
     * @return \AppBundle\Entity\User
     */
    public function getUser()
    {
        return $this->user;
    }
}
