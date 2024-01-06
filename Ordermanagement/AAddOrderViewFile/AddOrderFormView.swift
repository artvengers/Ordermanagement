//
//  AddOrderFormView.swift
//  Ordermanagement
//
//  Created by Phunsup S. on 6/1/2567 BE.
//

import SwiftUI

struct AddOrderFormView: View {
    
    @Binding var order: Order
    @State var Option = ""
    @State var Table = "1"
    @State var amount = 1
    
    var body: some View {
        
        Form{
            
            Section(header: Text("โค๊ะและจำนวน")){
                Picker(selection: $order.table, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/) {
                    
                    Text("โต๊ะ 1").tag("1")
                    Text("โต๊ะ 2").tag("2")
                    Text("โต๊ะ 3").tag("3")
                    Text("โต๊ะ 4").tag("4")
                    Text("โต๊ะ 5").tag("5")
                    
                }
                .pickerStyle(SegmentedPickerStyle())
                
                Stepper(value: $order.amount, in: 1...10) {
                    
                    Text("จำนวน \(order.amount)")
                    
                }
            }
            
            Section(header: Text("หมายเหตุเพิ่มเติม")){
                
                TextField("เช่น ไม่เผ็ด ไม่ผัก ... ", text: $order.option)
                
            }
        }
    }
}
#Preview {
    AddOrderFormView(order: .constant(Order.AllMenu()[0]))
}
