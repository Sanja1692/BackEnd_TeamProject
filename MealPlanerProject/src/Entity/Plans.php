<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Plans
 *
 * @ORM\Table(name="plans", indexes={@ORM\Index(name="fkUser", columns={"fkUser"}), @ORM\Index(name="fkRecipes", columns={"fkRecipes"})})
 * @ORM\Entity
 */
class Plans
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    
    /**
     * @var string
     *
     * @ORM\Column(name="time", type="string", length=255, nullable=false)
     */
    private $time;

    /**
     * @var \Users
     *
     * @ORM\ManyToOne(targetEntity="Users")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkUser", referencedColumnName="id")
     * })
     */
    private $fkuser;

    /**
     * @var \Recipes
     *
     * @ORM\ManyToOne(targetEntity="Recipes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkRecipes", referencedColumnName="id")
     * })
     */
    private $fkrecipes;

    /**
     * @ORM\Column(type="string", length=50)
     */
    private $datum;

    public function getId(): ?int
    {
        return $this->id;
    }

  
    public function getTime(): ?string
    {
        return $this->time;
    }

    public function setTime(string $time): self
    {
        $this->time = $time;

        return $this;
    }

    public function getFkuser(): ?Users
    {
        return $this->fkuser;
    }

    public function setFkuser(?Users $fkuser): self
    {
        $this->fkuser = $fkuser;

        return $this;
    }

    public function getFkrecipes(): ?Recipes
    {
        return $this->fkrecipes;
    }

    public function setFkrecipes(?Recipes $fkrecipes): self
    {
        $this->fkrecipes = $fkrecipes;

        return $this;
    }

    public function getDatum(): ?string
    {
        return $this->datum;
    }

    public function setDatum(string $datum): self
    {
        $this->datum = $datum;

        return $this;
    }

}
