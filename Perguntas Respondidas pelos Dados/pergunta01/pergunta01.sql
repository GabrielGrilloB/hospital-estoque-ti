/*
Pergunta 1:
Qual toner é mais consumido pelo hospital?

Considerações:
 * Apenas movimentações do tipo 'Saída' são consideradas
 * Entradas (reposição de estoque) são excluídas da análise
 * Ordenado do maior para o menor consumo
*/

select
   toner,
   SUM(quantidade) as Total
from vw_movimentacoes
where tipomovimentacao = 'Saída'
group by toner
order by Total desc;

/* 
Bônus:
Média total de saída dos toners
*/

select
   toner,
   cast(sum(quantidade) * 100.0/ (select sum(quantidade)
                                  from vw_movimentacoes 
                                  where tipomovimentacao = 'Saída')
   as decimal(5,2)) as percentual 
from vw_movimentacoes
where tipomovimentacao = 'Saída'
group by toner
order by percentual desc;
