// Playground - noun: a place where people can play
//Por Cacá (Carlos Frederico)

import UIKit

//Coloque seu CPF sem os dígitos verificadores e sem as pontuações
var strCPF = "111444777"

//Primeira Etapa
var nEtapa1_multiplicador : Int = 10
var nEtapa1_somatotal : Int = 0

for cNumero in strCPF {
    var strT : String = ""
    strT.append(cNumero)
    var nConversao : Int? = strT.toInt()
    let nNumero = nConversao!
    nEtapa1_somatotal += nNumero * nEtapa1_multiplicador--
}

let nResto1 = nEtapa1_somatotal % 11
var nPrimeiroDigito = nResto1 < 2 ? 0 : 11 - nResto1

strCPF += String(nPrimeiroDigito)

//Segunda Etapa

var nEtapa2_multiplicador : Int = 11
var nEtapa2_somatotal : Int = 0

for cNumero in strCPF {
    var strT : String = ""
    strT.append(cNumero)
    var nConversao : Int? = strT.toInt()
    let nNumero = nConversao!
    nEtapa2_somatotal += nNumero * nEtapa2_multiplicador--
}

let nResto2 = nEtapa2_somatotal % 11
var nSegundoDigito = nResto2 < 2 ? 0 : 11 - nResto2

strCPF += String(nSegundoDigito)

//Formatar o CPF
var strCPF_formatado : String = ""
var nPosicao : Int = 0

for cCaracter in strCPF {
    strCPF_formatado.append(cCaracter)
    
    switch nPosicao++ {
        case 2, 5:
            strCPF_formatado += "." //Não sei porquê quando eu usava com .append(".") ele dava o erro de Ambiguous use of 'append'.
        case 8:
            strCPF_formatado += "-" //Mesma coisa aqui
        default:
            continue
    }
}

println("O CPF final é \(strCPF_formatado)")
