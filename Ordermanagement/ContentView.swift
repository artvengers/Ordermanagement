//
//  ContentView.swift
//  Ordermanagement
//
//  Created by Phunsup S. on 5/1/2567 BE.
//

import SwiftUI

struct ContentView: View {
    
    // จาก View มาเก็บในตัวแปร ต้องใช้ State และต้องมี $
    @State var username = ""
    @State var password = ""
    @State var isLogin = false
    @State var isWrong = false
    @State var isSignup = false
    @State var newname = ""
    @State var newpassword = ""
    @State var isWrongpass = false
    
    var body: some View {
        
        VStack{
            
            if(isLogin){
                
               MainOrderView()
                
            }else if(isSignup){
                
                SignUpView(newname: $newname, newpassword: $newpassword,isSignup: $isSignup)
                
            }else{
                
                ZStack{
                    Color.white
                        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                    VStack{
                        
                        Text("Order Management")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .bold()
                            .foregroundStyle(Color.black)
                            .padding()
                        
                        TextField("Username", text: $username)
                            .foregroundStyle(Color.black)
                            .frame(width: 280)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(32)
                            .shadow(radius: 3)
                        
                        SecureField("Password", text: $password)
                            .foregroundStyle(Color.black)
                            .frame(width: 280)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(32)
                            .shadow(radius: 3)
                        
                        if(isWrongpass){
                            
                            Text("Username or Password is Wrong !")
                                .foregroundStyle(Color.red)
                            
                        }
                        
                        HStack{
                            Text("Don't have an account ?")
                                .foregroundStyle(Color.black)
                            Button("Sign up") {
                                self.isSignup = true
                                self.isWrongpass = false
                                
                            }
                        }
                        
                        Button("Sign in") {
                            
                            if((username == "admin" && password == "123456")||(username == newname && password == newpassword)){
                                
                                self.isLogin = true
                                self.isWrongpass = false
                                
                            }else{
                                
                                self.isWrongpass = true
                                
                            }
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
    }
}
#Preview {
    ContentView()
}
