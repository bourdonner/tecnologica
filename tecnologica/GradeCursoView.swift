//
//  GradeCursoView.swift
//  tecnologica
//
//  Created by Erick Martins on 26/05/21.
//

import SwiftUI

struct ListaView: View {
    let materias = [ Materias(periodo: 1, nome: "Comunicação Oral e Escrita", departamento: "dacex", horasSemanais: 30),
                     Materias(periodo: 1, nome: "História da Arte 1", departamento: "dadin", horasSemanais: 45),
                     Materias(periodo: 1, nome: "Psicologia 1", departamento: "dadin", horasSemanais: 45),
                     Materias(periodo: 2, nome: "Psicologia 2", departamento: "dadin", horasSemanais: 45),
    ]
    var periodos : [Int]{
        Array(Set(materias.map{$0.periodo})).sorted()
    }
    
    var body: some View {
        VStack {
            List{
                ForEach (periodos, id: \.self) { periodo in

                    Section(header:
                                HStack{
                                    Text("\(Text("\(periodo)").foregroundColor(Color("cinzaClaro"))) período")
                                        .padding()
                                        .frame(height: 30)
                                        .font(.system(size:15, weight: .black, design: .default))
                                        Spacer()
                                
                                }.background(Color.accentColor)
                                .listRowInsets(EdgeInsets(
                                                            top: 0,
                                                            leading: 0,
                                                            bottom: 0,
                                                            trailing: 0))
                    )
                    {
                        
                        ForEach (materias.filter{$0.periodo == periodo}, id: \.id) { materias in
                            HStack {
                                VStack {
                                    Image("recDepartamento")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50)
                                    
                                    Text(materias.departamento)
                                        .fontWeight(.black)
                                        .frame(width: 60)
                                        .padding(.vertical, -4)
                                        .padding(.horizontal, 20)
                                }
                                VStack(alignment: .leading) {
                                    Text(materias.nome)
                                        .fontWeight(.bold)
                                        .multilineTextAlignment(.leading)
                                    
                                    Text("\(String(materias.horasSemanais)) horas semanais")
                                        .multilineTextAlignment(.leading)
                                }
                                .padding(.vertical, 4)
                                .padding(.horizontal, 0)
                                Spacer()
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            
        }.listStyle(InsetListStyle())
        .navigationBarTitle("Grade", displayMode: .inline)
        
    }
}


struct AulaView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ListaView()
        }
    }
}

