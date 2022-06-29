<?php

namespace App\Repository;

use App\Entity\Nutriotion;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\OptimisticLockException;
use Doctrine\ORM\ORMException;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Nutriotion|null find($id, $lockMode = null, $lockVersion = null)
 * @method Nutriotion|null findOneBy(array $criteria, array $orderBy = null)
 * @method Nutriotion[]    findAll()
 * @method Nutriotion[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class NutriotionRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Nutriotion::class);
    }

    /**
     * @throws ORMException
     * @throws OptimisticLockException
     */
    public function add(Nutriotion $entity, bool $flush = true): void
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
    public function remove(Nutriotion $entity, bool $flush = true): void
    {
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
    }

    /**
     * @return Nutriotion[] Returns an array of Nutriotion objects
     */
                         
    // public function findRec() :  ?Nutriotion
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
    public function findOneBySomeField($value): ?Nutriotion
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
