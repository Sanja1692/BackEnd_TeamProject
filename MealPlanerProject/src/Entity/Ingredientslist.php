<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Ingredientslist
 *
 * @ORM\Table(name="ingredientslist", indexes={@ORM\Index(name="fkRecipes", columns={"fkRecipes"}), @ORM\Index(name="fkUnits", columns={"fkUnits"}), @ORM\Index(name="fkIngredients", columns={"fkIngredients"})})
 * @ORM\Entity
 */
class Ingredientslist
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
     * @var int
     *
     * @ORM\Column(name="qty", type="string", nullable=false)
     */
    private $qty;

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
     * @var \Ingredients
     *
     * @ORM\ManyToOne(targetEntity="Ingredients")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkIngredients", referencedColumnName="id")
     * })
     */
    private $fkingredients;

    /**
     * @var \Units
     *
     * @ORM\ManyToOne(targetEntity="Units")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkUnits", referencedColumnName="id")
     * })
     */
    private $fkunits;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getQty(): ?string
    {
        return $this->qty;
    }

    public function setQty(string $qty): self
    {
        $this->qty = $qty;

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

    public function getFkingredients(): ?Ingredients
    {
        return $this->fkingredients;
    }

    public function setFkingredients(?Ingredients $fkingredients): self
    {
        $this->fkingredients = $fkingredients;

        return $this;
    }

    public function getFkunits(): ?Units
    {
        return $this->fkunits;
    }

    public function setFkunits(?Units $fkunits): self
    {
        $this->fkunits = $fkunits;

        return $this;
    }


}
