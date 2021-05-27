//
//  modeloMateria.swift
//  tecnologica
//
//  Created by Erick Martins on 27/05/21.
//

import Foundation

class Materias {
    init(periodo: Int, nome: String, departamento: String, horasSemanais: Int) {
        self.periodo = periodo
        self.nome = nome
        self.departamento = departamento
        self.horasSemanais = horasSemanais
    }
    let id = UUID()
    let periodo: Int
    let nome: String
    let departamento: String
    let horasSemanais: Int
    
}

//        materiasDesc(nome: "Comunicação Oral e Escrita",
//                     horasSemanais: "30 horas",
//                     capa: "dacex"),
//        materiasDesc(nome: "História da Arte 1",
//                     horasSemanais: "45 horas",
//                     capa: "dadin"),
//        materiasDesc(nome: "Psicologia 1",
//                     horasSemanais: "30 horas",
//                     capa: "dadin"),
//        materiasDesc(nome: "Teoria da Cor",
//                     horasSemanais: "45 horas",
//                     capa: "dadin"),
//        materiasDesc(nome: "Materiais e Processos de Fabricação",
//                     horasSemanais: "60 horas",
//                     capa: "dadin"),
//        materiasDesc(nome: "Metodologia da Pesquisa",
//                     horasSemanais: "30 horas",
//                     capa: "dadin"),
//        materiasDesc(nome: "Desenho 1",
//                     horasSemanais: "45 horas",
//                     capa: "dadin"),


//Text("\(Text("primeiro").foregroundColor(Color("amarelo"))) período")
//    .font(.system(size:43, weight: .black, design: .default))
//    .fontWeight(.black)
//    .foregroundColor(Color("cinza"))
//    .multilineTextAlignment(.leading)
//    .frame(width: 360)
//    .padding(.top, 10.0)
//    .padding()
