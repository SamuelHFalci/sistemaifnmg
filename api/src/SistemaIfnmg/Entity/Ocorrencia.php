<?php

namespace SistemaIfnmg\Entity;

use SistemaIfnmg\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="ocorrencia")
 * @ORM\HasLifecycleCallbacks()
 */
class Ocorrencia
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $titulo;
    /**
     * @ORM\Column(type="integer", length=255)
     */
    private $tipo;
    /**
     * @ORM\Column(type="string", length=255)
     */
    private $descricao;
    /**
     * @ORM\Column(type="datetime")
     */
    private $data;

    /**
     * @ORM\OneToMany(targetEntity="SistemaIfnmg\Entity\OcorrenciaAluno", mappedBy="id")
     */
    private $alunos;

    public function __construct()
    {
        $this->alunos = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param int $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return string
     */
    public function getTitulo()
    {
        return $this->titulo;
    }

    /**
     * @param string $titulo
     */
    public function setTitulo($titulo)
    {
        $this->titulo = $titulo;
    }

    /**
     * @return integer
     */
    public function getTipo()
    {
        return $this->tipo;
    }

    /**
     * @param integer $tipo
     */
    public function setTipo($tipo)
    {
        $this->tipo = $tipo;
    }

    /**
     * @return string
     */
    public function getDescricao()
    {
        return $this->descricao;
    }

    /**
     * @param string $descricao
     */
    public function setDescricao($descricao)
    {
        $this->descricao = $descricao;
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

    /**
     * Add alunos
     * @param \SistemaIfnmg\Entity\OcorrenciaAluno $aluno
     * @return Ocorrencia
     */
    public function addAluno(\SistemaIfnmg\Entity\OcorrenciaAluno $aluno)
    {
        $this->alunos[] = $aluno;
    }

    /**
     * Remove aluno
     *
     * @param \SistemaIfnmg\Entity\OcorrenciaAluno $aluno
     */
    public function removeAluno(\SistemaIfnmg\Entity\OcorrenciaAluno $aluno)
    {
        $this->alunos->removeElement($aluno);
    }

    /**
     * Get alunos
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getAlunos()
    {

        return $this->alunos;
    }


}

?>