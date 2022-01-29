//
//  AccData.swift
//  Nn
//
//  Created by Latifah Almutairi on 14/05/1443 AH.
//

import SwiftUI

struct ItemA: Identifiable {
    var id = UUID()
    var title: String
    var text: String
    var image: String
    
}
var itemsA = [ItemA(title: "New", text: "Smart Folio for ipad Pro 11-inch", image: "Ac_1"),
             ItemA(title: "HOT", text: "40mm RED Braided Solo Loop", image: "Ac_2")
              

]
