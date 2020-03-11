//
//  ItemRow.swift
//  iDine
//
//  Created by Roland Lariotte on 11/03/2020.
//  Copyright © 2020 Roland Lariotte. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
  
  var item: MenuItem
  
  var body: some View {
    HStack {
      Image(item.thumbnailImage)
      VStack(alignment: .leading) {
        Text(item.name)
        Text(String("$\(item.price)"))
      }
    }
  }
}

struct ItemRow_Previews: PreviewProvider {
  static var previews: some View {
    ItemRow(item: MenuItem.example)
  }
}
