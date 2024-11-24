import dbf

def criar_arquivo_dbf(nome_arquivo):
    # Define a estrutura do banco de dados
    tabela = dbf.Table(nome_arquivo, 'ID N(4,0); NOME C(50); IDADE N(3,0); ENDERECO C(100)')
    tabela.open(dbf.create)

def adicionar_pessoa(tabela, id, nome, idade, endereco):
    with dbf.Table(tabela) as dbf_tabela:
        dbf_tabela.append((id, nome, idade, endereco))

def main():
    nome_arquivo = 'cadastro.dbf'
    criar_arquivo_dbf(nome_arquivo)

    while True:
        print("Digite os dados da pessoa:")
        id = int(input("ID: "))
        nome = input("Nome: ")
        idade = int(input("Idade: "))
        endereco = input("Endereço: ")

        adicionar_pessoa(nome_arquivo, id, nome, idade, endereco)

        continuar = input("Deseja continuar? (S/N): ").strip().upper()
        if continuar != 'S':
            break

    print(f"Dados salvos no arquivo {nome_arquivo}.")

if __name__ == "__main__":
    main()
