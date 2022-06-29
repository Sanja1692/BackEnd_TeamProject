<?php

namespace App\Repository;

use App\Entity\Ingredientslist;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\OptimisticLockException;
use Doctrine\ORM\ORMException;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Ingredientslist|null find($id, $lockMode = null, $lockVersion = null)
 * @method Ingredientslist|null findOneBy(array $criteria, array $orderBy = null)
 * @method Ingredientslist[]    findAll()
 * @method Ingredientslist[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class IngredientslistRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Ingredientslist::class);
    }

    /**
     * @throws ORMException
     * @throws OptimisticLockException
     */
    public function add(Ingredientslist $entity, bool $flush = true): void
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
    public function remove(Ingredientslist $entity, bool $flush = true): void
    {
        $this->_em->remove($entity);
        if ($flush) {
            $this->_em->flush();
        }
    }

    /**
     * @return Ingredientslist[] Returns an array of Ingredientslist objects
     */
                         
    // public function findRec() :  ?Ingredientslist
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
    public function findOneBySomeField($value): ?Ingredientslist
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
