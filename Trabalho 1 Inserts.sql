/*LINK GITHUB: https://github.com/joaojhgs/bdLojaVendas */
use bdLojaVendas;

DELETE FROM Produtos_Venda;
DELETE FROM VENDAS;
DELETE FROM EnderecoFuncionarios;
DELETE FROM EnderecoClientes;
DELETE FROM ADM;
DELETE FROM VENDEDORES;
DELETE FROM CLIENTES;
DELETE FROM PRODUTOS;
DELETE FROM CuponsAplicaveis;
DELETE FROM CUPONS;
DELETE FROM MARCAS;
DELETE FROM FUNCIONARIOS;
DELETE FROM FILIAIS;

/*INSERT DE FILIAIS*/
INSERT INTO FILIAIS (ID, CapMax, Local_N)
VALUES (1, 200, 'Sede Campo Mourão');
INSERT INTO FILIAIS (ID, CapMax, Local_N)
VALUES (2, 15, 'Filial Mamborê');
INSERT INTO FILIAIS (ID, CapMax, Local_N)
VALUES (3, 100, 'Filial Umuarama');
INSERT INTO FILIAIS (ID, CapMax, Local_N)
VALUES (4, 10, 'Filial Lovat');
INSERT INTO FILIAIS (ID, CapMax, Local_N)
VALUES (5, 25, 'Filial Ponta Grossa');
INSERT INTO FILIAIS (ID, CapMax, Local_N)
VALUES (6, 150, 'Filial Maringa');
INSERT INTO FILIAIS (ID, CapMax, Local_N)
VALUES (7, 200, 'Filial Curitiba');
INSERT INTO FILIAIS (ID, CapMax, Local_N)
VALUES (8, 5, 'Filial Pinhais');
INSERT INTO FILIAIS (ID, CapMax, Local_N)
VALUES (9, 15, 'Filial Peabiru');
INSERT INTO FILIAIS (ID, CapMax, Local_N)
VALUES (10, 250, 'Filial São Paulo');
SELECT * FROM FILIAIS;

/*INSERT DE FUNCIONARIOS*/
/*CPF e CTPS agora são varchar ao invés de int (devido à limitação de tamanho)*/
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('40449597067', 'Tatiane Jennifer Analu Viana', '91852098123', 1, 1);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('47499310043', 'Nicole Milena Barbosa', '05770427589', 2, 6);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('16683570035', 'Rosângela Rafaela Giovanna Porto', '46938292836', 3, 4);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('06268616081', 'Liz Isadora Rocha', '52033885560', 4, 6);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('16997322050', 'Enzo Diego Paulo Ramos', '03830339056', 5, 1);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('12768937010', 'Leandro Renato Nascimento', '80894745334', 6, 3);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('65722999024', 'Larissa Elaine da Mota', '86128643266', 7, 8);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('32453803050', 'Antonella Stefany Viana', '09227704065', 8, 3);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('61414985070', 'Felipe Iago Gonçalves', '73499644668', 9, 8);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('02052068082', 'Brenda Maya Souza', '28009583505', 10, 4);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('76253443550', 'Severino Yago Julio Barros', '92989771651', 11, 2);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('37108072394', 'Nair Mariana Ribeiro', '79993055407', 12, 6);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('70641813120', 'Fátima Gabrielly Marli Ramos', '19989494277', 13, 1);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('15384412259', 'Carlos Eduardo Hugo Carvalho', '62995501806', 14, 3);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('77847279843', 'Raul Tiago Fogaça', '96994815068', 15, 1);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('98099688503', 'Mariah Raquel Rafaela da Luz', '96999663861', 16, 5);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('10600604772', 'Marina Silvana Jesus', '51993866311', 17, 7);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('03832919171', 'Sebastiana Hadassa da Conceição', '27997380223', 18, 8);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('98662077650', 'Maria Débora Mariana Jesus', '91987003818', 19, 9);
INSERT INTO FUNCIONARIOS (CPF, NOME, CTPS, ID, IdFilial)
VALUES ('46922007581', 'Rita Rosângela Stefany Corte Real', '67996046643', 20, 10);
SELECT * FROM FUNCIONARIOS;

