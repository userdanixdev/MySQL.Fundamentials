-- Usando o database Sakila , padrão do MySQL , para criarmos mais funções --
-- Função para saber a quantidade de filmes feito por um ator --
DELIMITER //
CREATE FUNCTION fn_filmes_actor (id_actor int)
returns int
begin
  declare qtd int;
select count(*) into qtd from film_actor where actor_id=id_actor;
return qtd;
end;
//
-- Invocando a função --
select fn_filmes_actor(); -- Escolher o id do ator para saber quantos filmes ele fez, porém a consulta tem por base somente o ID

select fn_filmes_actor(4);
+--------------------+
| fn_filmes_actor(4) |
+--------------------+
|                 22 |
+--------------------+
1 row in set (0.01 sec)

