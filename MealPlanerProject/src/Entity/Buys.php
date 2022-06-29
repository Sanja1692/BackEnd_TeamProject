<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Buys
 *
 * @ORM\Table(name="buys", indexes={@ORM\Index(name="fkUser", columns={"fkUser"}), @ORM\Index(name="fkIngredient", columns={"fkIngredient"})})
 * @ORM\Entity
 */
class Buys
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
     * @var \Users
     *
     * @ORM\ManyToOne(targetEntity="Users")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkUser", referencedColumnName="id")
     * })
     */
    private $fkuser;

    /**
     * @var \Ingredients
     *
     * @ORM\ManyToOne(targetEntity="Ingredients")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkIngredient", referencedColumnName="id")
     * })
     */
    private $fkingredient;

    public function getId(): ?int
    {
        return $this->id;
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

    public function getFkingredient(): ?Ingredients
    {
        return $this->fkingredient;
    }

    public function setFkingredient(?Ingredients $fkingredient): self
    {
        $this->fkingredient = $fkingredient;

        return $this;
    }


}
