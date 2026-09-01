# Sistema de Controle de Estoque TI - Hospital

# Sobre o Projeto
Sistema desenvolvido para modernizar o controle de estoque de toners e cilindros do setor de TI hospitalar, substituindo planilhas Excel por uma solução integrada com banco de dados e dashboard interativo.

# Problema
O estoque era controlado via Excel, o que gerava dificuldade em acompanhar movimentações em tempo real, funcionários esqueciam de registrar movimentações e falta de padronização nos dados.

# Conjunto de Dados
Os dados utilizados nesse projeto estão distribuídos em 5 tabelas, organizados por nome de funcionários, setores do hospital, toners e cilindros, e uma tabela principal de movimentações.

O modelo lógico do banco de dados é apresentado no seguinte formato:

[DIAGRAMA.pdf](https://github.com/user-attachments/files/31714220/DIAGRAMA.pdf)


# Utilização

O banco de dados é utilizado de duas formas:

# Dashoard interativo

No dashboard encontram-se as principais métricas e indicadores que permitem uma compreensão da rotatividade e necessidade de toners e cilindros por setor e mês.

<img width="1312" height="738" alt="image" src="https://github.com/user-attachments/assets/697f4e54-5486-4276-8dc0-1c79d256212a" />
<img width="1315" height="740" alt="image" src="https://github.com/user-attachments/assets/a15ecb06-02ec-4df4-8d7c-e22f2896de47" />

# Sistema de estoque
Interface web desenvolvida em Python com Streamlit e Pandas, integrada ao banco de dados SQL Server, centralizando o gerenciamento do setor de TI hospitalar em um único lugar.

<img width="1920" height="916" alt="image" src="https://github.com/user-attachments/assets/b190e765-1978-4147-bf1e-82af7ee7f8b8" />
<img width="1920" height="860" alt="image" src="https://github.com/user-attachments/assets/95bb190e-47ce-419c-a6fa-3aa72f6196cd" />
<img width="1920" height="914" alt="image" src="https://github.com/user-attachments/assets/a34bf1a7-a38f-4b40-9291-962a6c6592ff" />
<img width="1920" height="677" alt="image" src="https://github.com/user-attachments/assets/7cab609d-0fdc-46b5-bcb6-31fad0e9a98f" />
<img width="1920" height="908" alt="image" src="https://github.com/user-attachments/assets/57a2ead9-c076-4f4b-86ea-f4573d76d4db" />
<img width="1920" height="900" alt="image" src="https://github.com/user-attachments/assets/2cffe34e-de1b-47ed-88bb-0f5dd0fc77ba" />

# Ferramentas
• SQL: As consultas foram estruturadas utilizando o SQL SERVER.
• Python: Para o desenvolvimento do sistema utilizando Pandas e Streamlit, e realizar a conexão com o SQL SERVER.
• Microsoft Power BI: O dashboard do projeto foi construído com o uso do software, com a necessidade da criação de algumas funções em DAX para a construção das visualizações.
• Microsoft PowerPoint: Construção do layout visual da apresentação.

# Perguntas Respondidas pelos Dados
1. Qual toner é mais consumido pelo hospital?
O TN780/750 lidera com 104 saídas, representando 35,37% do consumo total. Junto com o TNB021 (45 saídas) e TN3492 (51 saídas), os três modelos somam mais de 68% de todo o consumo.

2. Qual setor mais consome suprimentos de impressão?
O Centro Cirúrgico é o setor com maior consumo, tanto de toners quanto de cilindros, com aproximadamente 38 saídas em cada categoria — reflexo da alta demanda de documentação clínica.

3. Qual a média mensal de saídas de toners e cilindros?
O hospital retira em média 6,89 toners e 3,03 cilindros por mês, totalizando aproximadamente 10 suprimentos mensais.

4. Como evoluiu o consumo ao longo do tempo?
O consumo de toners apresentou crescimento consistente, com pico de 21 saídas em agosto de 2026, indicando aumento da demanda operacional do hospital no período.

5. Qual o estoque atual de suprimentos?
O hospital possui saldo de 28 toners e 18 cilindros. O TNB021 tem o maior estoque de toners (7 unidades), enquanto o DR 750/720 lidera entre os cilindros (6 unidades).
