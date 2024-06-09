-- Criando uma procedure de exemplo: INOUT
delimiter //
CREATE PROCEDURE proc_aumento(inout valor decimal (10,2),
                              taxa decimal(10,2));
begin 
  set valor = valor+valor*taxa/100
end //
delimiter ;
-- Variáveis que recebem pregfixo INOUT recebem um valor e retornam outro --
-- Criando uma variável --

set @valor=50.00;
-- chamando a procedure --
call proc_aumento(@valor,25.00)
select @valor;
+--------+
| @valor |
+--------+
|  62.50 |
+--------+
1 row in set (0.00 sec)
-- Ocorre que a procedure 'proc_aumento' transforma a variável com o aumento desejável. A variável de execução 'taxa' é o aumento.



