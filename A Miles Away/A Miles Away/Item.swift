//
//  Item.swift
//  A Miles Away
//
//  Created by Saket Arora on 11/25/21.
//

import SwiftUI

struct Item: Identifiable {
    
    var id: UUID
    var seller: Seller
    var listing_name: String
    var listing_location: String
    var listing_price: Float
    var condition: String
    var description: String
    var images : Array<String>
    var sellerIcon : String

    init(id:UUID = UUID(),seller: Seller,listing_name: String, listing_location: String, price: Float, condition: String, description: String, images: Array<String>){
        self.id = id
        self.seller = seller
        self.listing_name = listing_name
        self.listing_location = listing_location
        self.listing_price = price
        self.condition = condition
        self.description = description
        self.images = images
        self.sellerIcon = seller.userImage
    }
}
extension Item {
    static var data: [Item]{
        [
            Item(seller: Seller(name : "Saket Arora", phone_number: "4083293647", email: "s2arora@ucsd.edu", college: "Thurgood Marshall College"),listing_name: "Toaster",listing_location: "Thurgood Marshall College", price: 280, condition: "Great", description: "This a really great toaster", images: ["toaster1", "toaster2", "taster3"]),
            Item(seller: Seller(name : "Minjae Sung", phone_number: "8582229345", email: "mj@ucsd.edu", college: "Warren College", userImage: "michael-jordan"),listing_name: "Nintendo Switch console", listing_location: "Warren College", price: 269.98, condition: "Used", description: "Nintendo Switch console 32 GB with Blue and Neon Red Joy-Con.\n\n(1) Nintendo Switch Console W/ Charger\n\n(1) Charging/TV Dock", images:
                    ["nintendo1", "nintendo2", "nintendo3"])
        ]
    }
}
