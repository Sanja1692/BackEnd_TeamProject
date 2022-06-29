<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Reciperating
 *
 * @ORM\Table(name="reciperating", indexes={@ORM\Index(name="fkRecipes", columns={"fkRecipes"}), @ORM\Index(name="fkRating", columns={"fkRating"})})
 * @ORM\Entity
 */
class Reciperating
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
     * @var \Recipes
     *
     * @ORM\ManyToOne(targetEntity="Recipes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkRecipes", referencedColumnName="id")
     * })
     */
    private $fkrecipes;

    /**
     * @var \Rating
     *
     * @ORM\ManyToOne(targetEntity="Rating")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkRating", referencedColumnName="id")
     * })
     */
    private $fkrating;

    public function getId(): ?int
    {
        return $this->id;
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

    public function getFkrating(): ?Rating
    {
        return $this->fkrating;
    }

    public function setFkrating(?Rating $fkrating): self
    {
        $this->fkrating = $fkrating;

        return $this;
    }


}
