//
//  SearchBar.swift
//  tecnologica
//
//  Created by Erick Martins on 28/05/21.
//

import SwiftUI

struct SearchBar: View {
    var searchQuery: Binding<String>
    var placeholder: String
    var placeholderColor: Color
    
    var body: some View {
        ZStack (alignment: .leading){
            RoundedRectangle(cornerRadius: 10)
                .frame (height: 35)
                .foregroundColor(.accentColor)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .frame(width: 24, height: 20)
                    .foregroundColor(Color("branco"))
                    .padding(.leading, 20)
                
                ZStack (alignment: .leading) {
                    if searchQuery.wrappedValue.isEmpty { Text(placeholder).foregroundColor(placeholderColor) }
                    TextField("", text: searchQuery)
               
                }

                    }
                
                
                
                //                Image(systemName: "mic.fill")
                //                    .frame(width: 24, height: 20)
                //                    .foregroundColor(.gray)
                
            }
        .padding(.horizontal, 20)
        .padding()
        }
    }

