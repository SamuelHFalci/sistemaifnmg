<?php

namespace SistemaIfnmg\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * OcorrenciaAluno
 *
 * @ORM\Table(name="ocorrenciaAluno", indexes={@ORM\Index(name="fk_Ocorrencia_has_Aluno_Ocorrencia1_idx", columns={"ocorrenciafk"}), @ORM\Index(name="fk_Ocorrencia_has_Aluno_Aluno1_idx", columns={"alunofk"})})
 * @ORM\Entity
 */
class OcorrenciaAluno
{
    /**
     * @ORM\Id
     * @ORM\Column(type="integer")
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @ORM\Column(type="integer", length=255)
     */
    private $ocorrenciafk;


    /**
     * @ORM\Column(type="integer", length=255)
     */
    private $alunofk;

    /**
     * @ORM\Column(type="integer", length=255)
     */
    private $confirmacao;


    /**
     * Get id
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
     * Get ocorrenciafk
     * @return \SistemaIfnmg\Entity\Ocorrencia
     */
    public function getOcorrenciafk()
    {
        return $this->ocorrenciafk;
    }

    /**
     * Set ocorrenciafk
     * @param \SistemaIfnmg\Entity\Ocorrencia $ocorrenciafk
     * @return OcorrenciaAluno
     */
    public function setOcorrenciafk($ocorrenciafk)
    {
        $this->ocorrenciafk = $ocorrenciafk;
        return $this;
    }

    /**
     * Get alunofk
     * @return \SistemaIfnmg\Entity\Aluno
     */
    public function getAlunofk()
    {
        return $this->alunofk;
    }

    /**
     * Set alunofk
     * @param \SistemaIfnmg\Entity\Aluno $alunofk
     * @return OcorrenciaAluno
     */
    public function setAlunofk($alunofk)
    {
        $this->alunofk = $alunofk;
        return $this;
    }

    /**
     * Get id
     * @return integer
     */
    public function getConfirmacao()
    {
        return $this->confirmacao;
    }

    /**
     * @param int $confirmacao
     */
    public function setConfirmacao($confirmacao)
    {
        $this->confirmacao = $confirmacao;
    }



}

?>