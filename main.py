from datetime import date
import os #Para limpar terminal

tarefa = {}
responsavel = {}

def criar_responsavel(responsavel):
    cpf = input("Digite o seu CPF (sem acentos ou caracteres especiais) ")
    #fazer verificação do cpf
    nome_responsavel = input("Nome do novo responsavel ")
    email = input("Digite o email ")
    dados = []
    #fazer verificação da data
    while cpf in responsavel.keys():
        escolha = int(input("Responsavel já cadastrado\nO que deseja fazer?\n1-Sair, 2-Cadastrar com outro CPF "))
        if(escolha == 1):
            break
        elif(escolha == 2):
            cpf = input("Digite o seu CPF (sem acentos ou caracteres especiais) ")
        else:
            print("Escolha invalida")
    dados.append(nome_responsavel)
    dados.append(email)
    responsavel[cpf] = dados
    os.system("cls")

def criar_tarefa(tarefa):
    infos = []
    nome_tarefa = input("Qual o nome da tarefa? ")
    importancia = int(input("De 1 a 5, qual a importancia dessa tarefa? (1 para fraco, 5 mais forte) "))
    responsavel = input("Quem sera o responsavel pela tarefa? ")

    data_atual = date.today()
    data_criacao = data_atual.strftime('%d/%m/%Y')
    print(data_criacao)

    infos.append(nome_tarefa)
    infos.append(importancia)

    print(infos)
    os.system("cls")

def ler_tarefa(tarefa):
    print(tarefa)
    os.system("cls")

def ler_responsavel(responsavel):
    print(responsavel)
    os.system("cls")

while True:
    print("Bem vindo(a), o que deseja fazer?\n")
    escolha = int(input("1-Criar tarefa, 2-Ler tarefa, 5-Adicionar contribuidor\n0-Sair\n"))

    if (escolha == 1):
        criar_tarefa(tarefa)
    elif (escolha == 2):
        ler_tarefa()
    elif (escolha == 5):
        criar_responsavel(responsavel)
    elif (escolha == 6):
        ler_responsavel(responsavel)
    elif (escolha == 0):
        print("Finalizado")
        os.system("cls")
        break