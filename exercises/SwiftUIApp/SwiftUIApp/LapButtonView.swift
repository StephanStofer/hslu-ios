//
//  LapButtonView.swift
//  SwiftUIApp
//
//  Created by Stephan Stofer on 01.10.21.
//

import Foundation
import SwiftUI
struct LapButtonView: View {
    @Binding var laps: [Date]
    @Binding var start: Date
    var body: some View {
        Button("Add Lap"){
            laps.append(Date())
            
        }
    }
}
