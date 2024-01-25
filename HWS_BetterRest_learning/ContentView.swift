//
//  ContentView.swift
//  HWS_BetterRest_learning
//
//  Created by Server Admin on 23.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var sleepHours = 8.0
    @State private var wakeUp = Date.now
    
    
    
    
    var body: some View {
        
        Stepper("\(sleepHours.formatted()) hours", value: $sleepHours, in: 4...12, step: 0.5)
            .padding()
        DatePicker("Pleas take data and time wake up", selection: $wakeUp, in: ...Date.now, displayedComponents: .hourAndMinute)
            .labelsHidden()
        
        Text(Date.now, format: .dateTime.hour().minute())

        Text(Date.now, format: .dateTime.day().month().year())

        Text(Date.now.formatted(date: .long, time: .shortened))

        
    }
    
    
    func exampleDates() {
        let tomorrow = Date.now.addingTimeInterval(86400)

        let range = Date.now...tomorrow
        
        let components = Calendar.current.dateComponents([.hour, .minute], from: .now)
        let hour = components.hour ?? 0
        let minute = components.minute ?? 0
        let date = Calendar.current.date(from: components) ?? .now
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
