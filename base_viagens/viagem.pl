%Sistema especialista que escolhe destino com base em:
%-orçamento
%-clima preferido
%-tipo de viagem
%-perfil da pessoa

destino(rio_de_janeiro) :-
    pergunta("Você prefere clima quente"),
    pergunta("Seu orçamento é medio"),
    pergunta("Gosta de praia"),
    pergunta("Quer uma viagem curta").

destino(gramado) :-
    pergunta("Você prefere clima frio"),
    pergunta("Seu orçamento é medio"),
    pergunta("Gosta de gastronomia"),
    pergunta("Quer uma viagem tranquila").

destino(fortaleza) :-
    pergunta("Você prefere clima quente"),
    pergunta("Seu orçamento é alto"),
    pergunta("Ama praias e passeios"),
    pergunta("Vai viajar em família").

destino(sao_paulo) :-
    pergunta("Você prefere clima neutro"),
    pergunta("Seu orçamento é baixo"),
    pergunta("Gosta de vida urbana"),
    pergunta("Gosta de museus e centros culturais").

destino(foz_do_iguacu) :-
    pergunta("Você gosta de natureza"),
    pergunta("Orçamento medio"),
    pergunta("Quer experiência única"),
    pergunta("Gosta de turismo ecológico").
