//
//  ContentView.swift
//  SwiftUIApp
//
//  Created by Stephan Stofer on 27.09.21.
//

import SwiftUI

struct ContentView: View {
    @State var start = Date()
    @State var laps: [Date] = []
    var body: some View {
        VStack{
            Spacer()
            Form{
                LapButtonView(laps: $laps, start: $start)
                ResetButtonView(laps: $laps, start: $start)
                HStack{
                    Text("Timer started: ")
                    Text(start, style: .time)
                    Spacer()
                    Text(String(laps.count) + " laps")
                }
                ForEach(laps, id: \.self){ lap in
                    LapRowView(start: start, lap: lap)
                }
            }.cornerRadius(10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
