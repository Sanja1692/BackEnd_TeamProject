<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Recipes
 *
 * @ORM\Table(name="recipes", indexes={@ORM\Index(name="fkUserid", columns={"fkUserid"}), @ORM\Index(name="fkCategory", columns={"fkCategory"})})
 * @ORM\Entity
 */
class Recipes
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
     * @ORM\Column(name="name", type="string", length=50, nullable=false)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="string", length=255, nullable=false)
     */
    private $description;

    /**
     * @var string|null
     *
     * @ORM\Column(name="picture", type="string", length=255, nullable=true)
     */
    private $picture;

    /**
     * @var string
     *
     * @ORM\Column(name="preSteps", type="string", length=255, nullable=false)
     */
    private $presteps;

    /**
     * @var string|null
     *
     * @ORM\Column(name="approveStat", type="string", length=255, nullable=true)
     */
    private $approvestat;

    /**
     * @var \Category
     *
     * @ORM\ManyToOne(targetEntity="Category")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkCategory", referencedColumnName="id")
     * })
     */
    private $fkcategory;

    /**
     * @var \Users
     *
     * @ORM\ManyToOne(targetEntity="Users")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fkUserid", referencedColumnName="id")
     * })
     */
    private $fkuserid;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $cookTime;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getPicture(): ?string
    {
        return $this->picture;
    }

    public function setPicture(?string $picture): self
    {
        $this->picture = $picture;

        return $this;
    }

    public function getPresteps(): ?string
    {
        return $this->presteps;
    }

    public function setPresteps(string $presteps): self
    {
        $this->presteps = $presteps;

        return $this;
    }

    public function getApprovestat(): ?string
    {
        return $this->approvestat;
    }

    public function setApprovestat(?string $approvestat): self
    {
        $this->approvestat = $approvestat;

        return $this;
    }

    public function getFkcategory(): ?Category
    {
        return $this->fkcategory;
    }

    public function setFkcategory(?Category $fkcategory): self
    {
        $this->fkcategory = $fkcategory;

        return $this;
    }

    public function getFkuserid(): ?Users
    {
        return $this->fkuserid;
    }

    public function setFkuserid(?Users $fkuserid): self
    {
        $this->fkuserid = $fkuserid;

        return $this;
    }

    public function getCookTime(): ?int
    {
        return $this->cookTime;
    }

    public function setCookTime(?int $cookTime): self
    {
        $this->cookTime = $cookTime;

        return $this;
    }
}
