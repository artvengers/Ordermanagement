//
//  AddOrderView.swift
//  Ordermanagement
//
//  Created by Phunsup S. on 6/1/2567 BE.
//

import SwiftUI

struct AddOrderView: View {
    
    var MenuList = Order.AllMenu()
    @Binding var IsPresent : Bool
    @Binding var orderList : [Order]
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(self.MenuList){menu in
                    NavigationLink(destination: AddOrderDetailView(Menu: menu,IsPresent: self.$IsPresent, orderList: self.$orderList)) {
                        AddOrderCellView(menu: menu)
                    }
                }
                
            }
            .navigationTitle("เลือกเมนู")
        }
        
    }
}
#Preview {
    AddOrderView(IsPresent: .constant(true),orderList: .constant([]))
}
