USE [SICSEP]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 04/06/2014 18:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cliente](
	[clienteID] [int] IDENTITY(1,1) NOT NULL,
	[nome] [varchar](60) NULL,
	[tipoPessoa] [int] NULL,
	[cpfCnpj] [varchar](20) NULL,
	[sexo] [varchar](50) NULL,
	[dataCadastro] [datetime] NULL,
	[endereco] [varchar](60) NULL,
	[cep] [varchar](15) NULL,
	[bairro] [varchar](50) NULL,
	[complemento] [varchar](100) NULL,
	[cidade] [varchar](50) NULL,
	[uf] [varchar](20) NULL,
	[telefone1] [varchar](15) NULL,
	[telefone2] [varchar](15) NULL,
	[email] [varchar](50) NULL,
	[observacao] [varchar](300) NULL,
	[rg] [varchar](15) NULL,
	[orgaoEmissor] [varchar](10) NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[clienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Funcionario]    Script Date: 04/06/2014 18:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Funcionario](
	[funcionarioID] [int] IDENTITY(1,1) NOT NULL,
	[bairro] [varchar](50) NULL,
	[cargo] [int] NULL,
	[categoria] [varchar](30) NULL,
	[nome] [varchar](60) NULL,
	[cep] [varchar](15) NULL,
	[cpf] [varchar](20) NULL,
	[dataAtivado] [datetime] NULL,
	[dataDesativado] [datetime] NULL,
	[dataNascimento] [datetime] NULL,
	[endereco] [varchar](60) NULL,
	[telefone1] [varchar](15) NULL,
	[telefone2] [varchar](15) NULL,
	[observacao] [varchar](300) NULL,
	[rg] [varchar](15) NULL,
	[orgaoEmissor] [varchar](10) NULL,
	[habilitacao] [varchar](30) NULL,
	[senha] [varchar](30) NULL,
	[login] [varchar](10) NULL,
	[complemento] [varchar](100) NULL,
 CONSTRAINT [PK_Funcionario] PRIMARY KEY CLUSTERED 
(
	[funcionarioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemProduto]    Script Date: 04/06/2014 18:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemProduto](
	[itemProdutoID] [int] IDENTITY(1,1) NOT NULL,
	[quantidadeItem] [int] NULL,
	[produtoID] [int] NULL,
	[preco] [decimal](10, 2) NULL,
	[ordemServicoID] [int] NULL,
 CONSTRAINT [PK_ItemProduto] PRIMARY KEY CLUSTERED 
(
	[itemProdutoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemServico]    Script Date: 04/06/2014 18:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemServico](
	[itemServicoID] [int] IDENTITY(1,1) NOT NULL,
	[servicoID] [int] NULL,
	[ordemServicoID] [int] NULL,
	[itemPreco] [decimal](10, 2) NULL,
 CONSTRAINT [PK_ItemServico] PRIMARY KEY CLUSTERED 
(
	[itemServicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Moto]    Script Date: 04/06/2014 18:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Moto](
	[motoID] [int] IDENTITY(1,1) NOT NULL,
	[placa] [varchar](10) NULL,
	[chassi] [varchar](30) NULL,
	[marcaModelo] [varchar](50) NULL,
	[anoFabricacao] [varchar](4) NULL,
	[corPredominante] [varchar](50) NULL,
	[observacao] [varchar](300) NULL,
 CONSTRAINT [PK_Moto] PRIMARY KEY CLUSTERED 
(
	[motoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrdemServico]    Script Date: 04/06/2014 18:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrdemServico](
	[ordemServicoID] [int] IDENTITY(1,1) NOT NULL,
	[dataAberturaOS] [datetime] NULL,
	[dataFechamentoOS] [datetime] NULL,
	[km] [varchar](50) NULL,
	[observacao] [varchar](50) NULL,
	[tipoDesconto] [int] NULL,
	[desconto] [decimal](10, 2) NULL,
	[clienteID] [int] NULL,
	[funcionarioID] [int] NULL,
	[motoID] [int] NULL,
	[itemServicoID] [int] NULL,
	[itemProdutoID] [int] NULL,
 CONSTRAINT [PK_OrdemServico] PRIMARY KEY CLUSTERED 
(
	[ordemServicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 04/06/2014 18:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Produto](
	[produtoID] [int] IDENTITY(1,1) NOT NULL,
	[nomeProduto] [varchar](60) NULL,
	[nomeFornecedor] [varchar](60) NULL,
	[estoqueMinimo] [int] NULL,
	[estoque] [int] NULL,
	[entradaEstoque] [int] NULL,
	[marcaModelo] [varchar](30) NULL,
	[precoCompra] [decimal](10, 2) NULL,
	[precoVenda] [decimal](10, 2) NULL,
	[observacao] [varchar](300) NULL,
	[telefoneFornecedor] [varchar](20) NULL,
 CONSTRAINT [PK_Produto] PRIMARY KEY CLUSTERED 
(
	[produtoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Servico]    Script Date: 04/06/2014 18:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Servico](
	[servicoID] [int] IDENTITY(1,1) NOT NULL,
	[nomeServico] [varchar](60) NULL,
	[marcaModelo] [varchar](50) NULL,
	[observacao] [varchar](300) NULL,
	[preco] [decimal](10, 2) NULL,
 CONSTRAINT [PK_Servico] PRIMARY KEY CLUSTERED 
(
	[servicoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Cliente] ON 

INSERT [dbo].[Cliente] ([clienteID], [nome], [tipoPessoa], [cpfCnpj], [sexo], [dataCadastro], [endereco], [cep], [bairro], [complemento], [cidade], [uf], [telefone1], [telefone2], [email], [observacao], [rg], [orgaoEmissor]) VALUES (1, N'MARCOS FILIPE COELHO', 0, N'111.111.111-11', N'0', CAST(0x0000A34000000000 AS DateTime), N'RUA: GUSTAVO MOURA, 6785', N'76900-000', N'NOSSA Sª DAS GRAÇAS', N'PERTO DO QUIOSQUE', N'PORTO VELHO', N'1', N'(11) 1111-1111', N'(11) 1111-1111', N'filipe@gmail.com', N'', N'111.111.111', N'')
INSERT [dbo].[Cliente] ([clienteID], [nome], [tipoPessoa], [cpfCnpj], [sexo], [dataCadastro], [endereco], [cep], [bairro], [complemento], [cidade], [uf], [telefone1], [telefone2], [email], [observacao], [rg], [orgaoEmissor]) VALUES (2, N'JOAQUIM FARIAS ROCHA', 0, N'222.222.222-22', N'0', CAST(0x0000A34000000000 AS DateTime), N'RUA: GUSTAVO MOURA, 6785', N'11111-111', N'TANCREDO NEVES', N'PERTO DO QUIOSQUE', N'PORTO VELHO', N'1', N'(11) 1111-1111', N'(11) 1111-1111', N'joaquim@outlook.com', N'', N'111.111.111', N'')
INSERT [dbo].[Cliente] ([clienteID], [nome], [tipoPessoa], [cpfCnpj], [sexo], [dataCadastro], [endereco], [cep], [bairro], [complemento], [cidade], [uf], [telefone1], [telefone2], [email], [observacao], [rg], [orgaoEmissor]) VALUES (3, N'FRANÇA & CHAGAS LTDA', 1, N'52.342.343/2423-4', N'3', CAST(0x0000A34000000000 AS DateTime), N'RUA JOAQUIM FARIAS , 6734', N'76900-000', N'NOVA PORTO VELHO', N'PERTO DO MERCADO PAG MENOS', N'PORTO VELHO', N'1', N'(11) 1111-1111', N'(11) 1111-1111', N'frança@gmail.com', N'', N'', N'')
INSERT [dbo].[Cliente] ([clienteID], [nome], [tipoPessoa], [cpfCnpj], [sexo], [dataCadastro], [endereco], [cep], [bairro], [complemento], [cidade], [uf], [telefone1], [telefone2], [email], [observacao], [rg], [orgaoEmissor]) VALUES (4, N'MARIA IOLITA DA COSTA', 0, N'333.333.333-33', N'1', CAST(0x0000A34000000000 AS DateTime), N'RUA: ARUBA, 8075', N'00000-000', N'TANCREDO NEVES', N'PERTO DO MERCADO PAG MENOS', N'PORTO VELHO', N'1', N'(00) 0000-0000', N'(00) 0000-0000', N'maria@gmail.com', N'', N'111.111.111', N'')
INSERT [dbo].[Cliente] ([clienteID], [nome], [tipoPessoa], [cpfCnpj], [sexo], [dataCadastro], [endereco], [cep], [bairro], [complemento], [cidade], [uf], [telefone1], [telefone2], [email], [observacao], [rg], [orgaoEmissor]) VALUES (5, N'FRANCISCO LTDA', 1, N'00.000.000/0000-0', N'3', CAST(0x0000A34000000000 AS DateTime), N'RUA JOAQUIM FARIAS , 6734', N'00000-000', N'NOVA PORTO VELHO', N'PERTO DO QUIOSQUE', N'PORTO VELHO', N'1', N'(00) 0000-0000', N'(00) 0000-0000', N'francisco@yahoo.com', N'', N'', N'')
SET IDENTITY_INSERT [dbo].[Cliente] OFF
SET IDENTITY_INSERT [dbo].[Funcionario] ON 

INSERT [dbo].[Funcionario] ([funcionarioID], [bairro], [cargo], [categoria], [nome], [cep], [cpf], [dataAtivado], [dataDesativado], [dataNascimento], [endereco], [telefone1], [telefone2], [observacao], [rg], [orgaoEmissor], [habilitacao], [senha], [login], [complemento]) VALUES (2, N'TANCREDO NEVES', 3, N'AB', N'LUIZ COSTA VELOSO', N'78900-000', N'333.333.333-33', CAST(0x00006C2400000000 AS DateTime), NULL, CAST(0x00007D4300000000 AS DateTime), N'RUA JOAQUIM FARIAS , 6734', N'(44) 4444-4444', N'(44) 4444-4444', N'OBSERVAÇÃO', N'242.342', N'SSP/RO', N'123456789000', N'123', N'Luiz', N'PERTO DO QUIOSQUE')
INSERT [dbo].[Funcionario] ([funcionarioID], [bairro], [cargo], [categoria], [nome], [cep], [cpf], [dataAtivado], [dataDesativado], [dataNascimento], [endereco], [telefone1], [telefone2], [observacao], [rg], [orgaoEmissor], [habilitacao], [senha], [login], [complemento]) VALUES (3, N'TANCREDO NEVES', 4, N'AB', N'FRANK WALLACE POTRATZ DE ANDRADE', N'78900-000', N'111.111.111-11', CAST(0x0000A34000000000 AS DateTime), NULL, CAST(0x00007D8300000000 AS DateTime), N'RUA: GUSTAVO MOURA, 6785', N'(11) 1111-1111', N'(11) 1111-1111', N'', N'1.111.111', N'SSP/RO', N'123456789000', NULL, NULL, N'PERTO DO QUIOSQUE')
INSERT [dbo].[Funcionario] ([funcionarioID], [bairro], [cargo], [categoria], [nome], [cep], [cpf], [dataAtivado], [dataDesativado], [dataNascimento], [endereco], [telefone1], [telefone2], [observacao], [rg], [orgaoEmissor], [habilitacao], [senha], [login], [complemento]) VALUES (4, N'LAGOINHA', 2, N'AB', N'GIOVANNA MARCIELLE COSTA BERNARDO', N'76900-000', N'111.111.111-11', CAST(0x0000A34000000000 AS DateTime), NULL, CAST(0x00008AB300000000 AS DateTime), N'RUA ALEXANDRE GUIMARÃES, 5454', N'(11) 1111-1111', N'(11) 1111-1111', N'OBSERVAÇÃO', N'111.111.111', N'SSP/RO', N'111111111111', N'123', N'GIOVANNA', N'PERTO DO QUIOSQUE')
INSERT [dbo].[Funcionario] ([funcionarioID], [bairro], [cargo], [categoria], [nome], [cep], [cpf], [dataAtivado], [dataDesativado], [dataNascimento], [endereco], [telefone1], [telefone2], [observacao], [rg], [orgaoEmissor], [habilitacao], [senha], [login], [complemento]) VALUES (5, N'TANCREDO NEVES', 1, N'AB', N'BRENDA IASMIM SILVA COSTA', N'76900-000', N'111.111.111-11', CAST(0x0000A34000000000 AS DateTime), NULL, CAST(0x0000961D00000000 AS DateTime), N'RUA ARUBA 8075', N'(11) 1111-1111', N'(11) 1111-1111', N'', N'111.111.111', N'SSP/RO', N'111111111111', N'123', N'BRENDA', N'PERTO DO QUIOSQUE')
INSERT [dbo].[Funcionario] ([funcionarioID], [bairro], [cargo], [categoria], [nome], [cep], [cpf], [dataAtivado], [dataDesativado], [dataNascimento], [endereco], [telefone1], [telefone2], [observacao], [rg], [orgaoEmissor], [habilitacao], [senha], [login], [complemento]) VALUES (6, N'TANCREDO NEVES', 4, N'', N'VANDEVALDO FARIAS JUNIOR', N'11111-111', N'111.111.111-11', CAST(0x0000A34000000000 AS DateTime), NULL, CAST(0x00008AE800000000 AS DateTime), N'RUA: GUSTAVO MOURA, 6785', N'(11) 1111-1111', N'', N'', N'', N'', N'', NULL, NULL, N'')
SET IDENTITY_INSERT [dbo].[Funcionario] OFF
SET IDENTITY_INSERT [dbo].[ItemProduto] ON 

INSERT [dbo].[ItemProduto] ([itemProdutoID], [quantidadeItem], [produtoID], [preco], [ordemServicoID]) VALUES (1, 1, 1, CAST(52.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[ItemProduto] ([itemProdutoID], [quantidadeItem], [produtoID], [preco], [ordemServicoID]) VALUES (2, 2, 2, CAST(10.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[ItemProduto] ([itemProdutoID], [quantidadeItem], [produtoID], [preco], [ordemServicoID]) VALUES (3, 1, 4, CAST(50.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[ItemProduto] ([itemProdutoID], [quantidadeItem], [produtoID], [preco], [ordemServicoID]) VALUES (4, 1, 3, CAST(30.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[ItemProduto] ([itemProdutoID], [quantidadeItem], [produtoID], [preco], [ordemServicoID]) VALUES (5, 1, 2, CAST(10.00 AS Decimal(10, 2)), 4)
INSERT [dbo].[ItemProduto] ([itemProdutoID], [quantidadeItem], [produtoID], [preco], [ordemServicoID]) VALUES (6, 2, 3, CAST(30.00 AS Decimal(10, 2)), 5)
SET IDENTITY_INSERT [dbo].[ItemProduto] OFF
SET IDENTITY_INSERT [dbo].[ItemServico] ON 

INSERT [dbo].[ItemServico] ([itemServicoID], [servicoID], [ordemServicoID], [itemPreco]) VALUES (1, 1, 1, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ItemServico] ([itemServicoID], [servicoID], [ordemServicoID], [itemPreco]) VALUES (2, 2, 2, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[ItemServico] ([itemServicoID], [servicoID], [ordemServicoID], [itemPreco]) VALUES (3, 1, 3, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[ItemServico] ([itemServicoID], [servicoID], [ordemServicoID], [itemPreco]) VALUES (4, 4, 4, CAST(150.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[ItemServico] OFF
SET IDENTITY_INSERT [dbo].[Moto] ON 

INSERT [dbo].[Moto] ([motoID], [placa], [chassi], [marcaModelo], [anoFabricacao], [corPredominante], [observacao]) VALUES (1, N'NHH-3433', N'64SF66FA66FSS6GS4G6S', N'HONDA/XRE 300', N'2011', N'PRETA', N'OBSERVAÇÃO')
INSERT [dbo].[Moto] ([motoID], [placa], [chassi], [marcaModelo], [anoFabricacao], [corPredominante], [observacao]) VALUES (2, N'GVH-6523', N'6F5FS1F6S16FSF7S1FFF', N'HONDA/BIS 125', N'2010', N'AMARELA', N'OBSERVAÇÃO')
INSERT [dbo].[Moto] ([motoID], [placa], [chassi], [marcaModelo], [anoFabricacao], [corPredominante], [observacao]) VALUES (3, N'KID-9799', N'F156F196AS84F98ADF19', N'HONDA/TITAN 150', N'2014', N'VERMELHA', N'OBSERVAÇÃO')
INSERT [dbo].[Moto] ([motoID], [placa], [chassi], [marcaModelo], [anoFabricacao], [corPredominante], [observacao]) VALUES (4, N'IDE-9020', N'1F6ASF68S4A8FA9F6A48', N'HONDA/TRANSALP 700', N'2014', N'BRANCA', N'OBSERVAÇÃO')
INSERT [dbo].[Moto] ([motoID], [placa], [chassi], [marcaModelo], [anoFabricacao], [corPredominante], [observacao]) VALUES (5, N'IDW-4545', N'A1F6A1D6F1AF6A16F16A', N'YAMARRA/XT 660', N'2014', N'PRETA', N'OBSERVAÇÃO')
SET IDENTITY_INSERT [dbo].[Moto] OFF
SET IDENTITY_INSERT [dbo].[OrdemServico] ON 

INSERT [dbo].[OrdemServico] ([ordemServicoID], [dataAberturaOS], [dataFechamentoOS], [km], [observacao], [tipoDesconto], [desconto], [clienteID], [funcionarioID], [motoID], [itemServicoID], [itemProdutoID]) VALUES (1, CAST(0x0000A34001240698 AS DateTime), NULL, N'45000', N'', 0, CAST(10.00 AS Decimal(10, 2)), 1, 6, 5, NULL, NULL)
INSERT [dbo].[OrdemServico] ([ordemServicoID], [dataAberturaOS], [dataFechamentoOS], [km], [observacao], [tipoDesconto], [desconto], [clienteID], [funcionarioID], [motoID], [itemServicoID], [itemProdutoID]) VALUES (2, CAST(0x0000A34001292BC8 AS DateTime), NULL, N'', N'', 0, NULL, 1, 3, 3, NULL, NULL)
INSERT [dbo].[OrdemServico] ([ordemServicoID], [dataAberturaOS], [dataFechamentoOS], [km], [observacao], [tipoDesconto], [desconto], [clienteID], [funcionarioID], [motoID], [itemServicoID], [itemProdutoID]) VALUES (3, CAST(0x0000A340012B1474 AS DateTime), NULL, N'234424', N'', 0, NULL, 2, 6, 5, NULL, NULL)
INSERT [dbo].[OrdemServico] ([ordemServicoID], [dataAberturaOS], [dataFechamentoOS], [km], [observacao], [tipoDesconto], [desconto], [clienteID], [funcionarioID], [motoID], [itemServicoID], [itemProdutoID]) VALUES (4, CAST(0x0000A340012C8B74 AS DateTime), NULL, N'2424', N'', 0, CAST(10.00 AS Decimal(10, 2)), 3, 6, 3, NULL, NULL)
INSERT [dbo].[OrdemServico] ([ordemServicoID], [dataAberturaOS], [dataFechamentoOS], [km], [observacao], [tipoDesconto], [desconto], [clienteID], [funcionarioID], [motoID], [itemServicoID], [itemProdutoID]) VALUES (5, CAST(0x0000A340012CE358 AS DateTime), NULL, N'35433', N'', 1, CAST(10.00 AS Decimal(10, 2)), 4, 6, 2, NULL, NULL)
SET IDENTITY_INSERT [dbo].[OrdemServico] OFF
SET IDENTITY_INSERT [dbo].[Produto] ON 

INSERT [dbo].[Produto] ([produtoID], [nomeProduto], [nomeFornecedor], [estoqueMinimo], [estoque], [entradaEstoque], [marcaModelo], [precoCompra], [precoVenda], [observacao], [telefoneFornecedor]) VALUES (1, N'CARBORADOR', N'JACINTO DA SIVA MAGRO', 5, 99, 100, N'HONDA/ XRE 300', CAST(40.00 AS Decimal(10, 2)), CAST(52.00 AS Decimal(10, 2)), N'OBSERVAÇÃO', N'(11) 1111-1111')
INSERT [dbo].[Produto] ([produtoID], [nomeProduto], [nomeFornecedor], [estoqueMinimo], [estoque], [entradaEstoque], [marcaModelo], [precoCompra], [precoVenda], [observacao], [telefoneFornecedor]) VALUES (2, N'LUVA', N'FRANCISCO CHAGAS NETO', 5, 97, 100, N'TODAS', CAST(5.00 AS Decimal(10, 2)), CAST(10.00 AS Decimal(10, 2)), N'OBSERVAÇÃO', N'(11) 1111-1111')
INSERT [dbo].[Produto] ([produtoID], [nomeProduto], [nomeFornecedor], [estoqueMinimo], [estoque], [entradaEstoque], [marcaModelo], [precoCompra], [precoVenda], [observacao], [telefoneFornecedor]) VALUES (3, N'CABO DE FREIO', N'JACINTO DA SIVA MAGRO', 3, 47, 50, N'TODAS', CAST(15.00 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), N'', N'(11) 1111-1111')
INSERT [dbo].[Produto] ([produtoID], [nomeProduto], [nomeFornecedor], [estoqueMinimo], [estoque], [entradaEstoque], [marcaModelo], [precoCompra], [precoVenda], [observacao], [telefoneFornecedor]) VALUES (4, N'LONA DE FREIO', N'FRANCISCO CHAGAS NETO', 5, 29, 30, N'HONDA/TRANSALP 700', CAST(20.00 AS Decimal(10, 2)), CAST(50.00 AS Decimal(10, 2)), N'OBSERVAÇAO', N'(11) 1111-1111')
INSERT [dbo].[Produto] ([produtoID], [nomeProduto], [nomeFornecedor], [estoqueMinimo], [estoque], [entradaEstoque], [marcaModelo], [precoCompra], [precoVenda], [observacao], [telefoneFornecedor]) VALUES (5, N'PNEU TRASEIRO', N'FRANCISCO CHAGAS NETO', 5, 30, 30, N'HONDA/ XRE 300', CAST(70.00 AS Decimal(10, 2)), CAST(30.00 AS Decimal(10, 2)), N'', N'(11) 1111-1111')
SET IDENTITY_INSERT [dbo].[Produto] OFF
SET IDENTITY_INSERT [dbo].[Servico] ON 

INSERT [dbo].[Servico] ([servicoID], [nomeServico], [marcaModelo], [observacao], [preco]) VALUES (1, N'TROCA DE OLEO', N'TODAS', N'NUNCA É TARDE DEMAIS PARA SER AQUILO QUE SEMPRE SE DESEJOU SER. (GEORGE ELIOT)', CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Servico] ([servicoID], [nomeServico], [marcaModelo], [observacao], [preco]) VALUES (2, N'LIMPEZA DE CARBORADOR', N'TODAS', N'', CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[Servico] ([servicoID], [nomeServico], [marcaModelo], [observacao], [preco]) VALUES (3, N'REVISÃO', N'HONDA/ BIS 125', N'', CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[Servico] ([servicoID], [nomeServico], [marcaModelo], [observacao], [preco]) VALUES (4, N'REVISÃO', N'HONDA/TRANSALP 700', N'', CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[Servico] ([servicoID], [nomeServico], [marcaModelo], [observacao], [preco]) VALUES (5, N'REVISÃO ', N'YAMARHA/ XT 660', N'', CAST(200.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Servico] OFF
ALTER TABLE [dbo].[ItemProduto]  WITH CHECK ADD  CONSTRAINT [FK_ItemProduto_Produto] FOREIGN KEY([produtoID])
REFERENCES [dbo].[Produto] ([produtoID])
GO
ALTER TABLE [dbo].[ItemProduto] CHECK CONSTRAINT [FK_ItemProduto_Produto]
GO
ALTER TABLE [dbo].[ItemServico]  WITH CHECK ADD  CONSTRAINT [FK_ItemServico_Servico] FOREIGN KEY([servicoID])
REFERENCES [dbo].[Servico] ([servicoID])
GO
ALTER TABLE [dbo].[ItemServico] CHECK CONSTRAINT [FK_ItemServico_Servico]
GO
ALTER TABLE [dbo].[OrdemServico]  WITH CHECK ADD  CONSTRAINT [FK_OrdemServico_Cliente] FOREIGN KEY([clienteID])
REFERENCES [dbo].[Cliente] ([clienteID])
GO
ALTER TABLE [dbo].[OrdemServico] CHECK CONSTRAINT [FK_OrdemServico_Cliente]
GO
ALTER TABLE [dbo].[OrdemServico]  WITH CHECK ADD  CONSTRAINT [FK_OrdemServico_Funcionario] FOREIGN KEY([funcionarioID])
REFERENCES [dbo].[Funcionario] ([funcionarioID])
GO
ALTER TABLE [dbo].[OrdemServico] CHECK CONSTRAINT [FK_OrdemServico_Funcionario]
GO
ALTER TABLE [dbo].[OrdemServico]  WITH CHECK ADD  CONSTRAINT [FK_OrdemServico_ItemProduto] FOREIGN KEY([itemProdutoID])
REFERENCES [dbo].[ItemProduto] ([itemProdutoID])
GO
ALTER TABLE [dbo].[OrdemServico] CHECK CONSTRAINT [FK_OrdemServico_ItemProduto]
GO
ALTER TABLE [dbo].[OrdemServico]  WITH CHECK ADD  CONSTRAINT [FK_OrdemServico_ItemServico] FOREIGN KEY([itemServicoID])
REFERENCES [dbo].[ItemServico] ([itemServicoID])
GO
ALTER TABLE [dbo].[OrdemServico] CHECK CONSTRAINT [FK_OrdemServico_ItemServico]
GO
ALTER TABLE [dbo].[OrdemServico]  WITH CHECK ADD  CONSTRAINT [FK_OrdemServico_Moto] FOREIGN KEY([motoID])
REFERENCES [dbo].[Moto] ([motoID])
GO
ALTER TABLE [dbo].[OrdemServico] CHECK CONSTRAINT [FK_OrdemServico_Moto]
GO
USE [master]
GO
ALTER DATABASE [SICSEP] SET  READ_WRITE 
GO
