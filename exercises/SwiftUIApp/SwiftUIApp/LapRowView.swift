//
//  LapRowView.swift
//  SwiftUIApp
//
//  Created by Stephan Stofer on 01.10.21.
//

import Foundation
import SwiftUI
struct LapRowView : View{
let globalStart: Date
let lapStart: Date
var durationString: String {
    get{
        let difference: Int = Int(globalStart.distance(to: lapStart).rounded())
        return String(difference) + " sec"
    }
}

    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(durationString)
                Text(lapStart, style: .time)
            }
            Spacer()
            Image(systemName: "timer")
        }
    }


    init (start: Date, lap: Date){
        self.globalStart = start
        self.lapStart = lap
}
}
struct LapRowView_Previews: PreviewProvider {
    static var previews: some View {
        Form{
            LapRowView(start: Date(), lap: Date())}
    }
}
