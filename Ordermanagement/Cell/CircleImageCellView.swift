//
//  CircleImageCellView.swift
//  Ordermanagement
//
//  Created by Phunsup S. on 6/1/2567 BE.
//

import SwiftUI

struct CircleImageCellView: View {
    
    let Menu : Order
    var body: some View {
        
        VStack{
            
            Image(Menu.imageURL)
                .resizable()
                .scaledToFill()
                .frame(width: 200,height: 200,alignment: .center)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Text(Menu.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
            
        }
    }
}

#Preview {
    CircleImageCellView(Menu: Order.AllMenu()[0])
}
