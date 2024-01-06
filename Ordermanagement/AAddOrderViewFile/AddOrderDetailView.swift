//
//  AddOrderDetailView.swift
//  Ordermanagement
//
//  Created by Phunsup S. on 6/1/2567 BE.
//

import SwiftUI

struct AddOrderDetailView: View {
    
    @State var Menu : Order
    @Binding var IsPresent : Bool
    @Binding var orderList : [Order]
    
    var body: some View {
        
        VStack{
            
            CircleImageCellView(Menu: Menu)
            
            AddOrderFormView(order: $Menu)
            
            Button("เพิ่มออเดอร์") {
                
                self.orderList.append(Menu)
                self.IsPresent = false
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,minHeight: 48,maxHeight: 48, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [.red,.blue]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
            .foregroundStyle(Color.white)
            
        }
    }
}

#Preview {
    AddOrderDetailView(Menu: Order.demoData()[2],IsPresent: .constant(true),orderList: .constant([]))
}
