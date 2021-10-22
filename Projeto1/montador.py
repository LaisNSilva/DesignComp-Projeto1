'''
GRUPO: QS GRUPO B

LAÍS NASCIMENTO DA SILVA
JOÃO GUILHERME DE CINTRA FREITAS ALMEIDA
WILLIAM AUGUSTO REIS DA SILVA

'''

# DICIONÁRIO: "OPCODE": "CÓDIGO BIN"
Dic_OpCode = {"NOP":  "0000",
              "LDA":  "0001",
              "SOMA": "0010", 
              "SUB":  "0011", 
              "LDI":  "0100", 
              "STA":  "0101", 
              "JMP":  "0110", 
              "JEQ":  "0111", 
              "CEQ":  "1000", 
              "JSR":  "1001", 
              "RET":  "1010"}

# DICIONÁRIO: "REGISTRADOR": "CÓDIGO DO REG"
Dic_Regs = {"R0":"00",
            "R1":"01",
            "R2":"10",
            "R3":"11"}

# DICIONÁRIO: "COMPONENTE", "ENDEREÇO"
Dic_Enderecos = {"DSP0": "100100000",
                 "DSP1": "100100001", 
                 "DSP2": "100100010", 
                 "DSP3": "100100011", 
                 "DSP4": "100100100", 
                 "DSP5": "100100101", 
                 "LED0_7": "100000000", 
                 "LED8": "100000001", 
                 "LED9": "100000010", 
                 "SW8": "101000001", 
                 "SW9": "101000010", 
                 "LIMPA0": "111111111", 
                 "LIMPA1": "111111110", 
                 "LIMPA2": "111111101",
                 "LIMPA3": "111111100",
                 "KEY0": "101100000",
                 "KEY1": "101100001",
                 "KEY2": "101100010",
                 "KEY3": "101100011",
                 "FPGA_RESET": "101100100",
                 "SW0_7" : "101000000"}

'''
Funcao get_lines_label le quais sao as linhas onde tem LABEL

EXEMPLO DE FORMA DO LABEL:
SUPONHA QUE TEMOS AS LINHAS 1, 2 E 3 COM LABEL EM ALGUMA 

1| JMP, R2, .TRES;
2| LDA, R2, MEM[00]; 
3| TRES: STA, R2, MEM[54];

A funcao vai retornar o label e sua linha
{"TRES": 3}

'''
def get_lines_label(name, outfile):
    jumps = {}
    contador_linhas = 0
    novo_arquivo = open(outfile, 'w')
    arquivo = open(name, 'r')

    # Percorre todas as linhas do arquivo
    for l in arquivo:
        contador_caracs = 0
        apagou = False
        for e in l:
            if e == ":":
                jumps[l[:contador_caracs]] = contador_linhas # Coloca no dicionário
                line = l.replace(l[:contador_caracs+2], "") # Apaga o LABEL p/ arquivo .mif
                novo_arquivo.write(line)
                apagou = True
            contador_caracs += 1
        contador_linhas += 1
        if not apagou:
            novo_arquivo.write(l)
    return jumps, arquivo
  
'''
Funcao get_opcode faz a traducao do que tem de opcode a partir do dicionario
e devolve o seu codigo

EXEMPLO
se tem NOP, ele vai no dicionario de OPCODE, encontrar a chave NOP e ver qual
eh seu valor. 

'''
def get_opcode(novo_arquivo, dic_op):
    arquivo = open(novo_arquivo, 'r')
    lista_opcodes = []
    for l in arquivo:
        palavra_binaria = ""
        conta_virgulas = 0
        conta_carac = 0
        # Lê todos os caracteres de cada linha, para pegar o OpCode
        for e in l:
            if e=="," and conta_virgulas == 0: # Se estiver até primeira vírgula (que é onde está o OpCode)
                conta_virgulas += 1
                print(l[:conta_carac])
                valor = dic_op[l[:conta_carac]] # Pega o valor binario
                palavra_binaria += valor
                lista_opcodes.append(palavra_binaria)
            conta_carac += 1 
    return lista_opcodes


'''
FUNÇÃO get_reg vai pegar a parte do meio do código em Assembly
e transformar os R0, R1, R2, e R3 para seus códigos (suas palavras binárias)

EXEMPLO
NOP, R1, $00;

A função conta até a segunda vírgula e pega os dois caracteres de antes, que é o R(number)

'''
def get_reg(novo_arquivo, dic_reg):  
    arquivo = open(novo_arquivo, 'r')
    lista_regs=[]
    for l in arquivo:
        palavra_binaria = ""
        conta_virgulas = 0
        conta_carac = 0
        for e in l:
            if e==",":
                conta_virgulas += 1
                if conta_virgulas == 2:
                    # Pega qual é o registrador e já pega o binário no dicionário
                    valor = dic_reg[l[conta_carac-2:conta_carac]]
                    palavra_binaria += valor
                    lista_regs.append(palavra_binaria)
            conta_carac += 1 
    return lista_regs
  
