//
//  ContentView.swift
//  Counters
//
//  Created by GreenyCells (Mineturtlee) on 8/8/25.
//

import SwiftUI
import SwiftData



struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Addition Counter", destination: AddCount())
                NavigationLink("Subtraction Counter", destination: SubCount())
                NavigationLink("\"Restore In Progress\" Counter", destination: RestoreCount())
                NavigationLink("Haptic Counters", destination: HapticCount())
                NavigationLink("Hello World Screen", destination: HelloWorld())
            }
            .navigationTitle("Counters")
        }
    }
}

#Preview {
    ContentView()
}
