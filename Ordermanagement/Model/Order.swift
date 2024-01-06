//
//  Order.swift
//  Ordermanagement
//
//  Created by Phunsup S. on 5/1/2567 BE.
//

import Foundation

struct Order : Identifiable{
    var id = UUID()
    var name : String
    var imageURL : String
    var option : String = ""
    var table : String = ""
    var amount : Int = 1
}

// สร้างข้อมูลตัวอย่าง

extension Order {
    static func demoData() -> [Order]{
        return[
            Order(name: "กระเพรา", imageURL: "Kaprow", option: "เผ็ดน้อย", table: "1", amount: 3),
            Order(name: "ผัดไท", imageURL: "Padthai", option: "ไม่ใส่ถั่วงอก", table: "2", amount: 2),
            Order(name: "ต้มยำ", imageURL: "Tumyum", option: "เผ็ดมาก", table: "3", amount: 1),
            Order(name: "ผัดผัก", imageURL: "PadPak", option: "เด็กกิน", table: "5", amount: 1),
            Order(name: "โค้กกระป๋อง", imageURL: "Coke", table: "1", amount: 6),
            Order(name: "น้ำเปล่า", imageURL: "Ct", table: "2", amount: 2)
        ]
    }
    
    static func AllMenu() -> [Order]{
        return[
            Order(name: "กระเพรา", imageURL: "Kaprow"),
            Order(name: "ผัดไท", imageURL: "Padthai"),
            Order(name: "ต้มยำ", imageURL: "Tumyum"),
            Order(name: "ผัดผัก", imageURL: "PadPak"),
            Order(name: "โค้กกระป๋อง", imageURL: "Coke"),
            Order(name: "น้ำเปล่า", imageURL: "Ct"),
        ]
    }
}
