//
//  ContentView.swift
//  Login
//
//  Created by Jose Abad Rodriguez Sanchez on 14/07/23.
//

import SwiftUI

struct ContentView: View {
    @State private var username: String=""
    @State private var password: String = ""
    @State private var otherLink: String = ""
    
    var body: some View {
        VStack(spacing: 2.0) {
            
            Image("softgical")
                .resizable()
                .frame(width: 200.0, height: 200.0)
                .padding(10)
            Spacer()
            Text("Iniciar sesión")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.bottom, 10)
                
            
            Form{
                TextField(text: $username, prompt: Text("Usuario").foregroundColor(.black)) {
                        Text("Username")
                        
                    }
                .disableAutocorrection(true)
                
                Spacer()
                SecureField(text: $password, prompt: Text("Contraseña").foregroundColor(.black)) {
                    Text("Password")
                        
                }
                .disableAutocorrection(true)
               
                
            }
           
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
