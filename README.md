<div align="center">

# Controlador FPGA – Semáforo com Prioridade de Pedestre 🚦🚸

![UFS](https://img.shields.io/badge/Universidade_Federal_de_Sergipe-UFS-005CA9?style=for-the-badge&logo=unacademy&logoColor=white)
![CoreTech](https://img.shields.io/badge/Liga-Hardware_&_Robótica-orange?style=for-the-badge)



#### Este projeto foi desenvolvido como conclusão do trainee da **Liga de Hardware e Robótica da UFS** — **CoreTech®**

**Proposta:**
Implementar, em FPGA, um controlador de semáforo que gerencia um cruzamento simples, priorizando a travessia de pedestres quando botão for pressionado. Arquitetura baseada em máquina de estados implementada em Verilog.

</div>
­

## 👥 Equipe

*Eduardo Souza ([EdmSouza](https://github.com/EdmSouza))*  ㅤ ­  **|**  ­  *Gustavo Gomes ([Gustavo0022](https://github.com/Gustavo0022))*  ­  **|**  ­  *Lucas Santana ([Lucas Leal](https://github.com/LucaskaSL))* <br>
*Mateus Aranha ([matt-aranha](https://github.com/matt-aranha))*  ­  **|**  ­  *Paulo Medeiros ([PauloBaja](https://github.com/PauloBaja))*


---


## 🧮 Concepção & Planejamento

A fim de solucionar o ***longo tempo de espera descoordenado entre semáforos***, foi planejado um sistema *on-demand* — acionado por botão — que prioriza o fluxo contínuo do trânsito, o interrompendo após certo tempo para uma via, ou quando há pedestres (Esquemático abaixo).

Os carros na horizontal permanecem na mesma via, enquanto os da vertical, irão realizar uma curva 90° à direita. Dessa forma, os semáforos para veículos nessas duas vias permaneçam necessariamente em estados diferentes, para que seja coordenado a travessia dos transeuntes.

De maneira análoga, para cada semáforo veicular, haverá um semáforo de pedestres associado em um estado oposto. Foram estabelecidos um ***tempo de 15 segundos como suficiente para realizar a travessia***. Nos 5 segundos finais, a luz verde do pedestre irá entrar em um ***estado de pisca para alertar o transeunte sobre o tempo restante.***

Do mesmo modo, 5 segundos após o botão solicitar a travessia, haverá ***5 segundos de sinal amarelo alertando aos motoristas da parada.*** Assim se garante uma margem segura o suficiente capaz de evitar-se acidentes.

![Imagem 1](docs/images/Esquematico.png)


­

### A Lógica de Controle:

Antes da implementação direta do projeto, analisou-se as diferentes possibilidades de uso de uma ***`placa de controle FPGA Cyclone II`.*** Desse processo de abstração, foi elaborada a seguinte máquina de estados para cada conjunto de semáforos (1x Veicular + 1x Pedestre):

![Imagem 2](docs/images/Maquina_de_Estados.png)

­

### Elaboração do projeto:

Nesse contexto, foi elaborado o código — através da linguagem de descrição ***`Verilog`*** — utilizando o Nível de Abstração Comportamental ***`(Behavioral Level)`*** que descreve a Máquina de Estados aboradada na imagem acima.


---

## 🛠️ Desenvolvimento & Integração

**O Hardware:** Ao utilizar um chip de lógica programável ***— FPGA Cyclone II (ep2c35f672c6) —***, nota-se que há um poder computacional muito superior a grande parte dos microcontroladores do mercado. Entretanto, existem uma série de dificuldades e complexidade intrinsecamente associada ao uso desse componente, **principalmente no uso das GPIO (pinagens programáveis).**

Devido ao design mais flexível, é necessário um **cuidado maior com o controle de saída de tensão e corrente de cada pino do chip.** Portanto, faz-se crucial a necessidade de unidades de ***transistores***, que atuam no controle de potência para funcionamento ideal do sistema, evitando danos ao chip.

---

## 📑 Instruções

O projeto foi confeccionado de forma que, não seja necessário nenhuma documentação verborrágica para entender a capacidade e funcionamento do projeto.

De forma que possa ser escalonado futuramente, e aplicado em maior escala, dessa forma poderá alcançar mais públicos sem muitos gargalos do entendimento.

Haverá no projeto físico dois pares de semáforos sinalizadores, que contêm um semáforo de pedestre e o veicular associados a um mesmo botão. Intuitivamente, ao ser pressionado, acionará a sequência de eventos descritos no diagrama de estados na figura 2, a qual é finalizada na mesma condição inicial.

---

## 📈 Pontos sensíveis a melhorias

Devido a simplicidade inicial do projeto, desconsiderou-se alguns pontos, como a impossibilidade dos dois semáforos veiculares serem vermelhos simultaneamente, assim como a definição de um tempo muito curto para a travessia hipotética, cujo intuito é puramente lúdico.

---

## 🧾 Lista de materiais

­

| **Materiais Eletrônicos** | **Materiais Artesanais** |
| :--- | :--- |
| • 2x LEDs Vermelhos <br> • 2x LEDs Amarelos <br> • 2x LEDs Verdes <br> • 2x Botões <br> • Jumpers Diversos <br> • FPGA ep2c35f672c6 <br> • 10x resistores de 220 Ohm <br> • 2x Resistores de 1k Ohm | • Placa de isopor 50x50cm <br> • Feltro verde 50x50cm  <br> • EVA's de múltiplas cores  <br> • 6x Esponjas  <br> • Tintas guache de múltiplas cores <br> • Arame de artesanato <br> • Massa Biscuit <br> • Cola Isopor <br> • Canudos Biodegradáveis Grossos |
