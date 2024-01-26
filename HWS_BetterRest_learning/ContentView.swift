//
//  ContentView.swift
//  HWS_BetterRest_learning
//
//  Created by Server Admin on 23.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("When you want to wake up?")
                    .font(.title)
                DatePicker("Pick time to wake uo", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden()
                Text("Desired amount to sleep?")
                    .font(.headline)
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                Text("Daily coffee intake")
                    .font(.headline)
                Stepper("\(coffeeAmount) cup(s)", value: $coffeeAmount, in: 0...20)
            }
            .navigationTitle("Better Rest")
            .toolbar {
                Button ("Calculate", action: calculateBedTime)
            }
        }
    }
    func calculateBedTime(){
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
