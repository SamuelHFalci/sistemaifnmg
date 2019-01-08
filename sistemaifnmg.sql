/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : sistemaifnmg

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-01-08 16:22:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for aluno
-- ----------------------------
DROP TABLE IF EXISTS `aluno`;
CREATE TABLE `aluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `matricula` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `turma` int(11) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `telefoneResponsaveis` varchar(255) NOT NULL,
  `telefonePessoal` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Aluno_has_Turma_Turma1_idx` (`turma`) USING BTREE,
  CONSTRAINT `fk_Aluno_has_Turma_Turma1` FOREIGN KEY (`turma`) REFERENCES `turma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of aluno
-- ----------------------------
INSERT INTO `aluno` VALUES ('8', 'Ana Clara', 'Baracho Gomes', '146482', 'anaclarabaracho13@gmail.com', '4d9d0833bf3347c309a1b73c028e525a', '4', '16303006671', '(38) 9 9920-8457', '(38) 9 9920-8457');
INSERT INTO `aluno` VALUES ('9', 'Ana Luíza', 'Cruz', '146484', 'lulucruz9.dtna@gmail.com', 'f30a3957d04e6d0530641476c1db7d92', '4', '15316146638', '(38) 3531-4238', '(38) 9 9861-8809');
INSERT INTO `aluno` VALUES ('10', 'Apoenam Uirandê', 'Pires Rufino', '146486', 'rufinoapoenan@gmail.com', 'cd0f69e9ed6c70b28b66de8f0f42c14d', '4', '11839357657', '(38) 9-8801-2914', '(38) 9-8801-2914');
INSERT INTO `aluno` VALUES ('11', 'Bárbara', 'da Cunha Almeida', '146372', 'barbaradacunhaalmeida@ifnmg.edu.br', '8eb5aa313724c12be7745ecc731ca2aa', '4', '16201543660', '(38) 9 99881660', '(38) 9 99881660');
INSERT INTO `aluno` VALUES ('12', 'Bruna', 'Fernandes Rosa', '146487', 'wilsonwagnerrosa@yahoo.com.br', '380aebd5d5a5e7ed68e22efb440b33e2', '4', '12310529613', '(38) 9 99572759', '(38) 9 99841454');
INSERT INTO `aluno` VALUES ('13', 'Carlos Eduardo', 'Rezende Barroso', '146488', 'kadu.rbarroso@gmail.com', '49d30a5e48d541d93d67eaf20dd57adb', '4', '10845740636', '(38) 3531-7505', '(38) 9-8804-1596');
INSERT INTO `aluno` VALUES ('14', 'Daniela Iara', 'Silva Rosa', '146490', 'iiaradanii@gmail.com', '7809e0e1f922c8920ad6d4980a5a1a5c', '4', '16128919693', '(38) 3535-1190', '(38) 9-9922-3335');
INSERT INTO `aluno` VALUES ('15', 'Danilo', 'Santos Cruz', '146492', 'danilo0808@gmail.com', '437e5f14dc2712e1483d6c608c6e92ab', '4', '16386589602', '(38) 3531-7885', '(38) 9-8813-7853');
INSERT INTO `aluno` VALUES ('16', 'Davi', 'Reis Silva', '146494', 'antoniadli@yahoo.com.br', 'd9ded41ca8478e2796f0e9e764b0a419', '4', '09280489690', '(38) 3531-1194', '(38) 9-8804-1598');
INSERT INTO `aluno` VALUES ('17', 'Fernanda', 'Nunes Fernandes', '146496', 'fernandanunes1902@gmail.com', 'b28ae75b848e374eceb031fc0d56f33b', '4', '13542859648', '(38) 9-8818-4518', '(38) 9-8831-5013');
INSERT INTO `aluno` VALUES ('18', 'Flávio', 'Faria Araújo', '146500', 'rosemairegfariaaraujo@yahoo.com.br', '14d32dc9bb42e5bb992a4b4f099430a2', '4', '10900509686', '(38) 3541-4042', '(38) 9-8801-5186');
INSERT INTO `aluno` VALUES ('19', 'Ian Carlos', 'Gonçalves da Conceição', '146508', 'iancarlosgoncalves52@gmail.com', 'a68e81b0d5902203f36b924da5045c1d', '4', '15876376698', '(38) 3527-1717', '(38) 9-9194-0118');
INSERT INTO `aluno` VALUES ('20', 'Igor', 'Lima Sousa', '146510', 'igorlima1234567891011@gmail.com', 'bb112de153eec23c7fd4fc843f109321', '4', '14324670692', '(38) 9-9988-4360', '(38) 9-9988-4360');
INSERT INTO `aluno` VALUES ('21', 'João Pedro', 'Dayrell de Souza', '146516', 'dayrell@tutanota.com', '293c5b5ce14aae189e03797acc3e2d78', '4', '11760126659', '(38) 9-8837-3266', '(38) 9-8837-3266');
INSERT INTO `aluno` VALUES ('22', 'José Eduardo', 'Oss Trindade', '146530', 'je.trindade2000@gmail.com', 'f5802df6870bd877639f2a79e6e6d921', '4', '17163823789', '(38) 99865-2133', '(27) 9-9969-2748');
INSERT INTO `aluno` VALUES ('23', 'Kaique', 'Xavier Costa', '146531', 'kaiquex71@gmail.com', '7ed048ed8bcb8259dc16af6cdaf43630', '4', '13245865678', '(38) 9-8803-2576', '(38) 9-8803-2576');
INSERT INTO `aluno` VALUES ('24', 'Kamily', 'Sanguinete de Miranda', '146532', 'kamilysanguinetedemiranda@ifnmg.edu.br', '21b206ed58c748cf9e0d590f30d8034f', '4', '11839349638', '(38) 9-8809-3444', '(38) 9-8809-3444');
INSERT INTO `aluno` VALUES ('25', 'Kamily', 'Vitória Araújo', '146533', 'kamilyaraujo2345@gmail.com', 'cccbc53819eaaf78c7e0875db1f3bf55', '4', '13368995650', '(38) 9-9737-2613', '(38) 9-9737-2613');
INSERT INTO `aluno` VALUES ('26', 'Kauan', 'Moreira Guedes', '146535', 'guedes-datas1@hotmail.com', 'fe919c8fa029c9250d21ebde4dae8938', '4', '13364775630', '(38) 3535-1123', '(38) 9-9983-8816');
INSERT INTO `aluno` VALUES ('27', 'Laisa Carolina', 'Numeriano Silva', '146537', 'laisanumeriano456@gmail.com', 'a6f441ee93170b9cdb794f21d53e2473', '4', '12955706612', '(38) 3535-1318', '(38) 9-9911-2705');
INSERT INTO `aluno` VALUES ('28', 'Laura', 'Miranda Lemes', '146540', 'lauramlemes@gmail.com', 'd4154cdb9c0df841120cf14b01ee94c8', '4', '08975295613', '(38) 9-9950-8084', '(38) 9-9922-1299');
INSERT INTO `aluno` VALUES ('29', 'Letícia', 'Cazelli Pires', '146542', 'leticia.cazelli@gmail.com', '20e66286fcb9281743ae76cbb5e5d327', '4', '13289428648', '(38) 3531-0310', '(38) 9-8811-3531');
INSERT INTO `aluno` VALUES ('30', 'Marco Benjamin', 'Reis Oliveira', '146544', 'benjaolivei@gmail.com', 'a729368ccb3ce477c1de07ef2a233ac0', '4', '14447992663', '(38) 3531-8645', '(38) 9-8809-5195');
INSERT INTO `aluno` VALUES ('31', 'Maria Luiza', 'Cordeiro Simões', '146546', 'valmarilu@hotmail.com', 'bfe7ee51594bea67a4be45995e56c215', '4', '13301037690', '(38) 9-9919-8036', '(38) 9-8805-9711');
INSERT INTO `aluno` VALUES ('32', 'Mayara', 'Paixão de Lima', '146548', 'marcia_paixao1@yahoo.com.br', '35ca01de7c7e34d6c18f9d69c18ebeb7', '4', '10515886696', '(38) 3543-1063', '(38) 9-9921-6126');
INSERT INTO `aluno` VALUES ('33', 'Michelly', 'Nunes Ávila', '146550', 'lenileninha@hotmail.com', '07c6a2bdbfcb1c5057f36c1df0aa8274', '4', '14526753688', '(38) 9-8811-8633', '(38) 9-8803-8238');
INSERT INTO `aluno` VALUES ('34', 'Miguel', 'Pereira de Paula', '147741', 'guegomiguel@yahoo.com.br', 'f6a620c70c4653642b65e9f392ece15a', '4', '16017348671', '(38) 9-8852-8717', '(38) 9-8852-8717');
INSERT INTO `aluno` VALUES ('35', 'Natallya', 'dos Santos Paulino', '146552', 'natallyapaulino13@gmail.com', '949328f8181f7c37327d60091e07ad8d', '4', '16551259669', '(38) 9-9992-6702', '(38) 9-9992-6702');
INSERT INTO `aluno` VALUES ('36', 'Pedro Henrique', 'Barroso', '146553', 'ph.barroso02@gmail.com', 'e462da8d85540fcecd8a45c567aaad21', '4', '10729080692', '(38) 3531-7645', '(38) 9-8838-1763');
INSERT INTO `aluno` VALUES ('37', 'Pedro', 'Silva Pereira', '146555', 'pedrocapkk@gmail.com', 'b855ece46b72a82a6b968a901c8f0540', '4', '12723419681', '(38) 9-8828-9062', '(38) 9-8828-9062');
INSERT INTO `aluno` VALUES ('38', 'Riquelme', 'Moreira Campos', '146557', 'marilacfroes@yahoo.com.br', '5018d3467c43468cfcfba3e0ce159bfb', '4', '09259633648', '(38) 9-9918-6726', '(38) 9-9918-6726');
INSERT INTO `aluno` VALUES ('39', 'Sara de Jesus', 'Rocha', '146563', 'sarahrochalive@hotmail.com', 'b6a5d559a3730bdcd580ee790b668bf5', '4', '16544123684', '(38) 9-9834-5671', '(38) 9-9834-5671');
INSERT INTO `aluno` VALUES ('40', 'Tainara', 'Silva Almeida', '146564', 'tainara162015@outlook.com', 'ebbd6ac713c701d4ae82e90f03e3ebc4', '4', '12951651635', '(38) 9-9983-2887', '(38) 9-9983-2887');
INSERT INTO `aluno` VALUES ('41', 'Victor', 'Almeida de Amorim', '146566', 'evamorim947@gmail.com', '536c392b29f81de0996212d400d03d55', '4', '11298455677', '(38) 9-9915-6480', '(38) 9-9832-3723');
INSERT INTO `aluno` VALUES ('42', 'Vitor Eduardo', 'Bonfim Pereira Mendes', '146568', 'vitorbonfimpereiramendes@ifnmg.edu.com', 'bcac054a83d60ecc504236c793896cdf', '4', '16213929614', '(38) 3531-1768', '(38) 9-8837-9391');
INSERT INTO `aluno` VALUES ('43', 'Vívian', 'Barroso Santos', '146570', 'vivianbarroso90@gmail.com', '3a066ea5b6b5ec1e6ad646f9a72596f7', '4', '11064097600', '(38) 9-8849-3933', '(38) 9-8849-3933');
INSERT INTO `aluno` VALUES ('44', 'Ana Clara', 'Santana Coelho de Oliveira', '146254', 'anaclarasantanacoelhodeoliveira@ifnmg.edu.br', '38ce18542bff4e22312b7eef861300c4', '5', '12953455604', '(38) 3531-3264', '(38) 9-8825-7396');
INSERT INTO `aluno` VALUES ('45', 'Ana Dara', 'Vieira e Rocha', '146904', 'cavrocha@gmail.com', '5de4299835a8d80a6e5523a7246cc326', '5', '14127065648', '(38) 3531-8755', '(38) 9-8809-0609');
INSERT INTO `aluno` VALUES ('46', 'Ana Júlia', 'Rocha Meira Pires', '146906', 'anaj_rmp@yahoo.com.br', 'baeb8b29d49ee26252f73efa9f223852', '5', '10744758602', '(38) 9-9930-9242', '(38) 9-9826-6050');
INSERT INTO `aluno` VALUES ('47', 'Anna Clara', 'Aguiar Azevedo', '146908', 'suelijulianaaguiar@yahoo.com.br', '2e7414a873396799739a795b4ae67e3b', '5', '10990374688', '(38) 9-9915-5573', '(38) 9-9915-5573');
INSERT INTO `aluno` VALUES ('48', 'Bruna', 'Gammauta', '146910', 'crismalaquias8@gmail.com', 'a0849b0175913972f298a3f212c7fd54', '5', '36646467897', '(38) 3531-7262', '(38) 9-8846-7274');
INSERT INTO `aluno` VALUES ('49', 'Camila', 'Lima Simões', '146911', 'joaogenilton@yahoo.com.br', '970bdc149ae1b036fb14ddef86b1daed', '5', '13917908638', '(38) 3543-1664', '(38) 9-9916-9831');
INSERT INTO `aluno` VALUES ('50', 'Camilla', 'Barroso Grossi', '146913', 'camillabgrossi@yahoo.com', 'e755c43d46582b3f7d1c6d24d50816c0', '5', '14737123609', '(38) 9-8312-8563', '(38) 9-8312-8563');
INSERT INTO `aluno` VALUES ('51', 'Eduarda', 'Madureira', '146914', 'edivonesilva32@gmail.com', '69b87859da7104c000c05ffcb1f49cb7', '5', '15130055616', '(38) 9-9827-6883', '(38) 9-9827-6883');
INSERT INTO `aluno` VALUES ('52', 'Emanuelly Lara', 'Silva Nascimento', '146915', 'manuzinhalara06@gmail.com', 'f975df080857fbed76f24a8fd0c1a56b', '5', '13367711608', '(38) 9-9810-3129', '(38) 9-9810-3129');
INSERT INTO `aluno` VALUES ('53', 'Eurianna Yaniki', 'Dumont Tavares Vítor', '146917', 'euriannad@gmail.com', '51a12656fa8b328a833d54822d8807ba', '5', '15642456679', '(38) 3531-0174', '(38) 9-8825-1633');
INSERT INTO `aluno` VALUES ('54', 'Gabriel', 'Antonaci da Silva Andrade', '146921', 'gabrielantonacidasilvaandrade@ifnmg.com.br', 'c89fae28d6c91f96581c7dd94c505455', '5', '13784037623', '(38) 3531-0323', '(38) 9-9935-4683');
INSERT INTO `aluno` VALUES ('55', 'Gabriel', 'Soier Macêdo', '146923', 'gabrielsoier@outlook.com', '364dd7445f35c03dae3313731ebade57', '5', '12798939666', '(38) 3531-2358', '(38) 9-8838-3011');
INSERT INTO `aluno` VALUES ('56', 'Hillary Sthefany', 'Lisboa da Cunha', '146925', 'hilisboa17@gmail.com', '55c2c094599867557d1bf08b395bf666', '5', '14633424629', '(31) 9 9990-3896', '(38) 9-9898-5206');
INSERT INTO `aluno` VALUES ('57', 'Ianara Iasmym', 'Costa Silveira', '146926', 'ianarayasmymcostasilveira@gmail.com', '6c49f29aa626f9caeb0c4c47cee92cd1', '5', '16679201624', '(38) 9-8823-5809', '(38) 9-8823-5809');
INSERT INTO `aluno` VALUES ('58', 'Isabela Cristina', 'Ribeiro Otoni', '146928', 'isabelacristinaribeirootoni@ifnmg.edu.br', '62a3b19e32bcc5f9c765085b3db77bae', '5', '13587373639', '(38) 9-8803-7471', '(38) 9-8803-7471');
INSERT INTO `aluno` VALUES ('59', 'João', 'Piuzana Rosa', '146929', 'joaopiuzana@gmail.com', 'c5961cb442ec0189781d0c8ce98c9127', '5', '13407026650', '(38) 9-8801-6599', '(38) 9-8801-6599');
INSERT INTO `aluno` VALUES ('60', 'João Vitor', 'de Amorim', '146931', 'joaovitor88494908@gmail.com', 'd548cd4de92d0b216ecaa37cbe8e9bcd', '5', '14444250640', '(38) 9-9722-4251', '(38) 9-9722-4251');
INSERT INTO `aluno` VALUES ('61', 'Júlia', 'Santana Esteves', '146936', 'eaesteves@yahoo.com.br', 'd49b264a24c33f3805820d9728b2513f', '5', '13254963679', '(38) 9-8845-2806', '(38) 9-8845-2806');
INSERT INTO `aluno` VALUES ('62', 'Júlio César', 'Ferreira Pires', '146938', 'juliocesarferreirapires@ifnmg.edu.br', '10a0886fd9aaca362ead3ea265e5912d', '5', '13354405694', '(38) 9-9986-1960', '(38) 9-9986-1960');
INSERT INTO `aluno` VALUES ('63', 'Kerolly', 'de Jesus Silva', '146941', 'kerollysilva5678@gmail.com', '38381fcbaeb1a8c8a20aa5d1c685b9b0', '5', '15889969641', '(38) 3531-2377', '(38) 9-8809-9587');
INSERT INTO `aluno` VALUES ('64', 'Laura Jordana', 'Vieira de Melo', '146943', 'laurajordanam@gmail.com', 'bad140f2246649768dc5fd141c0d02e4', '5', '11634245601', '(38) 9-9968-5816', '(38) 9-9943-7203');
INSERT INTO `aluno` VALUES ('65', 'Liliam', 'Teles Silveira Sena', '146945', 'liliamtelessilveirasena@ifnmg.edu.br', 'c2ca3b47ca91f7159e3a92fb987961f5', '5', '15651794638', '(38) 9-9804-4898', '(38) 9-9804-4898');
INSERT INTO `aluno` VALUES ('66', 'Luís Filipe', 'Moreira Soyer', '146948', 'lufilipe1@hotmail.com', '11ca728b9ebf30937bbddbf34f9ae9bb', '5', '11572438606', '(38) 3531-8056', '(38) 9-8406-4874');
INSERT INTO `aluno` VALUES ('67', 'Maíra Cristina', 'da Luz Cunha', '146980', 'mairacristinadaluzcunha@ifnmg.edu.br', '26c48f7cc0a8920aea1af855f296670a', '5', '14636435605', '(38) 9-8838-2990', '(38) 9-8838-2990');
INSERT INTO `aluno` VALUES ('68', 'Marcos Rafael', 'Mota Cordeiro', '146982', 'marcosrafaelmotacordeiro@ifnmg.edu.br', '07aecd81f6d58f2bef21aac5e9fc8233', '5', '14752518660', '(38) 3531-6802', '(38) 9-8809-3627');
INSERT INTO `aluno` VALUES ('69', 'Márcus Henrique', 'Cardozo Gomes', '146984', 'tcardozogomes@gmail.com', 'b4b9441c7d329e44508d79daa550b341', '5', '10957466692', '(38) 9-9963-2605', '(38) 9-9963-2605');
INSERT INTO `aluno` VALUES ('70', 'Maria Paula', 'Andrade Tolentino', '146986', 'monica.andrade@ict.ufvjm.edu.br', 'c4dfdb1d0a834ed9238f6dba22cf844f', '5', '11502419696', '(38) 9-8823-9384', '(38) 9-8823-9384');
INSERT INTO `aluno` VALUES ('71', 'Rannya', 'Oliveira Dias da Cruz', '146988', 'luamineira@bol.com.br', '6eee7c5f3e6072e6ab299b90337b0a3b', '5', '11483877655', '(38) 9-8811-7658', '(38) 9-8811-7658');
INSERT INTO `aluno` VALUES ('72', 'Sarah', 'Ferreira dos Santos', '146990', 'ricassiaf3@gmail.com', '9b850c7347d3dd0da341b298b0ced18b', '5', '11028462603', '(38) 3531-5290', '(38) 9-9804-4898');
INSERT INTO `aluno` VALUES ('73', 'Suzana', 'Gonçalves Rocha', '146991', 'rochasuzana22@gmail.com', '8b3a0e7f46147e31812e79d4ce2c01c9', '5', '15603505630', '(38) 3526-1530', '(38) 9-9805-0058');
INSERT INTO `aluno` VALUES ('74', 'Victhória Katarina', 'Oliveira', '146993', 'vanesinhadtna@yahoo.com.br', '9a9d30333206892c5bbe1df3569b0930', '5', '13759441696', '(38) 3531-8843', '(38) 9-8803-3733');
INSERT INTO `aluno` VALUES ('75', 'Vitória', 'Alves e Silva', '146995', 'vitoriaalves122021@gmail.com', '90015aa92da64a4d4c72732ffd16a0ee', '5', '07819253630', '(38) 3531-3860', '(38) 9-8847-9331');
INSERT INTO `aluno` VALUES ('76', 'Vitória Beatriz', 'Silvério Pereira', '146997', 'wallissondtna@yahoo.com.br', 'b540d7bf9eeee5a50bb67ee4745e95a7', '5', '11787179680', '(38) 9-9923-6580', '(38) 9-9923-6580');
INSERT INTO `aluno` VALUES ('77', 'Vitória', 'Ribeiro Viana', '146999', 'vitoriaviana1932@hotmail.com', '5d4221e8f15c131af06dd87881cb07ea', '5', '15601996601', '(38) 3531-2865', '(38) 9-8813-6074');

-- ----------------------------
-- Table structure for ocorrencia
-- ----------------------------
DROP TABLE IF EXISTS `ocorrencia`;
CREATE TABLE `ocorrencia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` int(11) NOT NULL,
  `descricao` text COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of ocorrencia
-- ----------------------------
INSERT INTO `ocorrencia` VALUES ('2', 'Mãe pediu para o aluno sair mais cedo', '1', 'A mae Ionice ligou para a secretaria às 8:40, solicitando a saída do seu filho às 11:30', '2018-12-14 02:00:00');
INSERT INTO `ocorrencia` VALUES ('3', 'Mao pediu para sair mais cedo', '1', 'A aluna saiu mais cedo a pedido de sua mão. 11:00hrs', '2018-04-12 03:00:00');
INSERT INTO `ocorrencia` VALUES ('4', 'Mão pediu para sair mais cedo', '1', 'A aluna saiu mais cedo a pedido de sua mãe, para realizar consulta médica. 11:25hrs', '2018-04-17 03:00:00');
INSERT INTO `ocorrencia` VALUES ('5', 'Esquecimento de carteirinha', '2', 'A aluna não trouxe a carteirinha, no turno matutino.', '2018-08-20 03:00:00');
INSERT INTO `ocorrencia` VALUES ('6', 'Esquecimento de carteirinha', '2', 'A aluna não trouxe a carteirinha, no turno matutino.', '2018-08-31 03:00:00');
INSERT INTO `ocorrencia` VALUES ('7', 'Esquecimento de carteirinha', '2', 'A discente não trouxe a carteirinha no turno da manhã.', '2018-09-26 03:00:00');
INSERT INTO `ocorrencia` VALUES ('8', 'Esquecimento de carteirinha.', '2', 'A aluna alegou que perdeu a carteirinha e que vai providenciar a nova.', '2018-09-27 03:00:00');
INSERT INTO `ocorrencia` VALUES ('9', 'Mãe pediu para sair mais cedo.', '1', 'A mãe da aluna autorizou a sua saída às 10:00hrs, sendo assim a mesma não irá ao teatro Santa Izabel.', '2018-10-18 03:00:00');
INSERT INTO `ocorrencia` VALUES ('10', 'Mãe solicitou saída mais cedo.', '1', 'A mãe da aluna autorizou a sua saída às 12:00hrs por motivo de viagem.', '2018-10-19 03:00:00');
INSERT INTO `ocorrencia` VALUES ('11', 'Atraso na chegada.', '2', 'A discente chegou às 8:15 e aguardou pelo segundo horário.', '2018-10-22 03:00:00');
INSERT INTO `ocorrencia` VALUES ('12', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha e disse que ficou aqui no campus com o professor Alyson. A mãe da aluna ligou e pediu para liberá-la às 11:30 ja que ela viajaria.', '2018-11-01 03:00:00');
INSERT INTO `ocorrencia` VALUES ('13', 'Esquecimento de carteirinha.', '2', 'A discente não trouxe a carteirinha no turno matutino.', '2018-11-05 02:00:00');
INSERT INTO `ocorrencia` VALUES ('14', 'Saída mais cedo.', '1', 'A mãe da aluna veio buscá-la às 11:00 para resolver assuntos pessoais com a filha.', '2018-11-23 02:00:00');
INSERT INTO `ocorrencia` VALUES ('15', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha no turno matutino.', '2018-12-13 02:00:00');
INSERT INTO `ocorrencia` VALUES ('16', 'Saída mais cedo.', '1', 'O pai da aluna buscou a mesma às 10:50.', '2018-12-14 02:00:00');
INSERT INTO `ocorrencia` VALUES ('17', 'Saída mais cedo.', '1', 'O pai da aluna (Sr. Wilson), autorizou a sua saída às 17:45, por motivo de viagem para gouveia.', '2018-11-07 02:00:00');
INSERT INTO `ocorrencia` VALUES ('18', 'Saída mais cedo.', '1', 'O pai da aluna, (Sr. Wilson), autorizou a sua saída às 11:00 por motivo de consulta médica.', '2018-11-22 02:00:00');
INSERT INTO `ocorrencia` VALUES ('19', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha no turno matutino.', '2018-12-14 02:00:00');
INSERT INTO `ocorrencia` VALUES ('20', 'Conversa durante a aula.', '3', 'O aluno conversou durante toda a aula e não atendeu o pedido da professora para encerrar a conversa. A aula foi em véspera de prova e a professora estava revisando o conteúdo.', '2018-03-21 09:00:00');
INSERT INTO `ocorrencia` VALUES ('21', 'Esquecimento de carteirinha.', '2', 'O aluno esqueceu a carteirinha, foi orientado e assistiu a aula normalmente.', '2018-08-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('22', 'Esquecimento de recolhimento da carteirinha.', '1', 'O aluno esqueceu de pegar a carteirinha na saída do dia 01/10/18 no turno vespertino.', '2018-10-02 03:00:00');
INSERT INTO `ocorrencia` VALUES ('23', 'Esquecimento de recolhimento de carteirinha.', '1', 'O aluno esqueceu de pegar a carteirinha na saída do dia 03/10 no turno vespertino.', '2018-10-04 03:00:00');
INSERT INTO `ocorrencia` VALUES ('24', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno matutino.', '2018-12-12 02:00:00');
INSERT INTO `ocorrencia` VALUES ('25', 'Esquecimento de carteirinha', '2', 'A aluna esqueceu de pegar a carteirinha no final da aula do núcleo integrador. A aluna alegou ter esquecido', '2018-10-07 03:00:00');
INSERT INTO `ocorrencia` VALUES ('26', 'Esquecimento de carteirinha', '2', 'A aluna não trouxe a carteirinha no turno da manhã.', '2018-08-16 03:00:00');
INSERT INTO `ocorrencia` VALUES ('27', 'Esquecimento de carteirinha', '2', 'A aluna não trouxe a carteirinha no turno da manhã.', '2018-08-20 03:00:00');
INSERT INTO `ocorrencia` VALUES ('28', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha no turno da manhã.', '2018-09-27 03:00:00');
INSERT INTO `ocorrencia` VALUES ('29', 'Saída mais cedo', '1', 'A mãe da aluna veio buscá-la na hora do intervalo.', '2018-10-04 03:00:00');
INSERT INTO `ocorrencia` VALUES ('30', 'Esquecimento de carteirinha', '2', 'A discente não trouxe a carteirinha no turno matutino.', '2018-10-08 03:00:00');
INSERT INTO `ocorrencia` VALUES ('31', 'Esquecimento de carteirinha', '2', 'A aluna não trouxe a carteirinha no turno matutino.', '2018-10-16 03:00:00');
INSERT INTO `ocorrencia` VALUES ('32', 'Esquecimento de carteirinha', '2', 'A aluna não trouxe a carteirinha no turno vespertino.', '2018-10-29 03:00:00');
INSERT INTO `ocorrencia` VALUES ('33', 'Esquecimento de carteirinha.', '2', 'A discente não trouxe a carteirinha no turno matutino.', '2018-11-05 02:00:00');
INSERT INTO `ocorrencia` VALUES ('34', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha no turno matutino.', '2018-12-12 02:00:00');
INSERT INTO `ocorrencia` VALUES ('35', 'Aluna saiu mais cedo por motivos de saúde.', '1', 'A aluno reclamou de dor de cabeça por volta das 15 hrs e não assistiu os dois últimos horários. O pai veio buscá-la e informou que ela já havia passado no médico pela manhã e que veio para a aula no turno da tarde (apenas) devido ter prova.', '2018-04-04 03:00:00');
INSERT INTO `ocorrencia` VALUES ('36', 'Saída mais cedo', '1', 'A aluna foi embora às 10:00 devido a consulta médica. O pai veio buscá-la pessoalmente.', '2018-06-07 03:00:00');
INSERT INTO `ocorrencia` VALUES ('37', 'Saída mais cedo.', '1', 'A aluna Ana Luiza cruz pediu para sair mais cedo devido à crise de sinusite.', '2018-09-11 03:00:00');
INSERT INTO `ocorrencia` VALUES ('38', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha no turno matutino.', '2018-10-16 03:00:00');
INSERT INTO `ocorrencia` VALUES ('39', 'Saída mais cedo.', '1', 'A aluna saiu às 16:00 para acompanhar a irmã no médico. Helvécio conversou com a irmã pelo telefone.', '2018-10-23 03:00:00');
INSERT INTO `ocorrencia` VALUES ('40', 'Atraso na chegada.', '2', 'A aluna chegou às 8:50 e entrou no segundo horário.', '2018-10-25 03:00:00');
INSERT INTO `ocorrencia` VALUES ('41', 'Esquecimento de carteirinha', '2', 'A aluna não trouxe a carteirinha no turno matutino.', '2018-12-12 02:00:00');
INSERT INTO `ocorrencia` VALUES ('42', 'Saída mais cedo', '1', 'A mãe da aluna veio pessoalmente pedir pela liberação da mesma durante o intervalo, alegando motivos particulares.', '2018-07-05 03:00:00');
INSERT INTO `ocorrencia` VALUES ('43', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha no turno matutino.', '2018-12-10 02:00:00');
INSERT INTO `ocorrencia` VALUES ('44', 'Vestimenta inadequada.', '2', 'O aluno veio de bermuda. Foi orientado sobre o uso do uniforme. Também veio de sandália.', '2018-03-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('45', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha.', '2018-08-13 03:00:00');
INSERT INTO `ocorrencia` VALUES ('46', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã.', '2018-10-05 03:00:00');
INSERT INTO `ocorrencia` VALUES ('47', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno matutino.', '2018-12-10 02:00:00');
INSERT INTO `ocorrencia` VALUES ('48', 'Problemas pessoais do aluno.', '1', 'A aluna estava chorando no corredor, por volta das 11:30 hrs. O professor bruno disse que ela saiu da sala sem comunicar o motivo. A princípio a aluna não quis falar, dizendo apenas que se tratava de problemas psicológicos e não fisicos. Mas, após se acalmar, acabou dizendo que perdeu um irmão na sexta-feira (09/03). O irmão foi assassinado na cidade de Belo Horizonte. Foi feito o encaminhamento para a psicóloga do campus.', '2018-03-12 03:00:00');
INSERT INTO `ocorrencia` VALUES ('49', 'Conversa durante a aula.', '2', 'A aluna conversou durante toda a aula e não atendeu o pedido da professora para encerrar a conversa. A aula foi em véspera de prova e a professora estava revisando o conteúdo.', '2018-03-22 03:00:00');
INSERT INTO `ocorrencia` VALUES ('50', 'Problemas psicológicos', '1', 'A aluna não assistiu o terceiro e quarto horários da manha alegando problemas psicológicos. Mesmo após ser atendida pela psicóloga do câmpus, alegou não ter condições de ficar na sala de aula. O professor Bruno a dispensou, ficando  combinado que ela pegaria a matéria com algum colega da turma.', '2018-04-02 03:00:00');
INSERT INTO `ocorrencia` VALUES ('51', 'Problemas de saúde.', '1', 'A aluna sofreu desmaio no turno da tarde, possivelmente por não ter se alimentado durante o dia, conforme relato da própria aluna. O pai foi chamado e a aluna dispensada para ir embora.', '2018-04-03 03:00:00');
INSERT INTO `ocorrencia` VALUES ('52', 'Aluna matou aula.', '3', 'A aluna foi vista na rua pelo servidor Cleiton e dentro do campus da UFVJM pela servidora Karla, durante o horário da aula de humanidades (terceiro e quarto horários). o servidor Cleiton estava acompanhando outra aluna que passou mal até o carro. Assim que ficou disponível foi atrás da Fernanda mas não a encontrou.', '2018-04-26 03:00:00');
INSERT INTO `ocorrencia` VALUES ('53', 'Aluno chegou atrasado.', '2', 'A aluna chegou 15 minutos atrasada, depois do intervalo. A professora Ana Flávia não permitiu a entrada na sala de aula e a aluna ficou aguardando o quarto horário na biblioteca. O servidor Cleiton questionou o motivo do atraso e a aluna respondeu que pensou que não haveria aula de Ana Flávia, já que esta professora já havia lecionado nos horários do professor Malter, que faltou neste dia.', '2018-05-02 06:00:00');
INSERT INTO `ocorrencia` VALUES ('54', 'Aluno matou aula.', '3', 'A aluna foi vista às 08:00 no campus, mas não estava presente nos dois primeiros horários. Após o intervalo, ao ser questionada sobre o assunto, acabou confessando que estava na rua, nas lojas americanas. A pedagoga Adeizete entrou em contato com a família, e todo o ocorrido foi passado para a mãe da aluna, digo, para a irmã da aluna.', '2018-07-05 06:00:00');
INSERT INTO `ocorrencia` VALUES ('55', 'Esquecimento de carteirinha.', '2', 'A aluna esqueceu a carteirinha, foi orientada a assistir a aula normalmente.', '2018-08-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('56', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha.', '2018-08-13 03:00:00');
INSERT INTO `ocorrencia` VALUES ('57', 'Esquecimento de carteirinha.', '2', 'A aluna procurou o assistente de alunos Cleiton, no dia 23/08, alegando que não pegou a carteirinha estudantil no dia 22/08, no turno da tarde, pois estava em atendimento na psicóloga e quando saiu o núcleo pedagógico estava fechado. Naquele dia, a turma da aluna estava em uma palestra no espaço JK que durou até as 18:20. A psicóloga Fabrícia foi consultada sobre o horário de termino do atendimento e disse que foi concluído às 17:10. Neste horário, havia servidor no núcleo pedagógico. O servidor Helvécio, digo, funcionário helvécio confirmou que esteve presente no setor até as 17:30 e que não foi procurado pela aluna. Segundo este funcionário as carteirinhas foram entregues às professoras que levaram os alunos à palestra. As professoras foram consultadas e disseram que as carteirinhas foram entregues aos alunos e que Fernanda e Maria Luiza não estavam presentes no evento e que as carteirinhas das alunas foram entregues ao professor Paulo Lemos. Este professor disse não ter encontrado a discente e que ela foi vista por outros servidores junto com a colega Maria Luíza indo no sentido do portão do IFNMG.', '2018-08-23 06:00:00');
INSERT INTO `ocorrencia` VALUES ('58', 'Aluna matou aula.', '2', 'Ao ser questionada pelo assistente Cleiton sobre as constatações da ocorrência do dia 23/08, a principio, a aluna reafirmou ter ido à palestra no espaço JK, mas depois assumiu ter ido embora, assim que saiu da sala da psicóloga.', '2018-08-24 06:00:00');
INSERT INTO `ocorrencia` VALUES ('59', 'Aluno sem uniforme.', '2', 'A aluna veio sem o uniforme.', '2018-08-24 03:00:00');
INSERT INTO `ocorrencia` VALUES ('60', 'Pais informaram a falta do aluno.', '1', 'O pai da aluna ligou na secretaria e informou que ela não viria neste dia, pois está se sentindo mal. Foi orientado a providenciar o atestado médico.', '2018-08-31 03:00:00');
INSERT INTO `ocorrencia` VALUES ('61', 'Aluno saiu mais cedo.', '1', 'A aluna foi dispensada às 10:25, com autorização via telefone do pai, por estar passando mal (mal esta e dor de cabeça).', '2018-09-24 03:00:00');
INSERT INTO `ocorrencia` VALUES ('62', 'Aluno faltou à aula.', '1', 'A aluna ligou para o servidor Cleiton e disse que não para a aula devido o falecimento de seu tio.', '2018-09-27 03:00:00');
INSERT INTO `ocorrencia` VALUES ('63', 'Saída mais cedo.', '1', 'A aluna pediu para ir embora por problemas do período feminino. A mãe autorizou por telefone a saída da aluna.', '2018-10-03 03:00:00');
INSERT INTO `ocorrencia` VALUES ('64', 'Saída mais cedo.', '1', 'A irmã da aluna Sara Nunes Fernandes ligou na secretaria e solicitou a liberação da aluna às 11:30 hrs.', '2018-10-09 03:00:00');
INSERT INTO `ocorrencia` VALUES ('65', 'Saída mais cedo.', '1', 'A aluna pediu para ir embora às 8:15 hrs pois estava com dor de cabeça e garganta. O pai autorizou sua saída e veio buscá-la.', '2018-10-22 03:00:00');
INSERT INTO `ocorrencia` VALUES ('66', 'Saída mais cedo.', '1', 'A aluna veio ao núcleo pedagógico às 10:50 e disse estar com forte dor no abdome. O pai foi chamado para vir buscá-la e orientado a levá-la ao médico.', '2018-11-01 03:00:00');
INSERT INTO `ocorrencia` VALUES ('67', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha no turno matutino.', '2018-12-04 02:00:00');
INSERT INTO `ocorrencia` VALUES ('68', 'Vestimenta inadequada.', '2', 'O aluno veio de bermuda no período vespertino e foi orientado a usar a bermuda padrão do IFNMG.', '2018-03-05 03:00:00');
INSERT INTO `ocorrencia` VALUES ('69', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã.', '2018-08-22 03:00:00');
INSERT INTO `ocorrencia` VALUES ('70', 'Aluno chegou atrasado.', '2', 'O discente chegou atrasado, às 8:50, e aguardou pelo segundo horário. Segundo ele, sua perna estava doendo e só depois do efeito do remédio que tomou é que conseguiu vir para o IFNMG.', '2018-08-30 03:00:00');
INSERT INTO `ocorrencia` VALUES ('71', 'Aluno chegou atrasado e esqueceu a carteirinha.', '2', 'O aluno chegou atrasado às 8:35 e aguardou pelo segundo horário. Além disso, o discente não trouxe a carteirinha.', '2018-09-25 03:00:00');
INSERT INTO `ocorrencia` VALUES ('72', 'Problema de saúde.', '1', 'O aluno reclamou de dores no corpo e na cabeça e foi liberado às 11:00 com autorização de sua mãe, que veio buscá-lo pessoalmente.', '2018-09-25 03:00:00');
INSERT INTO `ocorrencia` VALUES ('73', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã. Alegou que perdeu e foi orientado a providenciar outra.', '2018-09-26 03:00:00');
INSERT INTO `ocorrencia` VALUES ('74', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã. Alegou ter esquecido junto com outros documentos.', '2018-10-02 03:00:00');
INSERT INTO `ocorrencia` VALUES ('75', 'Saída mais cedo.', '1', 'O aluno sairá no intervalo para uma consulta. A mãe autorizou por telefone.', '2018-10-03 03:00:00');
INSERT INTO `ocorrencia` VALUES ('76', 'Discente veio sem uniforme.', '2', 'O aluno veio sem o uniforme hoje no período da tarde.', '2018-10-24 03:00:00');
INSERT INTO `ocorrencia` VALUES ('77', 'Uso indevido de celular.', '2', 'O aluno utilizou o celular em sala de aula, o aparelho está no núcleo pedagógico e só será entregue aos pais.', '2018-10-29 03:00:00');
INSERT INTO `ocorrencia` VALUES ('78', 'Retirada de celular pelos pais.', '1', 'A mãe do aluno buscou o celular referente à ocorrência anterior deste mesmo dia.', '2018-10-29 03:00:00');
INSERT INTO `ocorrencia` VALUES ('79', 'Vestimenta inadequada.', '2', 'O aluno veio sem uniforme no turno matutino, com camisa do time de futebol do IFNMG.', '2018-11-22 02:00:00');
INSERT INTO `ocorrencia` VALUES ('80', 'Conversa em sala de aula.', '3', 'O aluno conversou durante toda a aula. A professora chamou a atenção do aluno três vezes e informou que na próxima vez ele seria convidado a se retirar da sala. Como o aluno manteve o mesmo comportamento, a professora solicitou que o mesmo saísse da sala.', '2018-08-07 03:00:00');
INSERT INTO `ocorrencia` VALUES ('81', 'Conversa sobre outra ocorrência.', '1', 'A pedagoga conversou com os três envolvidos na ocorrência do dia 07/03 destacando que cometeram falta grave segundo o regulamento e recebem, neste momento, a advertência oral e foram orientados a pedir desculpas à professora e à turma na próxima aula.', '2018-03-09 03:00:00');
INSERT INTO `ocorrencia` VALUES ('82', 'Problemas de saúde.', '1', 'A mãe do aluno ligou para o campus informando que ele não está bem de saúde e vomitando. Foi orientada para levá-lo ao médico e que trouxesse o atestado posteriormente.', '2018-04-02 03:00:00');
INSERT INTO `ocorrencia` VALUES ('83', 'Discente se ausentou do campus sem autorização.', '3', 'O aluno foi embora durante o intervalo sem avisar a nenhum servidor do IFNMG. Na aula seguinte, foi questionado sobre o motivo de ter ido embora e alegou não estar se adaptando à aula de práticas corporais. Afirma que já tentou se adaptar, mas não fica à vontade em participar da aula da professora Mariana. O servidor Cleiton repassou, verbalmente, a situação para a pedagoga Adeizete e para a professora Mariana.', '2018-04-26 03:00:00');
INSERT INTO `ocorrencia` VALUES ('84', 'Saída mais cedo.', '1', 'O aluno saiu mais cedo para ir ao banco abrir uma conta. Não assistiu os 2 últimos horários. A professora foi avisada (Mariana).', '2018-06-07 03:00:00');
INSERT INTO `ocorrencia` VALUES ('85', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno matutino.', '2018-11-21 02:00:00');
INSERT INTO `ocorrencia` VALUES ('86', 'Esquecimento de carteirinha.', '2', 'O aluno esqueceu a carteirinha, foi orientado e assistiu a aula normalmente.', '2018-08-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('87', 'Saída mais cedo.', '1', 'A mãe do aluno autorizou sua saída durante o intervalo da manhã, devido ao aluno estar com alergia e de não estar conseguindo assistir a aula.', '2018-08-15 03:00:00');
INSERT INTO `ocorrencia` VALUES ('88', 'Falta por problemas de saúde.', '1', 'A mãe do aluno avisou que ele não virá a aula no turno da tarde em decorrência do processo alérgico citado em outra ocorrência deste mesmo dia e que tentará levar o aluno ao médico para conseguir o atestado.', '2018-08-15 03:00:00');
INSERT INTO `ocorrencia` VALUES ('89', 'Discente perdeu aula.', '2', 'O aluno ficou no corredor ultrapassando o horário limite para entrar na sala, que é até às 8:10. O professor Alyson Trindade não permitiu a entrada, conforme preconiza o regulamento disciplinar.', '2018-08-24 03:00:00');
INSERT INTO `ocorrencia` VALUES ('90', 'Discente chegou atrasado.', '2', 'O discente chegou atrasado, às 8:40, e aguardou pelo segundo horário para entrar na sala. Segundo ele, não conseguiu acordar no horário certo.', '1985-09-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('91', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado, às 8:20, e foi encaminhado à biblioteca. O professor Paulo Lemos pediu que liberasse sua entrada na sala de aula, devido à complexidade da matéria.', '2018-09-10 03:00:00');
INSERT INTO `ocorrencia` VALUES ('92', 'Conversa com a diretora.', '2', 'A diretora Dayse e a TAE Bruna, conversaram e orientaram o aluno quanto ao episódio ocorrido no dia anterior, no qual o aluno estava envolvido, em que estudantes estavam em cima do muro da instituição arrancando jaboticabas.', '2018-10-04 03:00:00');
INSERT INTO `ocorrencia` VALUES ('93', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã.', '2018-11-12 02:00:00');
INSERT INTO `ocorrencia` VALUES ('94', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã.', '2018-11-19 02:00:00');
INSERT INTO `ocorrencia` VALUES ('95', 'Problemas de saúde.', '1', 'O aluno chegou às 8:20 hrs da manhã, alegando o atraso ao fato de ter passado mal durante à noite e não ter conseguido acordar a tempo. Disse que estava enjoado, com dor no estômago. Tomou antiácido em casa. Irá para a sala no segundo horário.', '2018-04-03 03:00:00');
INSERT INTO `ocorrencia` VALUES ('96', 'Discente chegou atrasado.', '2', 'O aluno chegou às 8:20 hrs alegando ter perdido a hora, já que o despertador não tocou. O professor Alyson permitiu a entrada em sala para o aluno não ficar mais prejudicado.', '2018-04-24 03:00:00');
INSERT INTO `ocorrencia` VALUES ('97', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado, às 8:20. O professor Paulo permitiu a entrada em sala.', '2018-05-23 03:00:00');
INSERT INTO `ocorrencia` VALUES ('98', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado às 8:27. Depois desta ocorrência, o professor Alyson permiriu a entrada em sala de aula.', '2018-06-12 03:00:00');
INSERT INTO `ocorrencia` VALUES ('99', 'Uso de uniforme.', '2', 'O aluno veio sem uniforme (camisa) alegou que o uniforme estava sujo.', '2018-08-08 03:00:00');
INSERT INTO `ocorrencia` VALUES ('100', 'Esquecimento de carteirinha.', '2', 'O aluno esqueceu a carteirinha no turno da manhã.', '2018-09-26 03:00:00');
INSERT INTO `ocorrencia` VALUES ('101', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado, às 8:15, e aguardou pelo segundo horário.', '2018-09-28 03:00:00');
INSERT INTO `ocorrencia` VALUES ('102', 'Discente chegou atrasado.', '2', 'O aluno chegou às 8:45 e aguardou pelo segundo horário.', '2018-10-15 03:00:00');
INSERT INTO `ocorrencia` VALUES ('103', 'Uso de uniforme.', '2', 'O aluno veio sem uniforme (camisa).', '2018-10-29 03:00:00');
INSERT INTO `ocorrencia` VALUES ('104', 'Problemas de saúde.', '1', 'Aluna procurou o servidor Cleiton, sentindo-se mal (tontura e mal estar). A mãe veio de Gouveia buscá-la e relatou que a filha tem renite e alergia à poeira e gatos. Passa mal com cheiro de perfume forte. Ela ficou emocionada ao encontrar com a mãe.', '2018-02-26 03:00:00');
INSERT INTO `ocorrencia` VALUES ('105', 'Saída mais cedo.', '1', 'A Sra. Márcia, mãe da aluna Mayara solicitou a sua saída às 17:45 por motivo de viagem para Gouveia.', '2018-11-07 02:00:00');
INSERT INTO `ocorrencia` VALUES ('106', 'Uso de uniforme.', '2', 'O aluno veio de bermuda no turno vespertino e foi orientado que o uniforme é a bermuda padrão do IFNMG.', '2018-03-05 03:00:00');
INSERT INTO `ocorrencia` VALUES ('108', 'Problemas de saúde', '1', 'O aluno chegou às 09:00 hrs alegando estar sentindo mal (corpo doendo e vomitando). Disse ter vindo (apenas) devido ter prova de matemática no terceiro horário.', '2018-04-27 03:00:00');
INSERT INTO `ocorrencia` VALUES ('109', 'Vestimenta inadequada.', '3', 'O aluno recusou tirar o boné, para participar da aula de práticas corporais com o professor Daniel. Por este motivo foi dispensado da aula e ficou aguardando no corredor.', '2018-05-24 03:00:00');
INSERT INTO `ocorrencia` VALUES ('110', 'Esquecimento de carteirinha.', '2', 'O aluno esqueceu a carteirinha, foi orientado e assistiu a aula normalmente.', '2018-08-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('111', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado, às 08:35, e aguardou pelo segundo horário para entrar na sala.', '2018-10-08 03:00:00');
INSERT INTO `ocorrencia` VALUES ('112', 'Discente chegou atrasado.', '1', 'O aluno chegou no segundo horário conforme havia sido avisado via telefone pela sua mãe.', '2018-10-15 03:00:00');
INSERT INTO `ocorrencia` VALUES ('113', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado e ficou na biblioteca esperando o segundo horário.', '2018-10-19 03:00:00');
INSERT INTO `ocorrencia` VALUES ('114', 'Saída mais cedo.', '1', 'A Sra. Nilza, mãe da aluna, autoriza a sua saída às 17:45 por motivo de viagem para Gouveia.', '2018-11-07 02:00:00');
INSERT INTO `ocorrencia` VALUES ('115', 'Esquecimento de cateirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã. Disse que perdeu e vai providenciar a nova.', '2018-09-26 03:00:00');
INSERT INTO `ocorrencia` VALUES ('116', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã. Disse que perdeu e foi orientado a providenciar uma nova.', '2018-10-02 03:00:00');
INSERT INTO `ocorrencia` VALUES ('117', 'Uso de uniforme.', '2', 'O aluno veio sem uniforme.', '2018-10-04 03:00:00');
INSERT INTO `ocorrencia` VALUES ('118', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha no turno da manhã, foi orientada e assistiu a aula normalmente.', '2018-08-09 03:00:00');
INSERT INTO `ocorrencia` VALUES ('119', 'Esquecimento de carteirinha.', '2', 'A aluna esqueceu de pegar a carteirinha na saída do dia 01/10/2018 no turno vespertino.', '2018-10-02 03:00:00');
INSERT INTO `ocorrencia` VALUES ('120', 'Discente chegou atrasado.', '2', 'A aluna chegou às 8:15 e aguardou para entrar no segundo horário.', '2018-10-15 03:00:00');
INSERT INTO `ocorrencia` VALUES ('121', 'Saída mais cedo.', '1', 'A Sra. Valdenia, mãe da aluna, autorizou a sua saída hoje às 16:10 por motivo de gripe.', '2018-11-12 02:00:00');
INSERT INTO `ocorrencia` VALUES ('122', 'Conduta indiciplinar.', '3', 'A aluna permaneceu na sala de aula sentada de costas para a professora. A professora chamou a atenção da aluna por três vezes e informou a aluna que na próxima vez ela seria convidada para se retirar da sala. A aluna repetiu o mesmo comportamento e a professora a convidou para se retirar. A aluna fez questão de arrumar os materiais lentamente e depois se retirou da sala bem devagar, fazendo questão de mostrar para os colegas o quanto se orgulhava da prática adotada. A conversa não foi o maior problema da ocorrência, a falta de respeito com a turma e principalmente com a professora é o ponto mais agravante.', '2018-03-07 03:00:00');
INSERT INTO `ocorrencia` VALUES ('123', 'Conversa sobre ocorrência anterior.', '1', 'A pedagoga conversou com os três envolvidos na ocorrência do dia 07/03/2018 destacando que cometeram falta grave segundo o regulamento e recebem neste momento a advertência oral. Foram orientados a pedir desculpas à turma e à professora na próxima aula.', '2018-03-09 03:00:00');
INSERT INTO `ocorrencia` VALUES ('124', 'Falta à aula.', '1', 'A aluna estava em reunião com Dayse e não pode participar das aulas, saindo às 16:45.', '2018-10-30 03:00:00');
INSERT INTO `ocorrencia` VALUES ('125', 'Esquecimento de carteirinha.', '2', 'A aluna não pegou a carteirinha no final da aula do núcleo integrador. A aluna alegou que esqueceu.', '2018-08-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('126', 'Saída mais cedo.', '1', 'A mãe da aluna Laura Miranda Lemes solicitou a sua saída às 9:00 por motivo de viagem.', '2018-10-18 03:00:00');
INSERT INTO `ocorrencia` VALUES ('127', 'Problemas de saúde.', '1', 'O aluno foi embora, com a mãe, durante o intervalo de turno matutino, devido estar com problemas estomacais. Conforme relato do próprio aluno, provavelmente está com virose. Foi orientado a buscar ajuda médica.', '2018-04-12 03:00:00');
INSERT INTO `ocorrencia` VALUES ('128', 'Discente chegou atrasado.', '1', 'A aluna chegou as 10:20 e entrou no terceiro horário. Disse que estava em consulta médica.', '2018-06-05 03:00:00');
INSERT INTO `ocorrencia` VALUES ('129', 'Discente chegou atrasado.', '2', 'A aluna chegou atrasada e ficou na biblioteca esperando o segundo horário.', '2018-10-19 03:00:00');
INSERT INTO `ocorrencia` VALUES ('130', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha no turno da manhã.', '2018-08-23 03:00:00');
INSERT INTO `ocorrencia` VALUES ('131', 'Esquecimento de carteirinha.', '2', 'A aluna esqueceu a carteirinha, foi orientada e assistiu a aula normalmente.', '2018-08-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('132', 'Saída mais cedo.', '1', 'A aluna pediu para ir embora às 9:30, com autorização via telefone da mãe, devido falecimento de um tio que acabara de acontecer na cidade de Datas.', '2018-08-21 03:00:00');
INSERT INTO `ocorrencia` VALUES ('133', 'Uso indevido de celular.', '2', 'A aluna estava usando o celular durante a aula. O celular era da Lilian do meio ambiente. A aluna se comprometeu a não fazer novamente.', '2018-08-23 03:00:00');
INSERT INTO `ocorrencia` VALUES ('134', 'Documentos assinados pela aluna e não pelos pais.', '4', 'A aluna entregou dois documentos neste dia (comunicado aos Pais sobre a carteirinha e Requerimento da avaliação substituta) assinados pela mãe. Como havia uma abreviação do sobrenome da mãe e por ser perceptível que a assinatura estava cobrindo uma escrita à lápis, foi feita uma comparação com outros documentos assinados na secretaria. Percebeu-se então algumas divergências na assinatura. O servidor Cleiton entrou em contato com a mãe da aluna e ficou constatado que, de fato, a mão não havia assinado os documentos. A mãe sugeriu que a aluna não fosse abordada, pois ela viria o mais rápido possível ao IFNMG para solicitar esclarecimentos da aluna. Foi feito o encaminhamento à comissão disciplinar do campus Diamantina.', '2018-08-30 03:00:00');
INSERT INTO `ocorrencia` VALUES ('135', 'Discente chegou atrasado.', '1', 'A aluna chegou ás 10:00 e disse que estava resolvendo questões pessoais para poder viajar para sua cidade no feriado. Segundo a aluna, sua mãe estava ciente.', '2018-09-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('136', 'Discente chegou atrasado.', '2', 'A aluna chegou atrasada às 8:10, e entrou durante o segundo horário. Alegou que se atrasou porque voltou do feriado nesta data da casa dos pais.', '2018-10-15 03:00:00');
INSERT INTO `ocorrencia` VALUES ('137', 'Discente chegou atrasado.', '2', 'A aluna chegou no terceiro horário, às 10:20.', '2018-10-27 03:00:00');
INSERT INTO `ocorrencia` VALUES ('138', 'Uso de uniforme.', '2', 'A aluna veio sem uniforme no turno matutino.', '2018-11-01 03:00:00');
INSERT INTO `ocorrencia` VALUES ('139', 'Discente chegou atrasado.', '1', 'A aluna chegou às 09:00 hrs alegando o atraso à chuva intensa ocorrida no dia. Entrou para a sala no segundo horário.', '2018-03-07 03:00:00');
INSERT INTO `ocorrencia` VALUES ('140', 'Discente chegou atrasado.', '2', 'A aluna chegou às 09:50 alegando ter perdido a hora de acordar, já que o despertador do celular não tocou. Entrou no terceiro horário, após o intervalo.', '2018-06-21 03:00:00');
INSERT INTO `ocorrencia` VALUES ('141', 'Esquecimento de carteirinha.', '2', 'A aluna não pegou a carteirinha no final da aula do núcleo integrador.', '2018-08-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('142', 'Problemas de saúde.', '1', 'A aluna foi liberada às 11:50 devido estar com rinite e não estar conseguindo assistir a aula, precisando tomar remédio em casa. Houve tentativa de contato com a família mas sem sucesso. A enfermeira realizou o atendimento.', '2018-08-15 03:00:00');
INSERT INTO `ocorrencia` VALUES ('143', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha no turno da manhã, alegou que esqueceu em Datas. Esta semana pediu autorização para entrar sem a carteirinha.', '2018-09-11 03:00:00');
INSERT INTO `ocorrencia` VALUES ('144', 'Discente chegou atrasado.', '2', 'A aluna chegou atrasada, às 08:30 e aguardou para entrar no segundo horário.', '2018-11-05 02:00:00');
INSERT INTO `ocorrencia` VALUES ('145', 'Discente chegou atrasado.', '2', 'O aluno chegou ás 08:27. Depois desta ocorrência o professor Alyson permitiu a entrada em sala de aula.', '2018-06-12 03:00:00');
INSERT INTO `ocorrencia` VALUES ('146', 'Conversa em sala de aula.', '2', 'O aluno estava conversando na aula da professora Amanda, na disciplina Geografia Regional.', '2018-08-14 03:00:00');
INSERT INTO `ocorrencia` VALUES ('147', 'Conduta inadequada.', '2', 'Aluno estava com uma pedra para colocar na mochila de outro colega. Saiu da aula para pegar a pedra.', '2018-09-13 03:00:00');
INSERT INTO `ocorrencia` VALUES ('148', 'Uso de uniforme.', '2', 'O aluno veio sem uniforme no turno da manhã.', '2018-09-27 03:00:00');
INSERT INTO `ocorrencia` VALUES ('149', 'Uso indevido de celular.', '2', 'O professor Bruno solicitou esta ocorrência nesta data, porém em relação ao fato ocorrido no dia 05/10/2018. naquele dia o aluno ficou utilizando o celular durante a apresentação de um seminário que acontecia na sala. O professor não recolheu o aparelho porque não quis interromper aqueles alunos que apresentavam. Hoje os dois alunos que cometeram esta falta foram advertidos na frente dos demais alunos e encaminhados ao núcleo pedagógico para assinar a ocorrência.', '2018-10-17 09:00:00');
INSERT INTO `ocorrencia` VALUES ('150', 'Discente chegou atrasado.', '2', 'O aluno chegou às 08:55 e entrou no segundo horário.', '2018-11-06 02:00:00');
INSERT INTO `ocorrencia` VALUES ('151', 'Esquecimento de carteirinha.', '2', 'O Aluno esqueceu de pegar a carteirinha no final da aula no núcleo pedagógico. Disse que estava no laboratório de informática do Campus I da UFVJM e de lá mesmo foi embora quando terminou a aula.', '2018-08-07 03:00:00');
INSERT INTO `ocorrencia` VALUES ('152', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha', '2018-08-13 03:00:00');
INSERT INTO `ocorrencia` VALUES ('153', 'Uso indevido de celular.', '2', 'O aluno utilizou o celular durante a aula de Jana Flávia e teve o celular recolhido. Na parte da tarde a mãe do aluno veio buscar o aparelho.', '2018-10-24 03:00:00');
INSERT INTO `ocorrencia` VALUES ('154', 'Discente perdeu aula.', '2', 'A aluna ficou durante os dois últimos horários da manhã dentro da sala 2, enquanto o restante da turma assistia aula em outro local. Ela alegou que o professor mandou descer do laboratório e ir para a sala. De acordo com o professor Bruno, a aula aconteceu no primeiro andar com parte da turma e a outra parte ficou no laboratório. mesmo assim, a aluna ficou 2 horas aguardando e não teve a iniciativa de procurar pela turma. Ela estava acompanhada do colega Maria Luiza.', '2018-11-12 02:00:00');
INSERT INTO `ocorrencia` VALUES ('155', 'Problemas de saúde.', '1', 'O aluno reclamou de dor no corpo e aparentemente estava com febre. A irmã foi chamada para levá-lo para casa. Saiu às 10:30 hrs, não assistindo os dois últimos horários.', '2018-04-25 03:00:00');
INSERT INTO `ocorrencia` VALUES ('156', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha.', '2018-08-13 03:00:00');
INSERT INTO `ocorrencia` VALUES ('157', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã.', '2018-08-16 03:00:00');
INSERT INTO `ocorrencia` VALUES ('158', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado, às 08:25 e aguardou pelo segundo horário na biblioteca. Ficou estudando. O discente alegou que perdeu o horário de acordar.', '2018-09-05 03:00:00');
INSERT INTO `ocorrencia` VALUES ('159', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã.', '2018-09-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('160', 'Uso de uniforme.', '2', 'O aluno veio sem uniforme na parte da tarde.', '2018-09-12 03:00:00');
INSERT INTO `ocorrencia` VALUES ('161', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado, às 08:17 e entrou diretamente para a sala de aula. O atraso foi confirmado pelo porteiro.', '2018-09-13 03:00:00');
INSERT INTO `ocorrencia` VALUES ('162', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado.', '2018-10-05 03:00:00');
INSERT INTO `ocorrencia` VALUES ('163', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã.', '2018-11-12 02:00:00');
INSERT INTO `ocorrencia` VALUES ('164', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã.', '2018-11-19 02:00:00');
INSERT INTO `ocorrencia` VALUES ('165', 'Saída mais cedo.', '1', 'A aluna foi liberada no intervalo em virtude do falecimento da avó (materna).', '2018-03-07 03:00:00');
INSERT INTO `ocorrencia` VALUES ('166', 'Saída mais cedo.', '1', 'A aluna foi dispensada no intervalo para ir ao médico. Foi confirmada a situação com a mãe, por telefone. A aluna foi orientada a trazer o atestado médico.', '2018-06-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('167', 'Saída mais cedo.', '1', 'A aluna foi liberada para acompanhar a mãe ao banco.', '2018-06-08 03:00:00');
INSERT INTO `ocorrencia` VALUES ('168', 'Problemas de saúde.', '1', 'A aluna não conseguiu assistir ao primeiro horário devido a dor de garganta. A irmã veio buscá-la às 08:40 para ir ao médico. A aluna foi orientada para trazer o atestado.', '2018-06-15 03:00:00');
INSERT INTO `ocorrencia` VALUES ('169', 'Esquecimento de carteirinha.', '2', 'A aluna não pegou a carteirinha no final da aula do núcleo integrador.', '2018-08-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('170', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe a carteirinha no turno da manhã.', '2018-08-16 03:00:00');
INSERT INTO `ocorrencia` VALUES ('171', 'Esquecimento de carteirinha.', '2', 'A aluna não trouxe  carteirinha no turno matutino, alegou que sumiu e vai providenciar outra na secretaria.', '2018-08-20 03:00:00');
INSERT INTO `ocorrencia` VALUES ('172', 'Uso de uniforme.', '2', 'Veio sem uniforme, alegou que era devido a aula de práticas corporais. A aluna foi orientada que independente da aula o uso do uniforme é obrigatório.', '2018-08-23 03:00:00');
INSERT INTO `ocorrencia` VALUES ('173', 'Uso indevido de celular.', '2', 'A aluna Kamily Araujo teve o celular recolhido pela professora Ana Flávia durante a aula. A aluna relatou que o celular estava carregando e ela precisava olhar a hora para tomar medicamento. A aluna diz se sentir injustiçada, pois a professora não recolheu o celular do aluno Pedro Silva. Ela pegou celular levou para mesa e depois devolveu ao aluno, mesmo ele tratando ela mal. A aluna solicitou fazer essa reclamação por escrito. A mãe Carmem foi contactada por telefone, pois mora em Datas. A mãe está ciente da ocorrência e autorizou a filha a retirar o celular.', '2018-09-26 03:00:00');
INSERT INTO `ocorrencia` VALUES ('174', 'Discente chegou atrasado.', '2', 'A aluna chegou atrasada às 08:40 da manhã.', '2018-11-12 02:00:00');
INSERT INTO `ocorrencia` VALUES ('175', 'Uso do uniforme.', '2', 'O aluno veio sem uniforme (camisa). Alegou que o uniforme estava sujo.', '2018-08-08 03:00:00');
INSERT INTO `ocorrencia` VALUES ('176', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã.', '2018-08-13 03:00:00');
INSERT INTO `ocorrencia` VALUES ('177', 'Conduta  indisciplinar.', '2', 'O aluno foi chamado ao núcleo pedagógico para falar sobre as respostas dadas em uma avaliação do professor Samuel. O aluno reconheceu o seu erro, ficou de pedir desculpas ao professor e o erro não voltará a ser cometido.', '2018-08-27 03:00:00');
INSERT INTO `ocorrencia` VALUES ('178', 'Discente chegou atrasado.', '1', 'A mãe do aluno entrou em contato com Cleiton, via whatsapp, avisando que ele chegaria atrasado. O aluno chegou às 08:52 e foi encaminhado para a sala de aula.', '2018-09-11 03:00:00');
INSERT INTO `ocorrencia` VALUES ('179', 'Discente chegou atrasado', '1', 'O aluno chegou às 10:00 hrs para assistir a aula do terceiro horário. Alegou que estava acompanhando sua avó, devido ter um tio em estado grave de saúde, já que não tinha outro familiar disponível para acompanhá-lo.', '2018-04-20 03:00:00');
INSERT INTO `ocorrencia` VALUES ('180', 'Discente saiu mais cedo.', '1', 'O aluno foi embora às 16:00, em decorrência do falecimento de um tio.', '2018-03-21 03:00:00');
INSERT INTO `ocorrencia` VALUES ('181', 'Uso de uniforme.', '2', 'O aluno veio sem o uniforme alegando que o mesmo estava molhado, devido a forte chuva ontem à noite quando saia do IF.', '2018-10-18 03:00:00');
INSERT INTO `ocorrencia` VALUES ('182', 'Discente saiu mais cedo.', '1', 'O aluno saiu às 17:00, mediante a autorização da mão Sra. Ione (por telefone), para arrumar as malas para viajar.', '2018-11-26 02:00:00');
INSERT INTO `ocorrencia` VALUES ('183', 'Discente saiu mais cedo.', '1', 'O aluno foi autorizado pela mão (Sra. Ione) a sair às 10:00 hrs. A autorização foi realizada via telefone.', '2018-12-14 02:00:00');
INSERT INTO `ocorrencia` VALUES ('184', 'Uso de uniforme.', '2', 'O aluno veio de bermuda. Foi orientado sobre o uso do uniforme.', '2018-03-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('185', 'Uso do uniforme.', '2', 'O aluno veio ao turno vespertino, sem o uso do uniforme (camiseta). Foi advertido e por ser a segunda ocorrência pelo não uso do uniforme, da próxima vez será encaminhado à comissão disciplinar.', '2018-05-16 03:00:00');
INSERT INTO `ocorrencia` VALUES ('186', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado, às 08:20. O professor Paulo permitiu a entrada em sala.', '2018-05-23 03:00:00');
INSERT INTO `ocorrencia` VALUES ('187', 'Esquecimento de carteirinha.', '2', 'O aluno esqueceu a carteirinha, foi orientado e assistiu a aula normalmente.', '2018-08-06 03:00:00');
INSERT INTO `ocorrencia` VALUES ('188', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado, às 08:20 e aguardou o início do segundo horário para entrar em sala de aula, conforme o regulamento disciplinar. O aluno veio sem uniforme.', '2018-08-24 03:00:00');
INSERT INTO `ocorrencia` VALUES ('189', 'Discente chegou atrasado.', '2', 'O aluno chegou às 08:19 e foi direto para o laboratório, onde ocorria a aula. O professor permitiu sua entrada.', '2018-08-28 03:00:00');
INSERT INTO `ocorrencia` VALUES ('190', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã. O aluno disse que sumiu e foi orientado a providenciar outra na secretaria o mais rápido possivel.', '2018-08-04 03:00:00');
INSERT INTO `ocorrencia` VALUES ('191', 'Esquecimento de carteirinha.', '2', 'Desde o dia 04/09/2018 que o aluno está sem a carteirinha estudantil. O aluno foi orientado várias vezes que deveria providenciar outra na secretaria e mesmo assim não procurou.', '2018-09-20 03:00:00');
INSERT INTO `ocorrencia` VALUES ('192', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado, às 08:20 e teve autorização do professor Bruno para entrar em sala.', '2018-09-24 03:00:00');
INSERT INTO `ocorrencia` VALUES ('193', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado, às 08:34 e teve a liberação da professora Amanda para entrar na sala.', '2018-09-26 03:00:00');
INSERT INTO `ocorrencia` VALUES ('194', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã. Alegou ter esquecido.', '2018-10-02 03:00:00');
INSERT INTO `ocorrencia` VALUES ('195', 'Discente chegou atrasado.', '2', 'O aluno chegou atrasado e não pode entrar no primeiro horário, ficando na biblioteca esperando o segundo horário.', '2018-10-19 03:00:00');
INSERT INTO `ocorrencia` VALUES ('196', 'uso do uniforme.', '2', 'O aluno veio sem uniforme (camisa).', '2018-10-29 03:00:00');
INSERT INTO `ocorrencia` VALUES ('197', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no período vespertino.', '2018-10-29 03:00:00');
INSERT INTO `ocorrencia` VALUES ('198', 'Esquecimento de carteirinha.', '2', 'o aluno não trouxe a carteirinha no turno matutino.', '2018-11-01 03:00:00');
INSERT INTO `ocorrencia` VALUES ('199', 'Esquecimento de carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã.', '2018-11-19 02:00:00');
INSERT INTO `ocorrencia` VALUES ('200', 'Esquecimento da carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno matutino.', '2018-11-21 02:00:00');
INSERT INTO `ocorrencia` VALUES ('201', 'Esquecimento da carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno matutino.', '2018-12-12 02:00:00');
INSERT INTO `ocorrencia` VALUES ('202', 'Problemas de saúde.', '1', 'A aluna não estava se sentindo bem durante o primeiro horário e pediu para ficar fora da sala, pois teria prova de matemática no terceiro horário. Disse estar muito ansiosa e com mal estar. Não conseguia ficar em ambientes fechados, nem mesmo na biblioteca. A aluna foi encaminhada para a psicologa.', '2018-03-23 03:00:00');
INSERT INTO `ocorrencia` VALUES ('203', 'Problemas de saúde.', '1', 'A aluna não assistiu o terceiro e quarto horários da manhã, alegando problemas psicológicos. Mesmo após ser atendida pela psicologa do campus, alegou não ter condições de ficar na sala de aula. O professor Bruno a dispensou, ficando combinado que ela pegaria a matéria com algum colega da turma.', '2018-04-02 03:00:00');
INSERT INTO `ocorrencia` VALUES ('204', 'Problemas de saúde.', '1', 'A aluna não ficou na sala de aula durante o primeiro e o segundo horário do turno matutino, quando o professor aplicava prova de física. Alegou estar com falta de ar e ansiosa. Foi encaminhada para a psicologa do campus.', '2018-04-04 03:00:00');
INSERT INTO `ocorrencia` VALUES ('205', 'Discente faltou a aula.', '3', 'A aluna foi vista no campus da UFVJM durante o terceiro horário, quando acontecia aula de humanidades. A servidora Karla quem viu, não chamou atenção da aluna porque ão sabia se ela estava liberada ou não.', '2018-04-26 03:00:00');
INSERT INTO `ocorrencia` VALUES ('206', 'Problemas de saúde.', '1', 'Maria Luiza alegou fortes dores de cabeça. Conversei com a mãe da discente por telefone e a mesma autorizou a liberação das duas ultimas aulas.', '2018-05-04 03:00:00');
INSERT INTO `ocorrencia` VALUES ('207', 'Esquecimento da carteirinha.', '2', 'A aluna não trouxe a carteirinha. Alegou que esqueceu. Turno da manhã.', '2018-08-27 03:00:00');
INSERT INTO `ocorrencia` VALUES ('208', 'Discente saiu mais cedo.', '1', 'A aluna pediu para ir embora assim que concluiu a prova às 11:27 devido situação intima. A mãe foi comunicada pela servidora Karla e autorizou a saída da discente.', '2018-09-11 03:00:00');
INSERT INTO `ocorrencia` VALUES ('209', 'Esquecimento da carteirinha.', '2', 'A discente não trouxe a carteirinha pela manhã.', '2018-09-12 03:00:00');
INSERT INTO `ocorrencia` VALUES ('210', 'Discente chegou atrasado.', '2', 'A aluna chegou atrasada na aula de Química porque estava no pé de jabuticaba segundo relato da professora Janainne.', '2018-10-02 03:00:00');
INSERT INTO `ocorrencia` VALUES ('211', 'Discente saiu mais cedo.', '1', 'A mãe da aluna Maria Luiza autorizou a sua saída mais cedo pois ela não estava se sentindo bem e veio apenas para fazer a atividade da professora Jannaine.', '2018-10-03 03:00:00');
INSERT INTO `ocorrencia` VALUES ('212', 'Discente saiu mais cedo.', '1', 'A mãe buscou a aluna às 11:45', '2018-11-19 02:00:00');
INSERT INTO `ocorrencia` VALUES ('213', 'Esquecimento da carteirinha.', '2', 'A aluna não trouxe a carteirinha no turno matutino.', '2018-12-12 02:00:00');
INSERT INTO `ocorrencia` VALUES ('214', 'Problemas de saúde.', '1', 'A aluna está sentindo dores de cabeça, foi atendida pela enfermeira e foi liberada pela mãe para ir embora.', '2018-10-03 03:00:00');
INSERT INTO `ocorrencia` VALUES ('215', 'Problemas de saúde.', '1', 'O pai do aluno ligou para o campus informando que o aluno está com algum problema nos olhos, impossibilitando-o de vir à aula. Foi orientado a buscar tratamento médico e trazer atestado posteriormente.', '2018-04-02 03:00:00');
INSERT INTO `ocorrencia` VALUES ('216', 'Problemas de saúde.', '1', 'O aluno estava provavelmente com febre e com dor no corpo. Pediu para ir embora e o seu pai veio buscá-lo às 08:40.', '2018-06-25 03:00:00');
INSERT INTO `ocorrencia` VALUES ('217', 'Esquecimento da carteirinha.', '2', 'O discente não trouxe a carteirinha no turno da manhã.', '2018-08-31 03:00:00');
INSERT INTO `ocorrencia` VALUES ('218', 'Discente chegou atrasado.', '2', 'O aluno chegou às 08:20 hrs e foi encaminhado para a biblioteca. O professor Paulo Lemos pediu que liberasse sua entrada na sala de aula devido a complexidade da matéria.', '2018-09-10 03:00:00');
INSERT INTO `ocorrencia` VALUES ('219', 'Uso do uniforme.', '2', 'O aluno veio sem uniforme no turno da manhã.', '2018-09-27 03:00:00');
INSERT INTO `ocorrencia` VALUES ('220', 'Esquecimento da carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno da manhã. Alegou ter esquecido.', '2018-10-30 03:00:00');
INSERT INTO `ocorrencia` VALUES ('221', 'Esquecimento da carteirinha.', '2', 'O aluno não trouxe a carteirinha no turno matutino.', '2018-12-14 02:00:00');

-- ----------------------------
-- Table structure for ocorrenciaAluno
-- ----------------------------
DROP TABLE IF EXISTS `ocorrenciaAluno`;
CREATE TABLE `ocorrenciaAluno` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ocorrenciafk` int(11) NOT NULL,
  `alunofk` int(11) NOT NULL,
  `confirmacao` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Ocorrencia_has_Aluno_Ocorrencia1_idx` (`ocorrenciafk`) USING BTREE,
  KEY `fk_Ocorrencia_has_Aluno_Aluno1_idx` (`alunofk`) USING BTREE,
  CONSTRAINT `fk_Ocorrencia_has_Aluno_Aluno1` FOREIGN KEY (`alunofk`) REFERENCES `aluno` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Ocorrencia_has_Aluno_Ocorrencia1` FOREIGN KEY (`ocorrenciafk`) REFERENCES `ocorrencia` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=282 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ocorrenciaAluno
