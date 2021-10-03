//
//  ResetButtonView.swift
//  SwiftUIApp
//
//  Created by Stephan Stofer on 01.10.21.
//

import Foundation
import SwiftUI
struct ResetButtonView: View {
    @Binding var laps: [Date]
    @Binding var start: Date
    var body: some View {
        Button("Reset"){
            laps.removeAll()
            start = Date()
        }
    }
}
