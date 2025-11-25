from flask import Flask, render_template, request
from pyswip import Prolog
from gemini_api import consultar_gemini

app = Flask(__name__)

# Configuração e consulta dos arquivos Prolog
try:
    prolog = Prolog()
    prolog.consult("base_viagem.pl")
    prolog.consult("motor.pl") 
except Exception as e:
    print(f"ERRO CRÍTICO: Não foi possível inicializar o Prolog. {e}")
    # O aplicativo pode não funcionar sem isso.

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        # 1. Coleta os dados do formulário
        clima = request.form.get('clima')
        orcamento = request.form.get('orcamento')
        tipo = request.form.get('tipo')
        duracao = request.form.get('duracao')

        destino = None
        descricao = None
        erro_prolog = None

        try:
            # 2. Constrói e executa a consulta Prolog
            if all([clima, orcamento, tipo, duracao]):
                # A query Prolog usa aspas simples para os átomos
                query = f"destino('{clima}', '{orcamento}', '{tipo}', '{duracao}', Destino)"
                
                resultados = list(prolog.query(query))
                
                if resultados:
                    destino = resultados[0]['Destino']
                    
                    # 3. Consulta a IA para a descrição
                    descricao = consultar_gemini(destino)
                else:
                    erro_prolog = "Não foi possível determinar um destino. Tente mudar as opções."
            else:
                erro_prolog = "Por favor, selecione todas as opções."

        except Exception as e:
            erro_prolog = f"Erro ao processar a requisição: {e}"

        # 4. Renderiza a página com os resultados ou erros
        return render_template('index.html', 
                               destino_sugerido=destino, 
                               descricao_gemini=descricao, 
                               erro=erro_prolog)

    # 5. Primeira visita (GET request)
    return render_template('index.html', destino_sugerido=None)

if __name__ == '__main__':
    # 'debug=True' é ótimo para desenvolvimento, mas remova em produção.
    app.run(debug=True)