from pyswip import Prolog
import os
from gemini_api import consultar_gemini  # função que você já tem

# Caminho para os arquivos Prolog
prolog = Prolog()
prolog.consult("base_viagem.pl")
prolog.consult("motor.pl")

def executar_sistema():
    print("=== SISTEMA ESPECIALISTA DE VIAGENS ===")
    
    clima = input("Qual clima prefere? [quente, frio, neutro]: ")
    orcamento = input("Qual orçamento? [baixo, medio, alto]: ")
    tipo = input("Prefere praia, montanha ou cidade? [praia, montanha, cidade]: ")
    duracao = input("Qual duração da viagem? [curta, longa]: ")
    
    query = f"destino({clima}, {orcamento}, {tipo}, {duracao}, Destino)"
    
    resultados = list(prolog.query(query))
    if resultados:
        destino = resultados[0]['Destino']
        print(f"Destino recomendado: {destino}")
        print("\n== Consultando IA (Gemini)... ==")
        descricao = consultar_gemini(destino)
        print(descricao)
    else:
        print("Não foi possível determinar um destino.")

if __name__ == "__main__":
    executar_sistema()