/*INSERTS DE ADMS*/
INSERT INTO ADM (SalarioFixo, HorasExtra, Bonus, FuncionarioCPF, FilialID)
VALUES (2250, 5, 153, '40449597067', 1);
INSERT INTO ADM (SalarioFixo, HorasExtra, Bonus, FuncionarioCPF, FilialID)
VALUES (1895, 3, 0, '47499310043', 6);
INSERT INTO ADM (SalarioFixo, HorasExtra, Bonus, FuncionarioCPF, FilialID)
VALUES (2456, 8, 264, '16683570035', 4);
INSERT INTO ADM (SalarioFixo, HorasExtra, Bonus, FuncionarioCPF, FilialID)
VALUES (3371, 3, 183, '06268616081', 6);
INSERT INTO ADM (SalarioFixo, HorasExtra, Bonus, FuncionarioCPF, FilialID)
VALUES (2645, 2, 198, '16997322050', 1);
INSERT INTO ADM (SalarioFixo, HorasExtra, Bonus, FuncionarioCPF, FilialID)
VALUES (4389, 15, 0, '12768937010', 3);
INSERT INTO ADM (SalarioFixo, HorasExtra, Bonus, FuncionarioCPF, FilialID)
VALUES (6815, 12, 15, '65722999024', 8);
INSERT INTO ADM (SalarioFixo, HorasExtra, Bonus, FuncionarioCPF, FilialID)
VALUES (3623, 18, 367, '32453803050', 3);
INSERT INTO ADM (SalarioFixo, HorasExtra, Bonus, FuncionarioCPF, FilialID)
VALUES (2187, 2, 0, '61414985070', 8);
INSERT INTO ADM (SalarioFixo, HorasExtra, Bonus, FuncionarioCPF, FilialID)
VALUES (5831, 16, 546, '02052068082', 4);
SELECT * FROM ADM;

/*INSERTS DE VENDEDORES*/
INSERT INTO VENDEDORES (SalarioBase, comissao, meta, FuncionarioCPF)
VALUES (1350, 5, 8453, '76253443550');
INSERT INTO VENDEDORES (SalarioBase, comissao, meta, FuncionarioCPF)
VALUES (913, 1, 10480, '37108072394');
INSERT INTO VENDEDORES (SalarioBase, comissao, meta, FuncionarioCPF)
VALUES (1472, 8, 2164, '70641813120');
INSERT INTO VENDEDORES (SalarioBase, comissao, meta, FuncionarioCPF)
VALUES (2104, 5, 9413, '15384412259');
INSERT INTO VENDEDORES (SalarioBase, comissao, meta, FuncionarioCPF)
VALUES (1698, 3, 6198, '77847279843');
INSERT INTO VENDEDORES (SalarioBase, comissao, meta, FuncionarioCPF)
VALUES (1234, 9, 13840, '98099688503');
INSERT INTO VENDEDORES (SalarioBase, comissao, meta, FuncionarioCPF)
VALUES (981, 12, 4723, '10600604772');
INSERT INTO VENDEDORES (SalarioBase, comissao, meta, FuncionarioCPF)
VALUES (3164, 18, 3674, '03832919171');
INSERT INTO VENDEDORES (SalarioBase, comissao, meta, FuncionarioCPF)
VALUES (1163, 2, 7564, '98662077650');
INSERT INTO VENDEDORES (SalarioBase, comissao, meta, FuncionarioCPF)
VALUES (1738, 16, 4657, '46922007581');
SELECT * FROM VENDEDORES;

/*INSERT DE CLIENTES*/
INSERT INTO CLIENTES (CPF, Nome, Contato)
VALUES ('08850195125', 'Martin Vinicius da Luz', '63988081147');
INSERT INTO CLIENTES (CPF, Nome, Contato)
VALUES ('39843641809', 'Heloisa Rita Esther Ferreira', '27981124711');
INSERT INTO CLIENTES (CPF, Nome, Contato)
VALUES ('59673664749', 'Esther Regina Silva', '95981934447');
INSERT INTO CLIENTES (CPF, Nome, Contato)
VALUES ('60130408506', 'Bruna Marlene Rocha', '86985302741');
INSERT INTO CLIENTES (CPF, Nome, Contato)
VALUES ('64805938048', 'Rafael Benjamin Henry Mendes', '83997121084');
INSERT INTO CLIENTES (CPF, Nome, Contato)
VALUES ('32137414503', 'Fernando Severino Isaac Barros', '31996095654');
INSERT INTO CLIENTES (CPF, Nome, Contato)
VALUES ('80348465203', 'Regina Antonella Assunção', '79998921237');
INSERT INTO CLIENTES (CPF, Nome, Contato)
VALUES ('49966626468', 'Felipe Enzo Moraes', '11982039050');
INSERT INTO CLIENTES (CPF, Nome, Contato)
VALUES ('87186464335', 'Caroline Rebeca Julia Duarte', '11985686256');
INSERT INTO CLIENTES (CPF, Nome, Contato)
VALUES ('74236220016', 'Kevin Levi Luan Silveira', '27981716783');
SELECT * FROM CLIENTES;

