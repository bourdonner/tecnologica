//
//  modeloCurso.swift
//  tecnologica
//
//  Created by Erick Martins on 28/05/21.
//

import Foundation

import Foundation

class Cursos {
    init(symbol: String, nome: String, departamento: String, tag: Int) {
        self.tag = tag
        self.symbol = symbol
        self.nome = nome
        self.departamento = departamento
    }
    let id = UUID()
    let symbol: String
    let nome: String
    let departamento: String
    let tag: Int
    
}
