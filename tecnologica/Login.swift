//
//  Login.swift
//  tecnologica
//
//  Created by Erick Martins on 26/05/21.
//

import SwiftUI

struct LoginView: View {
    @State var user: String = ""
    @State var password: String = ""
    @State var isToggleOn = false
    var isButtonDisabled : Bool {
        user.isEmpty ||  password.isEmpty
    }
    
        var body: some View {
            
            VStack {
                
                Image("utfIcon")
                    .resizable()
                    .scaledToFit()
                    .frame(minHeight: 30, idealHeight: 60, maxHeight: 60, alignment: .center)
                    .padding(.bottom, 0)
                
                VStack{
                    
                    Text("faça o \(Text("login").foregroundColor(.accentColor))")
                        .font(.system(size:43, weight: .black, design: .default))
                        .fontWeight(.black)
                        .foregroundColor(Color("cinza"))
                        .frame(width: 320, height: 120, alignment: .leading)
                    
                    Spacer()
                    Spacer()
                    VStack {
                        
                        TextField("Usuário", text: $user)
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
                            
                            Text("fazer login")
                                .frame(width: 318, height: 54, alignment: .center)
                                .background(isButtonDisabled ? Color("cinzaClaro") : Color("amarelo"))
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .black, design: .default))
                                .cornerRadius(30)
                            
                        }
                    )
                    .disabled(isButtonDisabled)
                    .padding()
                    
                    Spacer()
                }
                .padding()
                
            }
            
        }
    }
    

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}



