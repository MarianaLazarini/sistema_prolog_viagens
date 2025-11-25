import google.generativeai as genai
import sys
import re

# Use a sua chave de API real aqui.
API_KEY = "SUA_CHAVE_AQUI" 
genai.configure(api_key=API_KEY)

def remove_emojis(text):
    emoji_pattern = re.compile("["
                               u"\U0001F600-\U0001F64F"
                               u"\U0001F300-\U0001F5FF"
                               u"\U0001F680-\U0001F6FF"
                               u"\U0001F1E0-\U0001F1FF"
                               "]+", flags=re.UNICODE)
    return emoji_pattern.sub('', text)

def consultar_gemini(destino):
    try:
        sys.stdout.reconfigure(encoding='utf-8')
        sys.stderr.reconfigure(encoding='utf-8')

        # NOVO PROMPT: Pede concisão extrema e para omitir a introdução.
        prompt = (
            f"Responda em português do Brasil. Seja extremamente conciso, sem introdução. "
            f"Omitir qualquer parágrafo introdutório sobre {destino}. "
            f"Comece imediatamente a resposta com o primeiro título. "
            f"Use **títulos em negrito**, e **listas com hífens (-) e quebras de linha** para os detalhes. "
            f"Mantenha a descrição **total abaixo de 150 palavras**. "
            f"Inclua APENAS as seções (muito resumidas): Clima, Dicas de Viagem e Atrações Chave."
        )

        model = genai.GenerativeModel("gemini-2.5-flash")
        resposta = model.generate_content(prompt)

        texto = resposta.text if hasattr(resposta, "text") else str(resposta)
        texto = remove_emojis(texto)
        
        # CORREÇÃO: Remove todos os ** que sobraram do Markdown, limpando o texto.
        texto = texto.replace("**", "") 
        
        return texto

    except Exception as e:
        return "[ERRO IA] " + str(e)

if __name__ == "__main__":
    if len(sys.argv) >= 2:
        destino = sys.argv[1]
        print(consultar_gemini(destino))
    else:
        print("[ERRO] Nenhum destino recebido")
