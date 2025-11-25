% motor.pl
:- dynamic resposta/2.

% Limpa todas as respostas armazenadas
limpar_respostas :-
    retractall(resposta(_, _)).

% Pergunta ao usuário e valida a resposta
perguntar(Pergunta, Opcoes, Resposta) :-
    format("~w~nOpcoes: ~w~n> ", [Pergunta, Opcoes]),
    read(UserInput),
    (   member(UserInput, Opcoes)
    ->  Resposta = UserInput,
        asserta(resposta(Pergunta, Resposta))
    ;   writeln("Opcao invalida, tente novamente."),
        perguntar(Pergunta, Opcoes, Resposta)
    ).
