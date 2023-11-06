CREATE TABLE `usuarios` (
  `cpf` interger PRIMARY KEY,
  `nome` varchar(255),
  `sobrenome` varchar(255),
  `email` varchar(255),
  `idade` interger
);

CREATE TABLE `cadastro_pj` (
  `cnpj` interger PRIMARY KEY,
  `nomeempresa` varchar(255),
  `email` varchar(255),
  `ramoatividade` varchar(255),
  `localizacao` varchar(255)
);

CREATE TABLE `produto` (
  `id` interger PRIMARY KEY,
  `nomeprod` varchar(255),
  `marca` varchar(255),
  `codeqr` interger
);

ALTER TABLE `cadastro_pj` ADD FOREIGN KEY (`cnpj`) REFERENCES `usuarios` (`cpf`);

ALTER TABLE `produto` ADD FOREIGN KEY (`id`) REFERENCES `cadastro_pj` (`cnpj`);
