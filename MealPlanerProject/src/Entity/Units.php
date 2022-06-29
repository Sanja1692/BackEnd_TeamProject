<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Units
 *
 * @ORM\Table(name="units")
 * @ORM\Entity
 */
class Units
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
     * @ORM\Column(name="unitname", type="string", length=50, nullable=false)
     */
    private $unitname;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUnitame(): ?string
    {
        return $this->unitname;
    }

    public function setName(string $unitname): self
    {
        $this->name = $unitname;

        return $this;
    }


}
