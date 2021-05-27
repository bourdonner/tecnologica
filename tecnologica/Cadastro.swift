//
//  Cadastro.swift
//  tecnologica
//
//  Created by Erick Martins on 25/05/21.
//

import SwiftUI

struct CadastroView: View {
    var apelido: String
    @State var name: String = ""
    @State var email: String = ""
    @State var password: String = ""
    @State var isToggleOn = false
    var isButtonDisabled : Bool {
        name.isEmpty || email.isEmpty || password.isEmpty
        
    }
    var body: some View {
  
            VStack {
                
                Image("utfIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(minHeight: 30, idealHeight: 60, maxHeight: 60, alignment: .center)
                    .padding(.bottom, 0)

                
                VStack{
                    
                    Text("\(apelido) faça o seu \(Text("cadastro").foregroundColor(.accentColor))")
                        .font(.system(size:43, weight: .black, design: .default))
                        .fontWeight(.black)
                        .foregroundColor(Color("cinza"))
                        .frame(width: 320, height: 120, alignment: .leading)

                    Spacer()
                    Spacer()
                    VStack {
                        
                        TextField("Nome e Sobrenome", text: $name)
                            .padding(.vertical, 10)
                        
                        Divider()
                        TextField("Email", text: $email)
                            .padding(.vertical, 10)
                        Divider()
                        if isToggleOn {
                            TextField("Senha", text: $password)
                                .padding(.vertical, 10)
                        } else {
                            SecureField("Senha", text: $password)
                                .padding(.vertical, 10)
                        }
                        
                        Divider()
                        Toggle("Ver sua senha", isOn: $isToggleOn)
                    }
                    .frame(width: 320, height: 120, alignment: .leading)
                    Spacer()
                    Spacer()

                    
                    NavigationLink (
                            destination: ListaView(),
                            label: {
                       
                                Text("criar cadastro")
                                    .frame(width: 318, height: 55, alignment: .center)
                                    .background(isButtonDisabled ? Color("cinzaClaro") : Color("amarelo"))
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .black, design: .default))
                                    .cornerRadius(30)
                                
                            }
                    )
                    .disabled(isButtonDisabled)
                    .padding()
                    NavigationLink (
                        destination: LoginView(),
                        label: {
                            
                            Text("Já tem conta? \(Text("Faça o login aqui.").foregroundColor(.accentColor))")
                                .font(.system(size:18, weight: .black, design: .default))
                                .fontWeight(.light)
                                .foregroundColor(Color("cinza"))
                                .frame(minWidth: 0, maxWidth: .infinity, maxHeight: 23, alignment: .center)
                            
                        }
                    )
                    
                    
                    
                    Spacer()
                }
                .navigationBarTitle("Cadastro", displayMode: .inline)
                .padding()
                
            }
    }
}

struct Cadastro_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CadastroView(apelido: "")
        }
    }
}