-- ----------------------------
INSERT INTO `ocorrenciaAluno` VALUES ('13', '2', '34', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('14', '3', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('15', '4', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('16', '5', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('17', '6', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('18', '7', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('19', '8', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('20', '9', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('21', '10', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('22', '11', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('23', '12', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('24', '13', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('25', '14', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('26', '15', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('27', '16', '39', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('28', '17', '12', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('29', '18', '12', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('30', '19', '12', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('33', '22', '19', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('34', '23', '19', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('35', '24', '19', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('36', '25', '43', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('37', '26', '43', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('38', '27', '43', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('39', '28', '43', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('40', '29', '43', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('41', '30', '43', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('42', '31', '43', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('43', '32', '43', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('44', '33', '43', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('45', '34', '43', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('46', '35', '9', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('47', '36', '9', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('48', '37', '9', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('49', '38', '9', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('50', '39', '9', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('51', '40', '9', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('52', '41', '9', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('53', '42', '40', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('54', '43', '40', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('55', '44', '37', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('56', '45', '37', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('57', '46', '37', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('58', '47', '37', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('59', '48', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('60', '49', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('61', '50', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('62', '51', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('63', '52', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('66', '55', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('67', '56', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('70', '59', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('71', '60', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('72', '61', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('73', '62', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('74', '63', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('75', '64', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('76', '65', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('77', '66', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('78', '67', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('79', '68', '38', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('80', '69', '38', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('81', '70', '38', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('82', '71', '38', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('83', '72', '38', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('84', '73', '38', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('85', '74', '38', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('86', '75', '38', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('87', '76', '38', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('88', '77', '38', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('89', '78', '38', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('90', '79', '38', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('91', '80', '22', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('92', '80', '21', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('93', '80', '24', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('94', '81', '22', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('95', '81', '21', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('96', '81', '24', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('97', '82', '22', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('98', '83', '22', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('99', '84', '22', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('100', '85', '22', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('101', '86', '10', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('102', '87', '10', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('103', '88', '10', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('104', '89', '10', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('105', '90', '10', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('106', '91', '10', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('107', '92', '10', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('108', '93', '10', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('109', '94', '10', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('110', '95', '23', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('111', '96', '23', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('112', '97', '23', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('113', '98', '23', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('114', '99', '23', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('115', '100', '23', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('116', '101', '23', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('117', '102', '23', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('118', '103', '23', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('119', '104', '32', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('120', '105', '32', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('125', '20', '19', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('126', '20', '42', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('127', '20', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('128', '108', '42', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('129', '109', '42', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('130', '110', '42', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('131', '111', '42', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('132', '112', '42', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('133', '113', '42', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('134', '114', '35', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('135', '115', '16', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('136', '116', '16', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('137', '117', '16', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('138', '118', '8', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('139', '119', '8', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('140', '120', '8', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('141', '121', '8', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('142', '122', '24', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('143', '122', '21', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('144', '122', '22', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('145', '123', '24', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('146', '123', '21', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('147', '123', '22', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('148', '124', '24', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('150', '126', '28', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('151', '127', '36', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('152', '128', '29', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('153', '129', '29', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('154', '130', '11', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('155', '131', '27', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('156', '132', '27', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('157', '133', '27', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('158', '134', '27', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('159', '135', '27', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('160', '136', '27', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('161', '137', '27', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('162', '138', '27', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('163', '139', '14', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('164', '140', '14', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('165', '141', '14', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('166', '142', '14', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('167', '143', '14', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('168', '144', '14', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('193', '149', '13', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('194', '149', '15', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('195', '152', '15', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('196', '151', '15', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('197', '21', '19', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('198', '125', '28', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('199', '145', '23', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('200', '146', '13', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('201', '147', '13', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('202', '148', '13', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('203', '150', '13', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('204', '153', '15', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('205', '154', '33', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('206', '154', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('207', '155', '18', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('208', '156', '18', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('209', '157', '18', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('210', '158', '18', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('211', '159', '18', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('212', '160', '18', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('213', '161', '18', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('214', '162', '18', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('215', '163', '18', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('216', '164', '18', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('217', '165', '25', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('218', '166', '25', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('219', '167', '25', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('220', '168', '25', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('221', '169', '25', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('222', '170', '25', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('223', '171', '25', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('224', '172', '25', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('225', '173', '25', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('226', '174', '25', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('227', '175', '21', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('228', '176', '21', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('229', '177', '21', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('230', '178', '21', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('231', '179', '21', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('232', '180', '21', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('233', '181', '21', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('234', '182', '20', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('235', '183', '20', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('236', '184', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('237', '185', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('238', '186', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('239', '187', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('240', '188', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('241', '189', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('242', '190', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('243', '191', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('244', '192', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('245', '193', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('246', '194', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('247', '195', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('248', '196', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('249', '197', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('250', '198', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('251', '199', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('252', '200', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('253', '201', '30', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('254', '202', '31', '0');
INSERT INTO `ocorrenciaAluno` VALUES ('255', '203', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('256', '204', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('257', '205', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('258', '53', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('259', '53', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('260', '206', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('261', '54', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('262', '54', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('263', '57', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('264', '57', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('265', '58', '17', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('266', '58', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('267', '207', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('268', '208', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('269', '209', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('270', '210', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('271', '211', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('272', '212', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('273', '213', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('274', '214', '31', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('275', '215', '26', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('276', '216', '26', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('277', '217', '26', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('278', '218', '26', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('279', '219', '26', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('280', '220', '26', '1');
INSERT INTO `ocorrenciaAluno` VALUES ('281', '221', '26', '1');

-- ----------------------------
-- Table structure for prova
-- ----------------------------
DROP TABLE IF EXISTS `prova`;
CREATE TABLE `prova` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `disciplina` varchar(255) NOT NULL,
  `tema` varchar(255) DEFAULT NULL,
  `turmafk` int(11) NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Prova_has_Turma_Turma1_idx` (`turmafk`) USING BTREE,
  CONSTRAINT `fk_Prova_has_Turma_Turma1` FOREIGN KEY (`turmafk`) REFERENCES `turma` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prova
-- ----------------------------
INSERT INTO `prova` VALUES ('1', 'Matemática', 'Produtos notáveis', '4', '2018-12-20 18:19:21');

-- ----------------------------
-- Table structure for reuniao
-- ----------------------------
DROP TABLE IF EXISTS `reuniao`;
CREATE TABLE `reuniao` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of reuniao
-- ----------------------------
INSERT INTO `reuniao` VALUES ('1', 'reuniao1', 'Espiral', 'reuniao1', '2018-08-08 09:21:09');
INSERT INTO `reuniao` VALUES ('2', 'sssssaaa', 'Lideres', 'sssssaaa', '2018-07-24 14:43:14');
INSERT INTO `reuniao` VALUES ('36', 'reuniao10', 'Espiral', 'reuniao10', '2018-08-08 09:21:09');
INSERT INTO `reuniao` VALUES ('51', 'asdf', 'asdf', 'asdfqwer', '2018-08-22 03:00:00');
INSERT INTO `reuniao` VALUES ('52', 'reuniÃ£o sei la', 'lideres', 'reuniÃ£o assim assado e tale', '2018-08-22 03:00:00');
INSERT INTO `reuniao` VALUES ('53', 'Exemplo de reunião', 'Espiral', 'descriçao tal da reunião\nassim assado', '2018-08-24 03:00:00');
INSERT INTO `reuniao` VALUES ('54', 'teste2', 'Espiral', 'oief askljdf hlakjsdh fkjahsd fkja', '2018-08-30 03:00:00');
INSERT INTO `reuniao` VALUES ('55', 'Reunião de Ensino', 'Renião de Ensino', 'akdjs fkljas dlkfja çsldkjf a\nasdçofj aslçdf a\nasdçjjfa sd', '2018-08-30 03:00:00');
INSERT INTO `reuniao` VALUES ('56', 'reunião2', 'Espiral', 'descricao da reunião 2', '2018-10-23 03:00:00');
INSERT INTO `reuniao` VALUES ('57', 'reuniao teste', 'Espiral', 'Reunião assim e assado e tal', '2018-10-25 03:00:00');

-- ----------------------------
-- Table structure for reuniaoservidor
-- ----------------------------
DROP TABLE IF EXISTS `reuniaoservidor`;
CREATE TABLE `reuniaoservidor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reuniaofk` int(11) DEFAULT NULL,
  `servidorfk` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Reuniao_has_Servidor_Reuniao1_idx` (`reuniaofk`) USING BTREE,
  KEY `fk_Reuniao_has_Servidor_Servidor1_idx` (`servidorfk`) USING BTREE,
  CONSTRAINT `fk_Reuniao_has_Servidor_Reuniao1` FOREIGN KEY (`reuniaofk`) REFERENCES `reuniao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Reuniao_has_Servidor_Servidor1` FOREIGN KEY (`servidorfk`) REFERENCES `servidor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of reuniaoservidor
-- ----------------------------

-- ----------------------------
-- Table structure for servidor
-- ----------------------------
DROP TABLE IF EXISTS `servidor`;
CREATE TABLE `servidor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sobrenome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cargo` tinyint(1) DEFAULT NULL,
  `matricula` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of servidor
-- ----------------------------
INSERT INTO `servidor` VALUES ('1', 'Admin', 'Admin', '1', '1', 'admin@ifnmg.edu.br', '81dc9bdb52d04dc20036dbd8313ed055');

-- ----------------------------
-- Table structure for turma
-- ----------------------------
DROP TABLE IF EXISTS `turma`;
CREATE TABLE `turma` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `curso` varchar(255) NOT NULL,
  `ano` varchar(255) NOT NULL,
  `modalidade` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of turma
-- ----------------------------
INSERT INTO `turma` VALUES ('4', 'DIAMIIN', 'Turma 1', 'Informática', '2018', 'Integrado');
INSERT INTO `turma` VALUES ('5', 'DIAMIMA', 'Turma 1', 'Meio Ambiente', '2018', 'Integrado');
