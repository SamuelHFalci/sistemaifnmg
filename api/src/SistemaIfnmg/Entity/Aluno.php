<?php

namespace SistemaIfnmg\Entity;

use SistemaIfnmg\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity()
 * @ORM\Table(name="aluno", indexes={@ORM\Index(name="fk_Aluno_has_Turma_Turma1_idx", columns={"turma"})})
 */
class Aluno
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
     * @ORM\Column(name="nome", type="string", length=255)
     */
    private $nome;
    /**
     * @var string
     *
     * @ORM\Column(name="sobrenome", type="string", length=255)
     */
    private $sobrenome;

    /**
     * @var string
     *
     * @ORM\Column(name="matricula", type="string", length=255)
     */
    private $matricula;

    /**
     * @var string
     *
     * @ORM\Column(name="email", type="string", length=255)
     */
    private $email;
    /**
     * @var string
     *
     * @ORM\Column(name="senha", type="string", length=255)
     */
    private $senha;

    /**
     * @ORM\OneToMany(targetEntity="SistemaIfnmg\Entity\OcorrenciaAluno", mappedBy="id")
     */
    private $ocorrencias;


    /**
     * @ORM\Column(type="integer", length=255)
     */
    private $turma;

    /**
     * @var string
     *
     * @ORM\Column(name="cpf", type="string", length=255)
     */
    private $cpf;
    /**
     * @var string
     *
     * @ORM\Column(name="telefoneResponsaveis", type="string", length=255)
     */
    private $telefoneResponsaveis;
    /**
     * @var string
     *
     * @ORM\Column(name="telefonePessoal", type="string", length=255)
     */
    private $telefonePessoal;




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
     * Get sobrenome
     *
     * @return string
     */
    public function getSobrenome()
    {
        return $this->sobrenome;
    }

    /**
     * Set sobrenome
     * @param string $sobrenome
     */
    public function setSobrenome($sobrenome)
    {
        $this->sobrenome = $sobrenome;
    }


    /**
     * Get matricula
     *
     * @return string
     */
    public function getMatricula()
    {
        return $this->matricula;
    }

    /**
     * Set matricula
     *
     * @param string $matricula
     */
    public function setMatricula($matricula)
    {
        $this->matricula = $matricula;
    }

    /**
     * Get email
     *
     * @return string
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * Set email
     *
     * @param string $email
     */
    public function setEmail($email)
    {
        $this->email = $email;
    }

    /**
     * Get senha
     *
     * @return string
     */
    public function getsenha()
    {
        return $this->senha;
    }

    /**
     * Set senha
     *
     * @param string $senha
     */
    public function setSenha($senha)
    {
        $this->senha = $senha;
    }

    /**
     * Add ocorrencias
     * @param \SistemaIfnmg\Entity\OcorrenciaAluno $ocorrencia
     * @return Aluno
     */
    public function addOcorrencia(\SistemaIfnmg\Entity\OcorrenciaAluno $ocorrencia)
    {
        $this->ocorrencias[] = $ocorrencia;
    }

    /**
     * Remove ocorrencia
     *
     * @param \SistemaIfnmg\Entity\OcorrenciaAluno $ocorrencia
     */
    public function removeOcorrencia(\SistemaIfnmg\Entity\OcorrenciaAluno $ocorrencia)
    {
        $this->ocorrencias->removeElement($ocorrencia);
    }

    /**
     * Get ocorrencias
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getOcorrencias()
    {

        return $this->ocorrencias;
    }

    /**
     * Get turma
     *
     * @return \SistemaIfnmg\Entity\Turma
     */
    public function getTurma(){
        return $this->turma;
    }

    /**
     * Set turma
     *
     * @param Turma $turma
     */
    public function setTurma($turma)
    {
        $this->turma = $turma;
    }

    /**
     * Get cpf
     *
     * @return string
     */
    public function getCpf()
    {
        return $this->cpf;
    }

    /**
     * Set cpf
     *
     * @param string $cpf
     */
    public function setCpf($cpf)
    {
        $this->cpf = $cpf;
    }

    /**
     * Get telefoneResponsaveis
     *
     * @return string
     */
    public function getTelefoneResponsaveis()
    {
        return $this->telefoneResponsaveis;
    }

    /**
     * Set telefoneResponsaveis
     *
     * @param string $telefoneResponsaveis
     */
    public function setTelefoneResponsaveis($telefoneResponsaveis)
    {
        $this->telefoneResponsaveis = $telefoneResponsaveis;
    }
    /**
     * Get telefonePessoal
     *
     * @return string
     */
    public function getTelefonePessoal()
    {
        return $this->telefonePessoal;
    }

    /**
     * Set telefonePessoal
     *
     * @param string $telefonePessoal
     */
    public function setTelefonePessoal($telefonePessoal)
    {
        $this->telefonePessoal = $telefonePessoal;
    }

}

?>