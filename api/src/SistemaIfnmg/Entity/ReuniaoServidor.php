<?php

namespace SistemaIfnmg\Entity;
use Doctrine\ORM\Mapping as ORM;
/**
 * ReuniaoServidor
 *
 * @ORM\Table(name="reuniaoservidor", indexes={@ORM\Index(name="fk_Reuniao_has_Servidor_Reuniao1_idx", columns={"reuniaofk"}), @ORM\Index(name="fk_Reuniao_has_Servidor_Servidor1_idx", columns={"servidorfk"})})
 * @ORM\Entity
 */
class ReuniaoServidor
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
    private $reuniaofk;


    /**
     * @ORM\Column(type="integer", length=255)
     */
    private $servidorfk;


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
     * Get reuniaofk
     * @return \SistemaIfnmg\Entity\Reuniao
     */
    public function getReuniaofk()
    {
        return $this->reuniaofk;
    }

    /**
     * Set reuniaofk
     * @param \SistemaIfnmg\Entity\Reuniao $reuniaofk
     * @return ReuniaoServidor
     */
    public function setReuniaofk($reuniaofk)
    {
        $this->reuniaofk = $reuniaofk;
        return $this;
    }

    /**
     * Get servidorfk
     * @return \SistemaIfnmg\Entity\Servidor
     */
    public function getServidorfk()
    {
        return $this->servidorfk;
    }

    /**
     * Set servidorfk
     * @param \SistemaIfnmg\Entity\Servidor $servidorfk
     * @return ReuniaoServidor
     */
    public function setServidorfk($servidorfk)
    {
        $this->servidorfk = $servidorfk;
        return $this;
    }



}

?>