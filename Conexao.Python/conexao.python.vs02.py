import psycopg2

try:
    # Conexão com o banco de dados PostgreSQL
    conexao = psycopg2.connect(
        dbname="empresa",
        user="analista",
        password="senha123",
        host="localhost",
        port="5432"
    )

    cursor = conexao.cursor()

    # Consulta SQL (comando enviado ao SGBD)
    cursor.execute("SELECT nome, email FROM clientes;")

    # Recebe os dados do banco
    resultados = cursor.fetchall()

    print("\n--- Lista de Clientes ---")
    for nome, email in resultados:
        print(f"Nome: {nome} | Email: {email}")

except psycopg2.Error as erro:
    print("Erro ao acessar o banco de dados:", erro)

finally:
    # Fecha o cursor e a conexão, se existirem
    if 'cursor' in locals():
        cursor.close()
    if 'conexao' in locals():
        conexao.close()

    print("\nConexão encerrada com sucesso.")
