<?php

namespace SistemaIfnmg\Entity;

use SistemaIfnmg\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity()
 * @ORM\Table(name="turma")
 */
class Turma
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
     * @ORM\Column(name="codigo", type="string", length=255)
     */
    private $codigo;
    /**
     * @var string
     *
     * @ORM\Column(name="nome", type="string", length=255)
     */
    private $nome;

    /**
     * @var string
     *
     * @ORM\Column(name="curso", type="string", length=255)
     */
    private $curso;

    /**
     * @var string
     *
     * @ORM\Column(name="ano", type="string", length=255)
     */
    private $ano;
    /**
     * @var string
     *
     * @ORM\Column(name="modalidade", type="string", length=255)
     */
    private $modalidade;

//    /**
//     * @var \Doctrine\Common\Collections\Collection
//     * @ORM\OneToMany(targetEntity="SistemaIfnmg\Entity\Aluno", mappedBy="turma")
//     *
//     */
//    private $alunos;


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
     * Get codigo
     *
     * @return string
     */
    public function getCodigo()
    {
        return $this->codigo;
    }

    /**
     * Set codigo
     *
     * @param string $codigo
     */
    public function setCodigo($codigo)
    {
        $this->codigo = $codigo;
    }

    /**
     * Get nome
     *
     * @return string
     */
    public function getNome()
    {
        return $this->nome;
    }

    /**
     * Set nome
     *
     * @param string $nome
     */
    public function setNome($nome)
    {
        $this->nome = $nome;
    }

    /**
     * Get curso
     *
     * @return string
     */
    public function getCurso()
    {
        return $this->curso;
    }

    /**
     * Set curso
     *
     * @param string $curso
     */
    public function setCurso($curso)
    {
        $this->curso = $curso;
    }

    /**
     * Get ano
     *
     * @return string
     */
    public function getAno()
    {
        return $this->ano;
    }

    /**
     * Set ano
     *
     * @param string $ano
     */
    public function setAno($ano)
    {
        $this->ano = $ano;
    }
    /**
     * Get modalidade
     *
     * @return string
     */
    public function getModalidade()
    {
        return $this->modalidade;
    }

    /**
     * Set modalidade
     *
     * @param string $modalidade
     */
    public function setModalidade($modalidade)
    {
        $this->modalidade = $modalidade;
    }

}

?>