FROM python:3.13.5-alpine3.22

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos de dependências
COPY requirements.txt .

# Instala as dependências
RUN pip install --no-cache-dir -r requirements.txt

# Copia o restante da aplicação
COPY . .

# Expõe a porta (ajuste conforme sua aplicação)
EXPOSE 8000

# Comando para rodar a aplicação (ajuste conforme necessário)
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]