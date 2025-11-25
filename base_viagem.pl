%ARQUIVO QUE O MAIN DEVE CONSULTAR
% Sistema especialista que escolhe
% destino com base em: or�amento, clima preferido, tipo de viagem,
% perfil da pessoa
%
% CLIMA: quente, frio, neutro
% OR�AMENTO: baixo, medio, alto
% TIPO: praia, montanha, cidade
% DURA��O: curta, longa

% -------- CLIMA QUENTE --------

% OR�AMENTO BAIXO
destino(quente, baixo, praia, curta, 'Guaruj�').
destino(quente, baixo, praia, longa, 'Ubatuba').
destino(quente, baixo, montanha, curta, 'Serra do Mar').
destino(quente, baixo, montanha, longa, 'Chapada dos Veadeiros').
destino(quente, baixo, cidade, curta, 'Campinas').
destino(quente, baixo, cidade, longa, 'Goiana').

% OR�AMENTO M�DIO
destino(quente, medio, praia, curta, 'Santos').
destino(quente, medio, praia, longa, 'Rio de Janeiro').
destino(quente, medio, montanha, curta, 'Bonito').
destino(quente, medio, montanha, longa, 'Chapada Diamantina').
destino(quente, medio, cidade, curta, 'Sao Paulo').
destino(quente, medio, cidade, longa, 'Belo Horizonte').

% OR�AMENTO ALTO
destino(quente, alto, praia, curta, 'Buzios').
destino(quente, alto, praia, longa, 'Fernando de Noronha').
destino(quente, alto, montanha, curta, 'Serra da Mantiqueira').
destino(quente, alto, montanha, longa, 'Gramado').
destino(quente, alto, cidade, curta, 'Brasilia').
destino(quente, alto, cidade, longa, 'Salvador').

% -------- CLIMA FRIO --------

% OR�AMENTO BAIXO
destino(frio, baixo, praia, curta, 'Laguna').
destino(frio, baixo, praia, longa, 'Florianopolis').
destino(frio, baixo, montanha, curta, 'Campos do Jord�o').
destino(frio, baixo, montanha, longa, 'S�o Joaquim - SC').
destino(frio, baixo, cidade, curta, 'Curitiba').
destino(frio, baixo, cidade, longa, 'Joinville').

% OR�AMENTO M�DIO
destino(frio, medio, praia, curta, 'Balneario Camboriu').
destino(frio, medio, praia, longa, 'Itajai').
destino(frio, medio, montanha, curta, 'Monte Verde').
destino(frio, medio, montanha, longa, 'Canela').
destino(frio, medio, cidade, curta, 'Porto Alegre').
destino(frio, medio, cidade, longa, 'Sao Paulo').

% OR�AMENTO ALTO
destino(frio, alto, praia, curta, 'Punta del Este').
destino(frio, alto, praia, longa, 'Bariloche').
destino(frio, alto, montanha, curta, 'Gramado').
destino(frio, alto, montanha, longa, 'Patagonia').
destino(frio, alto, cidade, curta, 'Santiago').
destino(frio, alto, cidade, longa, 'Buenos Aires').

% -------- CLIMA NEUTRO --------

% OR�AMENTO BAIXO
destino(neutro, baixo, praia, curta, 'Praia Grande').
destino(neutro, baixo, praia, longa, 'Itanhaem').
destino(neutro, baixo, montanha, curta, 'Atibaia').
destino(neutro, baixo, montanha, longa, 'Pocos de Caldas').
destino(neutro, baixo, cidade, curta, 'Sorocaba').
destino(neutro, baixo, cidade, longa, 'Curitiba').

% OR�AMENTO M�DIO
destino(neutro, medio, praia, curta, 'Ilhabela').
destino(neutro, medio, praia, longa, 'Paraty').
destino(neutro, medio, montanha, curta, 'Serra Negra').
destino(neutro, medio, montanha, longa, 'Campos do Jordao').
destino(neutro, medio, cidade, curta, 'Ribeirao Preto').
destino(neutro, medio, cidade, longa, 'Fortaleza').

% OR�AMENTO ALTO
destino(neutro, alto, praia, curta, 'Angra dos Reis').
destino(neutro, alto, praia, longa, 'Cancun').
destino(neutro, alto, montanha, curta, 'Serra do Rio do Rastro').
destino(neutro, alto, montanha, longa, 'Machu Picchu').
destino(neutro, alto, cidade, curta, 'Recife').
destino(neutro, alto, cidade, longa, 'Dubai').