/*INSERTS DE MARCAS*/
INSERT INTO MARCAS (ID, Nome, Contato)
VALUES (1, 'Lupo', '08470959540');
INSERT INTO MARCAS (ID, Nome, Contato)
VALUES (2, 'Lacoste', '80139604176712');
INSERT INTO MARCAS (ID, Nome, Contato)
VALUES (3, 'Pollo', '1460775620');
INSERT INTO MARCAS (ID, Nome, Contato)
VALUES (4, 'Gucci', '997603167344');
INSERT INTO MARCAS (ID, Nome, Contato)
VALUES (5, 'Xiaomi', '51773550217');
INSERT INTO MARCAS (ID, Nome, Contato)
VALUES (6, 'Apple', '141141303086');
INSERT INTO MARCAS (ID, Nome, Contato)
VALUES (7, 'Samsung', '2788660191308');
INSERT INTO MARCAS (ID, Nome, Contato)
VALUES (8, 'Oppo', '2213519299054');
INSERT INTO MARCAS (ID, Nome, Contato)
VALUES (9, 'Supreme', '21105184225');
INSERT INTO MARCAS (ID, Nome, Contato)
VALUES (10, 'Baccardi', '041284376276');
SELECT * FROM MARCAS;

/*INSERTS DE MARCAS*/
INSERT INTO PRODUTOS (ID, Nome, Valor, Desconto, Estoque, MarcaID)
VALUES (1, 'Galaxy S9', 4267, 10, 593, 7);
INSERT INTO PRODUTOS (ID, Nome, Valor, Desconto, Estoque, MarcaID)
VALUES (2, 'Iphone X', 8689, 5, 356, 6);
INSERT INTO PRODUTOS (ID, Nome, Valor, Desconto, Estoque, MarcaID)
VALUES (3, 'MI Airdots', 147, 2, 35, 5);
INSERT INTO PRODUTOS (ID, Nome, Valor, Desconto, Estoque, MarcaID)
VALUES (4, 'Narzo 30', 1549, 14, 15, 8);
INSERT INTO PRODUTOS (ID, Nome, Valor, Desconto, Estoque, MarcaID)
VALUES (5, 'MI Scale 2', 230, 3, 30, 5);
INSERT INTO PRODUTOS (ID, Nome, Valor, Desconto, Estoque, MarcaID)
VALUES (6, 'Camiseta Basica', 986, 0, 2967, 9);
INSERT INTO PRODUTOS (ID, Nome, Valor, Desconto, Estoque, MarcaID)
VALUES (7, 'Tijolo Basico', 689, 30, 1850, 9);
INSERT INTO PRODUTOS (ID, Nome, Valor, Desconto, Estoque, MarcaID)
VALUES (8, 'Torneira Eletrica', 254, 6, 22, 5);
INSERT INTO PRODUTOS (ID, Nome, Valor, Desconto, Estoque, MarcaID)
VALUES (9, 'Sapato de couro', 347, 25, 13, 2);
INSERT INTO PRODUTOS (ID, Nome, Valor, Desconto, Estoque, MarcaID)
VALUES (10, 'Cueca', 45, 0, 1650, 1);
SELECT * FROM PRODUTOS;

/*INSERTS DE CUPONS*/
INSERT INTO CUPONS (ID, Valor, UsoMax)
VALUES (1, 100, 18);
INSERT INTO CUPONS (ID, Valor, UsoMax)
VALUES (2, 50, 40);
INSERT INTO CUPONS (ID, Valor, UsoMax)
VALUES (3, 25, 70);
INSERT INTO CUPONS (ID, Valor, UsoMax)
VALUES (4, 10, 100);
INSERT INTO CUPONS (ID, Valor, UsoMax)
VALUES (5, 140, 15);
INSERT INTO CUPONS (ID, Valor, UsoMax)
VALUES (6, 200, 10);
INSERT INTO CUPONS (ID, Valor, UsoMax)
VALUES (7, 30, 45);
INSERT INTO CUPONS (ID, Valor, UsoMax)
VALUES (8, 45, 58);
INSERT INTO CUPONS (ID, Valor, UsoMax)
VALUES (9, 90, 20);
INSERT INTO CUPONS (ID, Valor, UsoMax)
VALUES (10, 78, 60);
SELECT * FROM CUPONS;

