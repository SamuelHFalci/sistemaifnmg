<?php

namespace SistemaIfnmg\Entity;

use SistemaIfnmg\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity()
 * @ORM\Table(name="prova", indexes={@ORM\Index(name="fk_Prova_has_Turma_Turma1_idx", columns={"turma"})})
 */
class Prova
{

    /**
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     * @var integer $id
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="tema", type="string", length=255)
     */
    private $tema;

    /**
     * @var string
     *
     * @ORM\Column(name="disciplina", type="string", length=255)
     */
    private $disciplina;

    /**
     * @ORM\ManyToOne(targetEntity="SistemaIfnmg\Entity\Turma")
     * @ORM\JoinColumn(name="turmafk", referencedColumnName="id")
     */
    private $turmafk;

    /**
     * @ORM\Column(type="datetime")
     */
    private $data;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set id
     * @param int $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * Get tema
     *
     * @return string
     */
    public function getTema()
    {
        return $this->tema;
    }

    /**
     * Set tema
     *
     * @param string $tema
     */
    public function setTema($tema)
    {
        $this->tema = $tema;
    }

    /**
     * Get disciplina
     *
     * @return string
     */
    public function getDisciplina()
    {
        return $this->disciplina;
    }

    /**
     * Set disciplina
     *
     * @param string $disciplina
     */
    public function setDisciplina($disciplina)
    {
        $this->disciplina = $disciplina;
    }


    /**
     * @return string
     */
    public function getData()
    {
        return $this->data;
    }

    /**
     * @param string $data
     */
    public function setData($data)
    {
        $this->data = $data;
    }

}

?>