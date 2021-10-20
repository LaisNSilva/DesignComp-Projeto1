import logging
import argparse
import sys

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
Dic_Regs = {"R0":"00",
            "R1":"01",
            "R2":"10",
            "R3":"11"}
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
                 "KEY0": "101100000",
                 "KEY1": "101100001",
                 "KEY2": "101100010",
                 "FPGA_RESET": "101100100",
                 }



# Ler arquivo
# Ler cada linha do arquivo
# para cada linha tem que montar a instrução (00001111sss)
#antes da primeira vrigula, vai ter sigla, procura no dicionario de opcode e coloca a plavar binaria de acordo
# porocura endreço de resgistrador
# procura valor - se for mem, dsp, led, sw, limpas

# Le todos as linhas de um arquvio
def get_lines_label(name, outfile):
    
    # le aquivo todo
    Dic_jumps={}
    contador_linhas=0
    novo_arquivo = open(outfile, 'w')
    arquivo = open(name, 'r')
    for l in arquivo:
        contador_caracs=0
        apagou=False
        for e in l:
            if e==":":
                Dic_jumps[l[:contador_caracs]]=contador_linhas
                line = l.replace(l[:contador_caracs+2], "")
                novo_arquivo.write(line)
                apagou=True
            contador_caracs+=1
        contador_linhas+=1
        if apagou==False:
            novo_arquivo.write(l)
    
    return Dic_jumps, arquivo
  

def get_opcode(novo_arquivo, dic_op):
    arquivo = open(novo_arquivo, 'r')
    lista_opcodes=[]
    #ler cada linha
    for l in arquivo:
        palavra_binaria=""
        conta_virgulas=0
        conta_carac=0
        #pegar o OpCode
        for e in l:
            if e=="," and conta_virgulas==0:
                conta_virgulas+=1
                print(l[:conta_carac])
                valor=dic_op[l[:conta_carac]]
                palavra_binaria+=valor
                lista_opcodes.append(palavra_binaria)
            conta_carac+=1 
    return lista_opcodes

def get_reg(novo_arquivo, dic_reg):  
    arquivo = open(novo_arquivo, 'r')
  
    lista_regs=[]
    #ler cada linha
    for l in arquivo:
        palavra_binaria=""
        conta_virgulas=0
        conta_carac=0
        for e in l:
            if e==",":
                conta_virgulas+=1
                if conta_virgulas==2:
                    valor=dic_reg[l[conta_carac-2:conta_carac]]
                    palavra_binaria+=valor
                    lista_regs.append(palavra_binaria)
            conta_carac+=1 
    return lista_regs
  

 
  
def get_inst(novo_arquivo, dic_end, dic_jump):
    arquivo = open(novo_arquivo, 'r')
  
    lista_inst=[]
    #ler cada linha
    for l in arquivo:
        palavra_binaria=""
        conta_virgulas=0
        conta_carac=0
        for e in l:
            if e==",":
                conta_virgulas+=1
                if conta_virgulas==2:
                    pos1=conta_carac+2
            if e==";":
                pos2=conta_carac
            conta_carac+=1 
        inst = l[pos1:pos2]
        print(l)
        
        
        # VERIFICAR O QUE É
        if inst[0] ==".":
            valor=dic_jump[inst[1:]]
            number_bin = bin(int(valor))[2:].zfill(9)
            lista_inst.append(str(number_bin))
            
        elif inst[0] == "$": #binario de 9 bits
            number_hex = inst[1:3]
            number_bin = bin(int(number_hex, 16))[2:].zfill(9)
            lista_inst.append(str(number_bin))
        
        elif inst[0] == "M":
            number_dec = int(inst[4:6])
            number_bin = bin(number_dec)[2:].zfill(9)
            lista_inst.append(str(number_bin))
            
            
        else:
            valor=dic_end[inst]
            lista_inst.append(valor)
                    
                    
        
    return lista_inst
  
  
  
def cria_mif(opc, reg, inst, arquivo_mif, addr, data_width):
    
    novo_arquivo = open(arquivo_mif, 'w')
      
    novo_arquivo.write('DEPTH = {};\n'.format(2**addr))
    novo_arquivo.write('WIDTH = {};\n\n'.format(data_width))
    novo_arquivo.write('ADDRESS_RADIX = DEC;\n')
    novo_arquivo.write('DATA_RADIX = BIN;\n\n')
    novo_arquivo.write('CONTENT\n')
    novo_arquivo.write('BEGIN\n')
      
    i=0
    while i<len(opc):
        print(len(inst))
        palavra=opc[i]+reg[i]+inst[i]
        novo_arquivo.write('{}:   {};\n'.format(i, palavra))
        i+=1
          
    if i < 511:
        novo_arquivo.write('[{}..{}]:   {};\n'.format(i, 511, ''.zfill(15)))
    novo_arquivo.write('END;\n')
      
    return novo_arquivo
      
      
def completa(assembly, dic_OpCode, dic_Regs, Dic_Enderecos):
    # ve linhas que tem jumps, guarda e tira
    Dic_jumps, novo = get_lines_label(assembly, "assembly_novo.txt")
    
    # faz lista de opcodes
    opc = get_opcode("assembly_novo.txt", dic_OpCode)
    
    # faz lista de regs
    reg = get_reg("assembly_novo.txt", dic_Regs)
    
    # pega os endereços
    inst = get_inst("assembly_novo.txt", Dic_Enderecos, Dic_jumps)
    
    mif = cria_mif(opc, reg, inst, "arquivo.mif", 9, 15)
    
    
completa("assembly.txt", Dic_OpCode, Dic_Regs, Dic_Enderecos)
    
    
      
    
  















