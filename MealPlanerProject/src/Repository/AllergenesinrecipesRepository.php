<?php

namespace App\Repository;

use App\Entity\Allergenesinrecipes;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\OptimisticLockException;
use Doctrine\ORM\ORMException;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Allergenesinrecipes|null find($id, $lockMode = null, $lockVersion = null)
 * @method Allergenesinrecipes|null findOneBy(array $criteria, array $orderBy = null)
 * @method Allergenesinrecipes[]    findAll()
 * @method Allergenesinrecipes[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AllergenesinrecipesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Allergenesinrecipes::class);
    }

    /**
     * @throws ORMException
     * @throws OptimisticLockException
     */
    public function add(Allergenesinrecipes $entity, bool $flush = true): void
    {
        $this->_em->persist($entity);
        if ($flush) {
            $this->_em->flush();
        }
    }

    /**
     * @throws ORMException
     * @throws OptimisticLockException
     */
    public function remove(Allergenesinrecipes $entity, bool $flush = true): void
    {
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
    }

    /**
     * @return Allergenesinrecipes[] Returns an array of Allergenesinrecipes objects
     */
                         
    // public function findRec() :  ?Allergenesinrecipes
    // {
    //     return $this->createQueryBuilder('n')
    //     ->addSelect('r.name, r.picture, r.cookTime, n.calories')
    //     ->Join('n.fkrecipes', 'r')
    //         // ->andWhere('e.type = :val')
    //         // ->setParameter('val', $value)
    //         // ->orderBy('e.id', 'ASC')
    //         // ->groupBy('e.type')
    //         // ->setMaxResults(10)
    //         ->getQuery()
    //         ->getResult()
    //     ;
    // }
    

    /*
    public function findOneBySomeField($value): ?Allergenesinrecipes
    {
        return $this->createQueryBuilder('e')
            ->andWhere('e.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
