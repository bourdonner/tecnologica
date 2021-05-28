//
//  modeloCurso.swift
//  tecnologica
//
//  Created by Erick Martins on 28/05/21.
//

import Foundation

import Foundation

class Cursos {
    init(tag: String, nome: String, departamento: String) {
        self.tag = tag
        self.nome = nome
        self.departamento = departamento
    }
    let id = UUID()
    let tag: String
    let nome: String
    let departamento: String
    
}
