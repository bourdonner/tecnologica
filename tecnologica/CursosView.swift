//
//  CursosView.swift
//  tecnologica
//
//  Created by Erick Martins on 28/05/21.
//

import SwiftUI

struct CursosView: View {
    @State var searchContent: String = ""
    
    let cursos = [ Cursos(tag: "dadin", nome: "Bacharelado em Design", departamento: "pencil.and.outline"),
                   Cursos(tag: "dadin", nome: "Tecnologia em Design Gráfico", departamento: "pencil.and.outline"),
                   Cursos(tag: "dacex", nome: "Administração", departamento: "doc.text"),
                   Cursos(tag: "dainf", nome: "Bacharel em Sistemas de Informação", departamento: "info.circle"),
                   
    ]
    var cursosFiltradas: [Cursos] {
        cursos.filter {
            searchContent.isEmpty ? true : $0.nome.lowercased().contains(searchContent.lowercased())
                || $0.tag.lowercased().contains(searchContent.lowercased())
                || $0.departamento.lowercased().contains(searchContent.lowercased())
        }
    }
    var tags : [String]{
        Array(Set(cursosFiltradas.map{$0.tag})).sorted()
    }
    
    var body: some View {
        VStack (spacing: 0){
            
            SearchBar(searchQuery: $searchContent, placeholder: "Pesquisar", placeholderColor: Color ("branco"))
                
                
                .background(Color(.systemGray6))
            
            List{
                
                ForEach (tags, id: \.self) { tag in
                    
                    Section(header:
                                HStack{
                                    Text("\(Text("\(tag) ").foregroundColor(.accentColor))")
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
                        
                        ForEach (cursosFiltradas.filter{$0.tag == tag}, id: \.id) { cursosFiltradas in
                            HStack {
                                VStack {
                                    
                                    //                                    Rectangle()
                                    //                                        .fill(Color.accentColor)
                                    //                                        .frame(width: 30, height: 3)
                                    //                                    https://betterprogramming.pub/swiftui-rectangle-61e782daa283
                                    
                                    //https://www.simpleswiftguide.com/how-to-use-sf-symbols-in-swiftui/
                                    
                                    Image(systemName: cursosFiltradas.departamento)
                                        .frame(width: 35)
                                        .font(.system(size: 23.0, weight: .bold))
                                        .foregroundColor(.accentColor)
                                    //                                        .padding(.vertical, -4)
                                    //                                        .padding(.horizontal, 5)
                                }
                                VStack(alignment: .leading) {
                                    Text(cursosFiltradas.nome)
                                        .fontWeight(.bold)
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
        .navigationBarTitle("Cursos", displayMode: .inline)
    }
    
}


struct CursosView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CursosView()
        }
    }
}

