<?php

namespace AppBundle\Repository;

/**
 * ArticleRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class GradeRepository extends \Doctrine\ORM\EntityRepository
{
    public function findAllGrades()
    {
        return $this->createQueryBuilder('g')
            ->select('count(s.id) as stud_sum, g.classnumber, g.classroom, t.firstname, t.lastname')
            ->join('g.classteacher','t')
            ->join('g.students','s')
            ->groupBy('g.classnumber')
            ->orderBy('g.classnumber*1, g.classnumber', 'ASC')
            ->getQuery()
            ->getResult();
    }
}