-- Usando a base de dados curso , usando a tabela senso --
-- Criar uma função para contar número das cidades por estado --
USE curso;
DELIMITER //
CREATE FUNCTION fn_cidades (p_uf VARCHAR (2),p_ano int)
returns INT
  BEGIN 
    DECLARE qtd INT;
    SELECT count(*) INTO qtd FROM senso WHERE cod_uf=p_uf and ano=p_ano;
    return qtd;
    end 
    //
DELIMITER //

-- Invocando a função --  Obs: sem o índice, a consulta levaria muito tempo para retornar, para resolver é necessário criar um índice:
create index ix_senso1 on senso(cod_uf,ano);

SELECT DISTINCT estado, fn_cidades(cod_uf,2014) FROM senso
WHERE ano='2014'

+---------------------+-------------------------+
| estado              | fn_cidades(cod_uf,2014) |
+---------------------+-------------------------+
| Rondônia            |                      52 |
| Acre                |                      22 |
| Amazonas            |                      62 |
| Roraima             |                      15 |
| Pará                |                     144 |
| Amapá               |                      16 |
| Tocantins           |                     139 |
| Maranhão            |                     217 |
| Piauí               |                     224 |
| Ceará               |                     184 |
| Rio Grande do Norte |                     167 |
| Paraíba             |                     223 |
| Pernambuco          |                     185 |
| Alagoas             |                     102 |
| Sergipe             |                      75 |
| Bahia               |                     417 |
| Minas Gerais        |                     853 |
| Espírito Santo      |                      78 |
| Rio de Janeiro      |                      92 |
| São Paulo           |                     645 |
| Paraná              |                     399 |
| Santa Catarina      |                     295 |
| Rio Grande do Sul   |                     497 |
| Mato Grosso do Sul  |                      79 |
| Mato Grosso         |                     141 |
| Goiás               |                     246 |
| Distrito Federal    |                       1 |
+---------------------+-------------------------+
27 rows in set (1.34 sec)



