-- Utilizando o Case/When com a função de agregação Count; -- 
-- A sintaxe é a mesmo porém usando qualquer outro tipo de agregação devemos repetir a operação usando o GROUP BY:
-- Senso assim, será mostrada a quantidade de países classificadas por população demográfica:
SELECT count(*) qtd_paises,
case when a.population < 1000000 then 'pop < 1M'
     when a.population >= 1000000 and a.population < 5000000 then 'pop>=1M e < 50M'
     when a.population >= 100000000 then 'pop<=100M' end pop_demograf
FROM country a
group by case when a.population < 1000000 then 'pop<1M'
              when a.population >= 1000000 and a.population < 5000000 then 'pop>=1M e < 5M'
              when a.population >= 100000000 then 'pop>=100M' end 

-- Infelizmente o terminal não conseque mostrar na tela -- 



