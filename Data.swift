//
//  Data.swift
//  Nn
//
//  Created by Latifah Almutairi on 14/05/1443 AH.
//

import SwiftUI

struct Item: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: String
    
}
var items = [Item(title: "New", text: "AirPods Max", image: "pro_1"),
             Item(title: "Trending", text: "Apple Watch", image: "pro_2")
             


]

