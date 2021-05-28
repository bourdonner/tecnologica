//
//  GradeCursoView.swift
//  tecnologica
//
//  Created by Erick Martins on 26/05/21.
//

import SwiftUI

struct ListaView: View {
    @State var searchContent: String = ""
    
    let materias = [ Materias(periodo: 1, nome: "Comunicação Oral e Escrita", departamento: "dacex", horasSemanais: 30),
                     Materias(periodo: 1, nome: "História da Arte 1", departamento: "dadin", horasSemanais: 45),
                     Materias(periodo: 1, nome: "Psicologia 1", departamento: "dadin", horasSemanais: 30),
                     Materias(periodo: 1, nome: "Teoria da Cor", departamento: "dadin", horasSemanais: 45),
                     Materias(periodo: 1, nome: "Materiais e Processos de Fabricação", departamento: "dadin", horasSemanais: 60),
                     Materias(periodo: 1, nome: "Metodologia da Pesquisa", departamento: "dadin", horasSemanais: 30),
                     Materias(periodo: 1, nome: "Desenho 1", departamento: "dadin", horasSemanais: 45),
                     Materias(periodo: 1, nome: "Geometria Descritiva 1", departamento: "dadin", horasSemanais: 45),
                     Materias(periodo: 1, nome: "Composição 1", departamento: "dadin", horasSemanais: 45),
                     Materias(periodo: 1, nome: "Representação 1", departamento: "dadin", horasSemanais: 45),
                     //Segundo período
                     Materias(periodo: 2, nome: "Atividades Complementares", departamento: "dadin", horasSemanais: 180),
                     Materias(periodo: 2, nome: "História da Arte 2", departamento: "dadin", horasSemanais: 45),
                     Materias(periodo: 2, nome: "Ilustração 1", departamento: "dadin", horasSemanais: 60),
                     Materias(periodo: 2, nome: "Materiais e Processos de Fabricação 2", departamento: "dadin", horasSemanais: 30),
                     Materias(periodo: 2, nome: "Processo e Produção Gráfica 1", departamento: "dadin", horasSemanais: 60),
                     Materias(periodo: 2, nome: "Computação Gráfica 1", departamento: "dadin", horasSemanais: 60),
                     Materias(periodo: 2, nome: "Geometria Descritiva 2", departamento: "dadin", horasSemanais: 45),
                     Materias(periodo: 2, nome: "Composição 2", departamento: "dadin", horasSemanais: 45),
                     Materias(periodo: 2, nome: "Representação 2", departamento: "dadin", horasSemanais: 45),
                     Materias(periodo: 2, nome: "Tecnologia e Sociedade", departamento: "daeso", horasSemanais: 45),
                     

                     
                     
    ]
    var materiasFiltradas: [Materias] {
        materias.filter {
            searchContent.isEmpty ? true : $0.nome.lowercased().contains(searchContent.lowercased()) || $0.departamento.lowercased().contains(searchContent.lowercased())
        }
    }
    var periodos : [Int]{
        Array(Set(materiasFiltradas.map{$0.periodo})).sorted()
    }
    
    var body: some View {
        VStack (spacing: 0){
            
            SearchBar(searchQuery: $searchContent, placeholder: "Pesquisar", placeholderColor: Color ("branco"))
                
                        
                        .background(Color(.systemGray6))

            List{
                
                ForEach (periodos, id: \.self) { periodo in

                    Section(header:
                                HStack{
                                    Text("\(Text("\(periodo)º ").foregroundColor(.accentColor)) \(Text("período").foregroundColor(Color("cinza")))")
                                        .textCase(nil)
                                        .padding(20)
                                        //.frame(height: 30)
                                        .font(.system(size:25, weight: .black, design: .default))
                                        Spacer()
                                
                                }//.background(Color("branco"))
                                .listRowInsets(EdgeInsets(
                                                            top: 10,
                                                            leading: 0,
                                                            bottom: 0,
                                                            trailing: 0))
                    )
                    {
                        
                        ForEach (materiasFiltradas.filter{$0.periodo == periodo}, id: \.id) { materiasFiltradas in
                            HStack {
                                VStack {
                                    Image("recDepartamento")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50)
                                    
                                    Text(materiasFiltradas.departamento)
                                        .fontWeight(.black)
                                        .frame(width: 55)
                                        .padding(.vertical, -4)
                                        .padding(.horizontal, 5)
                                }
                                VStack(alignment: .leading) {
                                    Text(materiasFiltradas.nome)
                                        .fontWeight(.bold)
                                        .multilineTextAlignment(.leading)
                                    
                                    Text("\(String(materiasFiltradas.horasSemanais)) horas semanais")
                                        .multilineTextAlignment(.leading)
                                }
                                .padding(.vertical, 5)
                                .padding(.horizontal, 5)
                                Spacer()
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }.listStyle(InsetGroupedListStyle())
        // Para mais estilos de lista: https://developer.apple.com/documentation/swiftui/liststyle
        .navigationBarTitle("Matriz Curricular", displayMode: .inline)
        

    }

}


struct AulaView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListaView()
        }
    }
}

