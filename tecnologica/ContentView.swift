//
//  ContentView.swift
//  tecnologica
//
//  Created by Erick Martins on 25/05/21.
//

import SwiftUI

struct ContentView: View {

    @State var name: String = ""
    var isButtonDisabled : Bool {
        name.isEmpty
        
    }
    
    var body: some View {
        NavigationView {
            VStack {
                if name.isEmpty {
                    
                    
                    Image("utfLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 80)
                        .padding()
                    
                    Spacer()
                    
                    Text("olá, \(Text("estudante").foregroundColor(Color("amarelo")))!\n você está na universidade tecnológica")
                        .font(.system(size:43, weight: .black, design: .default))
                        .fontWeight(.black)
                        .foregroundColor(Color("cinza"))
                        .frame(minHeight: 240, idealHeight: 240, maxHeight: .infinity, alignment: .center)
                      
                } else {
                    
                    Image("utfIcon")
                        .resizable()
                        .scaledToFit()
                        .frame(minHeight: 30, idealHeight: 60, maxHeight: 60, alignment: .center)
                        .padding()
                    
                    
                    Text("olá, \(Text(name).foregroundColor(Color("amarelo"))).\n você está na universidade tecnológica")
                        .font(.system(size:43, weight: .black, design: .default))
                        .fontWeight(.black)
                        .foregroundColor(Color("cinza"))
                        .frame(minHeight: 240, idealHeight: 240, maxHeight: .infinity, alignment: .center)

                }

                Spacer()
                
                TextField("Como devemos te chamar?", text: $name)
                .frame(width: 250)
                
                Rectangle()
                    .fill(Color("amarelo"))
                    .frame(width: 250, height: 3)
                    .padding(.top, 0)
                    
                Spacer()
                
 //               Button {
                    
//               } label: {
                NavigationLink (
                    destination: CadastroView(apelido: name),
                        label: {
                            Text("entrar na tecnológica")
                                .frame(width: 318, height: 54, alignment: .center)
                                .background(isButtonDisabled ? Color("cinzaClaro") : Color("amarelo"))
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .black, design: .default))
                                .cornerRadius(30)
                        }
                )
                .disabled(isButtonDisabled)
            }
            .navigationTitle("Boas-vindas")
            .navigationBarHidden(true)
            .padding ()
            .multilineTextAlignment(.center)
        }

        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
