//
//  ContentView.swift
//  HWS_BetterRest_learning
//
//  Created by Server Admin on 23.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sleepHours = 8.0
    
    var body: some View {
        
        Stepper("\(sleepHours.formatted()) hours", value: $sleepHours, in: 4...12, step: 0.5)
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
