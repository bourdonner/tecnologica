import SwiftUI

struct materiasDesc: Identifiable {
    let id = UUID()
    let nome: String
    let horasSemanais: String
    let capa : String
}

struct ListaView: View {
    let materias = [
        materiasDesc(nome: "Comunicação Oral e Escrita",
                     horasSemanais: "30 horas",
                     capa: "dacex"),
        materiasDesc(nome: "História da Arte 1",
                     horasSemanais: "45 horas",
                     capa: "dadin"),
        materiasDesc(nome: "Psicologia 1",
                     horasSemanais: "30 horas",
                     capa: "dadin"),
        materiasDesc(nome: "Teoria da Cor",
                     horasSemanais: "45 horas",
                     capa: "dadin"),
        materiasDesc(nome: "Materiais e Processos de Fabricação",
                     horasSemanais: "60 horas",
                     capa: "dadin"),
        materiasDesc(nome: "Metodologia da Pesquisa",
                     horasSemanais: "30 horas",
                     capa: "dadin"),
        materiasDesc(nome: "Desenho 1",
                     horasSemanais: "45 horas",
                     capa: "dadin"),
    ]
    
    var body: some View {
        NavigationView {
            VStack {
                
                ScrollView {
                    
                    Text("\(Text("primeiro").foregroundColor(Color("amarelo"))) período")
                        .font(.system(size:43, weight: .black, design: .default))
                        .fontWeight(.black)
                        .foregroundColor(Color("cinza"))
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.top, -25.0)
                        .padding()
                    
                    
                    
                    ForEach (materias) { materias in
                        HStack {
                            VStack {
                                Image("recDepartamento")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50)

                                
                                Text(materias.capa)
                                    .fontWeight(.black)
                                    .frame(width: 60)
                                    .padding(.vertical, -4)
                                    .padding(.horizontal, 20)
                                
                            }
                            
                            
                            VStack(alignment: .leading) {
                                Text(materias.nome)
                                    .fontWeight(.bold)
                                    .multilineTextAlignment(.leading)

                                Text(materias.horasSemanais)
                                    .multilineTextAlignment(.leading)
                                
            
                                
                            }
                            .padding(.vertical, 4)
                            .padding(.horizontal, 0)

                            Spacer()
                        }
                        Divider()
                    }
                    
                }
                
            }
        }
       // .navigationBarTitle("grade").ignoresSafeArea()

 //       .padding(0)
        
        .navigationBarTitle("Grade", displayMode: .inline)

        
    }
}

struct AulaView_Previews: PreviewProvider {
    static var previews: some View {
        ListaView()
    }
}
