//
//  CenterModifier.swift
//  Africa
//
//  Created by Shishir_Mac on 6/6/22.
//

import Foundation
import SwiftUI

struct CenterModifier: ViewModifier {
  func body(content: Content) -> some View {
    HStack {
      Spacer()
      content
      Spacer()
    }
  }
}
