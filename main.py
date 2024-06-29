from datetime import date

tarefa = {}

def criar_tarefa(tarefa):
    infos = []
    nome_tarefa = input("Qual o nome da tarefa?")
    importancia = int(input("De 1 a 5, qual a importancia dessa tarefa? (1 para fraco, 5 mais forte)"))

    data_atual = date.today()
    data_formatada = data_atual.strftime('%d/%m/%Y')
    print(data_formatada)
    data_inicio = input("Quando essa tarefa iniciou?")
    data_final = input("Quando essa tarefa terminara?")

    infos.append(nome_tarefa)

    print(tarefa)


def ler_tarefa(tarefa):
    print(tarefa)

print("Bem vindo(a), o que deseja fazer?\n")
escolha = int(input("1-Criar tarefa, 2- Ler tarefa\n"))

if (escolha == 1):
    criar_tarefa(tarefa)
elif (escolha == 2):
    ler_tarefa()