/*INSERT DE CuponsAplicaveis*/
INSERT INTO CuponsAplicaveis (MarcaID, CuponID)
VALUES (1, 2);
INSERT INTO CuponsAplicaveis (MarcaID, CuponID)
VALUES (1, 3);
INSERT INTO CuponsAplicaveis (MarcaID, CuponID)
VALUES (4, 1);
INSERT INTO CuponsAplicaveis (MarcaID, CuponID)
VALUES (1, 4);
INSERT INTO CuponsAplicaveis (MarcaID, CuponID)
VALUES (5, 9);
INSERT INTO CuponsAplicaveis (MarcaID, CuponID)
VALUES (5, 3);
INSERT INTO CuponsAplicaveis (MarcaID, CuponID)
VALUES (8, 10);
INSERT INTO CuponsAplicaveis (MarcaID, CuponID)
VALUES (8, 7);
INSERT INTO CuponsAplicaveis (MarcaID, CuponID)
VALUES (10, 8);
INSERT INTO CuponsAplicaveis (MarcaID, CuponID)
VALUES (6, 4);
SELECT * FROM CuponsAplicaveis;

/*INSERT DE EnderecoClientes*/
INSERT INTO EnderecoClientes (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, ClienteCPF)
VALUES ('Brazil', 'PR', 'Campo Mourão', 'Rua castelo branco', 8435, '94495110', '08850195125');
INSERT INTO EnderecoClientes (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, ClienteCPF)
VALUES ('Brazil', 'PR', 'Londrina', 'Avenida florianopolis', 3464, '78076035', '39843641809');
INSERT INTO EnderecoClientes (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, ClienteCPF)
VALUES ('Brazil', 'PR', 'Maringa', 'Rua duque de caxias', 7861, '49010909', '59673664749');
INSERT INTO EnderecoClientes (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, ClienteCPF)
VALUES ('Brazil', 'PR', 'Sao Paulo', 'Rua Roberto peixoto', 3541, '89680970', '60130408506');
INSERT INTO EnderecoClientes (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, ClienteCPF)
VALUES ('Brazil', 'PR', 'Curitiba', 'Rua alecrim dourado', 4584, '68903119', '64805938048');
INSERT INTO EnderecoClientes (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, ClienteCPF)
VALUES ('Brazil', 'PR', 'Pinhais', 'Rua josé de amaral', 9863, '13902863', '32137414503');
INSERT INTO EnderecoClientes (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, ClienteCPF)
VALUES ('Brazil', 'PR', 'São José', 'Avenida comendador noberto', 1244, '69309160', '80348465203');
INSERT INTO EnderecoClientes (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, ClienteCPF)
VALUES ('Brazil', 'PR', 'Itajai', 'Avenida capitão indio bandeira', 9345, '71505600', '49966626468');
INSERT INTO EnderecoClientes (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, ClienteCPF)
VALUES ('Brazil', 'PR', 'Camburiu', 'Rua josivaldo arana', 5674, '78058396', '87186464335');
INSERT INTO EnderecoClientes (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, ClienteCPF)
VALUES ('Brazil', 'PR', 'Pontal', 'Avenida frei caneca', 130, '24476160', '74236220016');
SELECT * FROM EnderecoClientes;

/*INSERT DE EnderecoFuncionarios*/
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'PR', 'Rio de Janeiro', 'Rua castelo branco', 4567, '94495110', '40449597067');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'PR', 'Maringa', 'Rua alecrim dourado', 3572, '78076035', '47499310043');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'PR', 'Ubatuba', 'Rua salamaleico andrade', 3458, '49010909', '16683570035');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'PR', 'Sao Paulo', 'Avenida padre lendro', 4561, '89680970', '06268616081');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'PR', 'Pinhais', 'Avenida florianopolis', 7854, '68903119', '16997322050');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'PR', 'Buzios', 'Avenida fernando de noronha', 3437, '13902863', '12768937010');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'PR', 'São José', 'Avenida comendador noberto', 6774, '69309160', '65722999024');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'PR', 'Ponta grossa', 'Rua Roberto peixoto', 3859, '71505600', '32453803050');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'PR', 'Ponta del leste', 'Avenida Tancredo Neves', 1256, '78058396', '61414985070');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)

