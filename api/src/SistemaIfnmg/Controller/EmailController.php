<?php

namespace SistemaIfnmg\Controller;
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;


class EmailController
{
   public function enviar($reuniao){
       $mail = new PHPMailer();
       $mail->CharSet = "UTF-8";
       $mail->IsSMTP();		// Ativar SMTP
       $mail->SMTPDebug = 0;		// Debugar: 1 = erros e mensagens, 2 = mensagens apenas
       $mail->SMTPAuth = true;		// Autenticação ativada
       $mail->SMTPSecure = 'ssl';	// SSL REQUERIDO pelo GMail
       $mail->Host = 'smtp.gmail.com';	// SMTP utilizado
       $mail->Port = 465;  		// A porta 587 deverá estar aberta em seu servidor
       $mail->Username = 'samuelhfalci@gmail.com';
       $mail->Password = 'samuelfalci131286';
       $mail->SetFrom('samuelhfalci@gmail.com', 'Samuel Falci');
       $mail->Subject = "Convocação Reunião $reuniao->titulo $reuniao->data";
       $mail->Body = $reuniao->corpoEmail;
       foreach ($reuniao->servidores as $servidor){
           $mail->AddAddress($servidor->servidorfk->email);
       }

       if(!$mail->Send()) {

           return 'Mail error: '.$mail->ErrorInfo;
       } else {
           return 'Mensagem enviada!';
       }

   }

}


?>