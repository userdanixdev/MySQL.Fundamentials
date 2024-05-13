-- Função date_add adiciona incremento na data a ser manipulada:
  -- date_add(date,INTERVAL expr unit),
---EXEMPLO 01: --
-- Data atual adicionando 2 anos e 4 meses -- 
SELECT curdate()hoje,
  DATE_ADD(curdate(), INTERVAL "2-6" YEAR_MONTH) as acrescimo;
+------------+------------+
| hoje       | acrescimo  |
+------------+------------+
| 2024-05-13 | 2026-11-13 |
+------------+------------+
1 row in set (0.00 sec)
-- Adicionando 2 meses a partir da data atual --
select curdate()hoje, date_add(curdate(), interval "2" month)as acrescimo;
+------------+------------+
| hoje       | acrescimo  |
+------------+------------+
| 2024-05-13 | 2024-07-13 |
+------------+------------+
1 row in set (0.01 sec)
-- Adicionando 3 anos a partir da data atual --
select curdate() as hoje, date_add(curdate(), interval "3" year)as acrescimo;
+------------+------------+
| hoje       | acrescimo  |
+------------+------------+
| 2024-05-13 | 2027-05-13 |
+------------+------------+
1 row in set (0.00 sec)
-- Adicionando 90 dias --
 select curdate()hoje, date_add(curdate(),interval "90" day) as acrescimo;
+------------+------------+
| hoje       | acrescimo  |
+------------+------------+
| 2024-05-13 | 2024-08-11 |
+------------+------------+
1 row in set (0.00 sec)
-- Adicionando 3 horas -- Lembrando que horas tem que chamar a função now():
select now() hoje, date_add(now()),interval "3" hour)as acrescimo;
+---------------------+---------------------+
| hoje                | acrescimo           |
+---------------------+---------------------+
| 2024-05-13 02:05:03 | 2024-05-13 05:05:03 |
+---------------------+---------------------+
1 row in set (0.02 sec)


