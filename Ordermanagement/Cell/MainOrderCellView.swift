//
//  MainOrderCellView.swift
//  Ordermanagement
//
//  Created by Phunsup S. on 5/1/2567 BE.
//

import SwiftUI

struct MainOrderCellView: View {
    
    var order : Order
    var body: some View {
        
        HStack{
            
            Image(order.imageURL)
                .resizable()
                .scaledToFill()
                .frame(width: 75,height: 75,alignment: .center)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading){
                
                Text(order.name)
                    .font(.headline)
                Text(order.option)
                    .font(.subheadline)
                    .foregroundStyle(Color.gray)
                
            }
            .padding()
            
            Spacer()
            
            VStack(alignment: .trailing){
                
                Text("จำนวน \(order.amount)")
                    .font(.headline)
                Text("โต๊ะ \(order.table)")
                    .foregroundStyle(Color.gray)
                    .font(.subheadline)
                
            }
            .padding()
        }
    }
}

#Preview {
    MainOrderCellView(order: Order.demoData()[0]).previewLayout(.sizeThatFits)
}
