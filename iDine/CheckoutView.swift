//
//  CheckoutView.swift
//  iDine
//
//  Created by Roland Lariotte on 14/03/2020.
//  Copyright © 2020 Roland Lariotte. All rights reserved.
//

import SwiftUI

struct CheckoutView: View {
  
  @EnvironmentObject var order: Order
  
  static let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
  
  @State private var paymentType = 0
  
  var body: some View {
    VStack {
      Section {
        Picker("How do you want to pay?", selection: $paymentType) {
          ForEach( 0 ..< Self.paymentTypes.count) {
            Text(Self.paymentTypes[$0])
          }
        }
      }
      .navigationBarTitle(Text("Payment"), displayMode: .inline)
    }
  }
}

struct CheckoutView_Previews: PreviewProvider {
  
  static let order = Order()
  
  static var previews: some View {
    CheckoutView()
      .environmentObject(order)
  }
}
