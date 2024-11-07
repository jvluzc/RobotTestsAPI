*** Settings ***
Library            SeleniumLibrary
Library            String
Library            BuiltIn
Documentation      Keywords usadas para geração de dados randômicos


*** Keywords ***

Gerar Nome Completo
    # Gerar a primeira palavra com três letras "A"
    ${primeira_palavra}=    Generate Random String    6    chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ

    # Gerar a segunda palavra
    ${segunda_palavra}=     Generate Random String    8    chars=ABCDEFGHIJKLMNOPQRSTUVWXYZ

    # Concatenar a primeira e segunda palavra
    ${nome_completo}=       Catenate    AAAA${primeira_palavra}  ${segunda_palavra}
    
    # Retornar o nome completo
    [Return]    ${nome_completo}


Gerar Numero de CPF randômico
    ${random_number}=    Generate Random String    11   [NUMBERS]
    [Return]    ${random_number}

Gerar E-mail Randômico (@dominio.com)
    # Gerar valor randômico de até 8 caracteres
    ${valor_randomico}=    Evaluate    ''.join(random.choices(string.ascii_lowercase + string.digits, k=8))    modules=random,string

    # Concatenar o e-mail completo
    ${email}=    Catenate    teste123${valor_randomico}@teste.com

    # Retornar o e-mail gerado
    [Return]    ${email}

Gerar E-mail Randômico (@dominio.com.br)
    # Gerar valor randômico de até 8 caracteres
    ${valor_randomico}=    Evaluate    ''.join(random.choices(string.ascii_lowercase + string.digits, k=8))    modules=random,string

    # Concatenar o e-mail completo
    ${email}=    Catenate    teste456${valor_randomico}@teste.com.br

    # Retornar o e-mail gerado
    [Return]    ${email}