//
//  SignUpView.swift
//  Ordermanagement
//
//  Created by Phunsup S. on 6/1/2567 BE.
//

import SwiftUI

struct SignUpView: View {
    
    @Binding var newname : String
    @Binding var newpassword : String
    @Binding var isSignup : Bool
    
    var body: some View {
        
        ZStack{
            
            Color.white
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                
                Text("Create Account")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                    .foregroundStyle(Color.black)
                    .padding()
                
                TextField("Username", text: $newname)
                    .foregroundStyle(Color.blue)
                    .frame(width: 280)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(32)
                    .shadow(radius: 3)
                
                SecureField("Password", text: $newpassword)
                    .foregroundStyle(Color.blue)
                    .frame(width: 280)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(32)
                    .shadow(radius: 3)
                
                Button("Sign Up") {
                    
                    self.isSignup = false
                    
                }
                .frame(width: 280)
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.cyan)
                    .cornerRadius(32)
                    .shadow(radius: 3)
                    .padding()
                
            }
        }
    }
}

#Preview {
    SignUpView(newname: .constant(""), newpassword: .constant(""),isSignup: .constant(true))
}
