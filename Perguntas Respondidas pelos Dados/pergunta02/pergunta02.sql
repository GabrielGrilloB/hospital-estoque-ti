/* Pergunta 2: Qual setor mais consome suprimentos de impressão?

Considerações:
 Apenas movimentações do tipo 'Saída' são consideradas
 Inclui toners e cilindros
*/

SELECT 
    Setor,
    SUM(Quantidade) AS TotalSaidas
FROM vw_movimentacoes
WHERE TipoMovimentacao = 'Saída'
GROUP BY Setor
ORDER BY TotalSaidas DESC;