'''
Assim como as de cima, pega no Assembly e transforma para bits, porém 
a última parte agora, da instrução
Porém, há quatro tipos, exemplos de cada:

Se começa com ponto, é de JMP
JEQ, R1, .UM_QUATRO;

Se tem $, é um número em hexa, utilizado para limites ou algo do tipo
NOP, R1, $00;

Se tem M, é de local da memória
CEQ, R3, MEM[03];

Se não é nenhum de cima, ele pega no de endereço, pois é algum deles
STA, R1, LIMPA0;

'''
def get_inst(novo_arquivo, dic_end, dic_jump):
    arquivo = open(novo_arquivo, 'r')
  
    lista_inst=[]
    #ler cada linha
    for l in arquivo:
        conta_virgulas = 0
        conta_carac = 0
        for e in l:
            if e == ",":
                conta_virgulas += 1
                if conta_virgulas == 2:
                    pos1 = conta_carac + 2
            if e == ";":
                pos2 = conta_carac
            conta_carac += 1 
        inst = l[pos1:pos2]
        print(l)
        
        # Exemplo: JEQ, R1, .UM_QUATRO; 
        if inst[0] == ".":
            valor = dic_jump[inst[1:]]
            number_bin = bin(int(valor))[2:].zfill(9)
            lista_inst.append(str(number_bin))
        
        # Exemplo: NOP, R1, $00;
        elif inst[0] == "$": #binario de 9 bits
            number_hex = inst[1:3]
            number_bin = bin(int(number_hex, 16))[2:].zfill(9)
            lista_inst.append(str(number_bin))
        
        # Exemplo: CEQ, R3, MEM[03];
        elif inst[0] == "M":
            number_dec = int(inst[4:6])
            number_bin = bin(number_dec)[2:].zfill(9)
            lista_inst.append(str(number_bin))
        
        # Exemplo: STA, R1, LIMPA0;
        else:
            valor = dic_end[inst]
            lista_inst.append(valor)
                       
    return lista_inst
  

'''
FUNÇÃO cria_mif:

Ela vai criar o arquivo .mif utilizando tudo que foi realizado pelas outras funções

'''  
def cria_mif(opc, reg, inst, arquivo_mif, addr, data_width):
    
    novo_arquivo = open(arquivo_mif, 'w')

    # Coloca no arquivo as configurações necessárias do .mif
    novo_arquivo.write('DEPTH = {};\n'.format(2**addr))
    novo_arquivo.write('WIDTH = {};\n\n'.format(data_width))
    novo_arquivo.write('ADDRESS_RADIX = DEC;\n')
    novo_arquivo.write('DATA_RADIX = BIN;\n\n')
    novo_arquivo.write('CONTENT\n')
    novo_arquivo.write('BEGIN\n')
      
    # Forma a palavra de bits OPCODE, REGISTRADOR, INSTRUÇÃO
    i = 0
    while i < len(opc):
        print(len(inst))
        palavra = opc[i] + reg[i] + inst[i]
        novo_arquivo.write('{}:   {};\n'.format(i, palavra))
        i += 1
          
    # Como tem que ter menos que 511:
    if i < 511:
        novo_arquivo.write('[{}..{}]:   {};\n'.format(i, 511, ''.zfill(15)))
    novo_arquivo.write('END;\n')
      
    return novo_arquivo
      

def completa(assembly, dic_OpCode, dic_Regs, Dic_Enderecos):
    # Vê as linhas que tem jumps, guarda e tira
    Dic_jumps, novo = get_lines_label(assembly, "assembly_novo.txt")
    
    # Faz a lista de OpCodes
    opc = get_opcode("assembly_novo.txt", dic_OpCode)
    
    # Faz lista de registradores
    reg = get_reg("assembly_novo.txt", dic_Regs)
    
    # Pega os endereços
    inst = get_inst("assembly_novo.txt", Dic_Enderecos, Dic_jumps)
    
    # Cria o arquivo mif
    mif = cria_mif(opc, reg, inst, "arquivo.mif", 9, 15)
    
    
'''
Simplesmente a chamada da função principal
'''
completa("assembly.txt", Dic_OpCode, Dic_Regs, Dic_Enderecos)