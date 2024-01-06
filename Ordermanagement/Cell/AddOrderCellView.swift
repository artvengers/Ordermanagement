//
//  AddOderCellView.swift
//  Ordermanagement
//
//  Created by Phunsup S. on 6/1/2567 BE.
//

import SwiftUI

struct AddOrderCellView: View {
    
    let menu : Order
    var body: some View {
        
        HStack{
            
            Image(menu.imageURL)
                .resizable()
                .scaledToFill()
                .frame(width: 75,height: 75,alignment: .center)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Text(menu.name)
                .font(.headline)
                .bold()
            
            Spacer()
            
        }
    }
}

#Preview {
    AddOrderCellView(menu: Order.demoData()[0])
}
