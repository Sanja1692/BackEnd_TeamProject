<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Typeslist
 *
 * @ORM\Table(name="typeslist", indexes={@ORM\Index(name="id", columns={"fkRecipes"}), @ORM\Index(name="fkTypes", columns={"fkTypes"})})
 * @ORM\Entity
 */
class Typeslist
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
     * @var \Types
     *
     * @ORM\ManyToOne(targetEntity="Types")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkTypes", referencedColumnName="id")
     * })
     */
    private $fktypes;

    /**
     * @var \Recipes
     *
     * @ORM\ManyToOne(targetEntity="Recipes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkRecipes", referencedColumnName="id")
     * })
     */
    public $fkrecipes;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFktypes(): ?Types
    {
        return $this->fktypes;
    }

    public function setFktypes(?Types $fktypes): self
    {
        $this->fktypes = $fktypes;

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


}
