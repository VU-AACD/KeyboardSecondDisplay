//
//  ExternalView.swift
//  DualScreenKeyboard
//
//  Created as part of Villanova's Augmented Alternative Communication Device (AACD) Senior Design Project
//

import Foundation
import SwiftUI
import UIKit

struct ExternalView: View {
  @EnvironmentObject var store: MessageStore

  var body: some View {
      VStack{
          Text(store.message)
              .font(Font.system(size: 120,
                                weight: .regular,
                                design: .monospaced))
              .background(.regularMaterial,
                          in: RoundedRectangle(cornerRadius: 12))
              .frame(maxWidth: .infinity, minHeight: 130)
      }
  }
}