VALUES ('Brazil', 'PR', 'Guarapari', 'Rua Amazonas', 1523, '93224030', '02052068082');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'RO', 'Porto Velho', 'Rua Alexandre Guimarães', 4567, '76804296', '76253443550');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'AM', 'Manaus', 'Rua Pedra Azul', 3572, '69087662', '37108072394');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'AM', 'Manaus', 'Rua Jafé', 3458, '69059592', '70641813120');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'SP', 'Franco da Rocha', 'Rua Fernandópolis', 4561, '07859150', '15384412259');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'AL', 'Maceió', 'Quadra B', 7854, '57086404', '77847279843');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'AM', 'Manaus', 'Rua Rosa Rezende', 3437, '69074730', '98099688503');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'CE', 'Fortaleza', 'Rua da Traíra', 6774, '60835595', '10600604772');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'RJ', 'Niterói', 'Rua Professor Antonio de Souza Queiroz', 3859, '24344101', '03832919171');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'RS', 'Caxias do Sul', 'Rua João Carlos Fonseca', 1256, '95020540', '98662077650');
INSERT INTO EnderecoFuncionarios (PAIS, ESTADO, CIDADE, RuaAv, NUMERO, CEP, FuncionarioCPF)
VALUES ('Brazil', 'BA', 'Feira de Santana', 'Rua Fonte Nova', 1523, '44005412', '46922007581');
SELECT * FROM EnderecoFuncionarios;


/*INSERT DE VENDAS*/
/*O valor total será definido posteriormente, após a definição da relação Produtos_Venda*/
INSERT INTO VENDAS (ID, ValTotal, Data_V, CPFVendedor, CPFCliente)
VALUES (1, 154, 10092021, '76253443550', '08850195125');
INSERT INTO VENDAS (ID, ValTotal, Data_V, CPFVendedor, CPFCliente)
VALUES (2, 433, 15092021, '37108072394', '39843641809');
INSERT INTO VENDAS (ID, ValTotal, Data_V, CPFVendedor, CPFCliente)
VALUES (3, 433, 22082021, '70641813120', '59673664749');
INSERT INTO VENDAS (ID, ValTotal, Data_V, CPFVendedor, CPFCliente)
VALUES (4, 677, 19112021, '15384412259', '60130408506');
INSERT INTO VENDAS (ID, ValTotal, Data_V, CPFVendedor, CPFCliente)
VALUES (5, 489, 04032021, '77847279843', '64805938048');
INSERT INTO VENDAS (ID, ValTotal, Data_V, CPFVendedor, CPFCliente)
VALUES (6, 326, 16092021, '98099688503', '32137414503');
INSERT INTO VENDAS (ID, ValTotal, Data_V, CPFVendedor, CPFCliente)
VALUES (7, 430, 21122020, '10600604772', '80348465203');
INSERT INTO VENDAS (ID, ValTotal, Data_V, CPFVendedor, CPFCliente)
VALUES (8, 230, 26092020, '03832919171', '49966626468');
INSERT INTO VENDAS (ID, ValTotal, Data_V, CPFVendedor, CPFCliente)
VALUES (9, 140, 13102021, '98662077650', '87186464335');
INSERT INTO VENDAS (ID, ValTotal, Data_V, CPFVendedor, CPFCliente)
VALUES (10, 1450, 24062021, '46922007581', '74236220016');
SELECT * FROM VENDAS;

/*INSERT DE Produtos_Venda*/
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (8, 1);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (5, 2);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (4, 3);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (8, 4);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (2, 5);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (6, 6);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (2, 7);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (1, 8);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (5, 9);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (8, 10);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (3, 1);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (7, 2);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (10, 3);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (4, 4);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (1, 5);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (3, 6);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (2, 7);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (1, 8);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (5, 9);
INSERT INTO Produtos_Venda (ProdutoID, VendaID)
VALUES (8, 10);
SELECT * FROM Produtos_Venda;