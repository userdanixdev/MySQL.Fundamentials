-- Outro exemplo do uso de case_when com a base de dados Sakila:
USE sakila;
SELECT COUNT(*)AS Movies,
	case when a.length < 60 then 'Curta Metragem'
		  when a.length < 90 then 'Média Metragem'
		  when a.length >=90 then 'Longa Metragem' END Metragem
		  FROM film a
		  GROUP BY case when a.length<60 then 'Curta Metragem'
		  					 when a.length<90 then 'Média Metragem'
		  					 when a.length>=90 then 'Longa Metragem' end
