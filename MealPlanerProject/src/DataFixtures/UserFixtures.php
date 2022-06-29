<?php

namespace App\DataFixtures;

use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use App\Entity\Users;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class UserFixtures extends Fixture
{

    public function __construct(UserPasswordHasherInterface $hasher)
  {
      $this->hasher = $hasher;
  }

    public function load(ObjectManager $manager): void
    {
        $user = new Users();
      $user->setEmail("admin@gmail.com");
      $user->setFname("Admin");
      $user->setLname("User");
      $user->setPicture("user.jpg");
      $user->setUserType("user");
      // $user->setStatus("free");
      $user->setRoles(array("ROLE_ADMIN"));
      $password = $this->hasher->hashPassword($user, '123456');
      $user->setPassword($password);

      $manager->persist($user);

        $manager->flush();
    }
}
