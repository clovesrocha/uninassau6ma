CREATE TABLE [usuarios] (
  [cpf] interger PRIMARY KEY,
  [nome] nvarchar(255),
  [sobrenome] nvarchar(255),
  [email] nvarchar(255),
  [idade] interger
)
GO

CREATE TABLE [cadastro_pj] (
  [cnpj] interger PRIMARY KEY,
  [nomeempresa] nvarchar(255),
  [email] nvarchar(255),
  [ramoatividade] nvarchar(255),
  [localizacao] nvarchar(255)
)
GO

CREATE TABLE [produto] (
  [id] interger PRIMARY KEY,
  [nomeprod] nvarchar(255),
  [marca] nvarchar(255),
  [codeqr] interger
)
GO

ALTER TABLE [cadastro_pj] ADD FOREIGN KEY ([cnpj]) REFERENCES [usuarios] ([cpf])
GO

ALTER TABLE [produto] ADD FOREIGN KEY ([id]) REFERENCES [cadastro_pj] ([cnpj])
GO
