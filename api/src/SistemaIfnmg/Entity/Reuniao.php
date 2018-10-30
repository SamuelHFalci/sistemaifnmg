<?php

namespace SistemaIfnmg\Entity;

use SistemaIfnmg\Entity;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity
 * @ORM\Table(name="reuniao")
 * @ORM\HasLifecycleCallbacks()
 */
class Reuniao
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
     * @ORM\Column(type="string", length=255)
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
     * @ORM\OneToMany(targetEntity="SistemaIfnmg\Entity\ReuniaoServidor", mappedBy="id")
     */
    private $servidores;

    public function __construct()
    {
        $this->servidores = new \Doctrine\Common\Collections\ArrayCollection();
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
     * @return string
     */
    public function getTipo()
    {
        return $this->tipo;
    }

    /**
     * @param string $tipo
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
     * Add servidores
     * @param \SistemaIfnmg\Entity\ReuniaoServidor $servidor
     * @return Reuniao
     */
    public function addServidor(\SistemaIfnmg\Entity\ReuniaoServidor $servidor)
    {
        $this->servidores[] = $servidor;
    }

    /**
     * Remove servidor
     *
     * @param \SistemaIfnmg\Entity\ReuniaoServidor $servidor
     */
    public function removeServidor(\SistemaIfnmg\Entity\ReuniaoServidor $servidor)
    {
        $this->servidores->removeElement($servidor);
    }

    /**
     * Get servidores
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getServidores()
    {

        return $this->servidores;
    }
}

?>