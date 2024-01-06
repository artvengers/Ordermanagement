//
//  MainOrderView.swift
//  Ordermanagement
//
//  Created by Phunsup S. on 5/1/2567 BE.
//

import SwiftUI

struct MainOrderView: View {
    
    func deleteOrder(at offset: IndexSet){
        offset.forEach{index in
            OrderList.remove(at: index)
        }
    }
    @State var IsPresent = false
    @State var OrderList = Order.demoData()
    var body: some View {
        NavigationView {
            
            List{
                ForEach(self.OrderList){order in
                    MainOrderCellView(order: order)
                }.onDelete(perform: deleteOrder)
                
            }
            
            .sheet(isPresented: $IsPresent, content: {
                AddOrderView(IsPresent: self.$IsPresent,orderList: self.$OrderList)
            })
            
            .navigationTitle("รายการ Order")
            
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("เพิ่ม Order") {
                        self.IsPresent = true
                    }
                }
            }
        }
    }
}

#Preview {
    MainOrderView()
}
