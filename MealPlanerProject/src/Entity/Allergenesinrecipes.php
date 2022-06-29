<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Allergenesinrecipes
 *
 * @ORM\Table(name="allergenesinrecipes", indexes={@ORM\Index(name="fkRecipes", columns={"fkRecipes"}), @ORM\Index(name="fkAllergens", columns={"fkAllergens"})})
 * @ORM\Entity
 */
class Allergenesinrecipes
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
     * @var \Allergens
     *
     * @ORM\ManyToOne(targetEntity="Allergens")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkAllergens", referencedColumnName="id")
     * })
     */
    private $fkallergens;

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

    public function getFkallergens(): ?Allergens
    {
        return $this->fkallergens;
    }

    public function setFkallergens(?Allergens $fkallergens): self
    {
        $this->fkallergens = $fkallergens;

        return $this;
    }


}
