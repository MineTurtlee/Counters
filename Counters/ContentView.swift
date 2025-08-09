//
//  ContentView.swift
//  Counters
//
//  Created by GreenyCells (Mineturtlee) on 8/8/25.
//

import SwiftUI
import SwiftData



struct ContentView: View {
    @State var ResetButtonClicked = false
    var body: some View {
        NavigationStack {
            List {
                Section(header: Text("")) {
                    NavigationLink("Incremental Counter", destination: AddCount())
                    NavigationLink("Decremental Counter", destination: SubCount())
                    NavigationLink("\"Restore In Progress\" Counter", destination: RestoreCount())
                    NavigationLink("Haptic Counters", destination: HapticCount())
                    NavigationLink("Hello World Screen", destination: HelloWorld())
                    NavigationLink("Multiplication Count", destination: MultiCount())
                }
                Section(header: Text("")) {
                    Button(action: {
                        ResetButtonClicked = true
                    }, label: {
                        Text("Reset...")
                    })
                    .popover(isPresented: $ResetButtonClicked) {
                        ResetSelector()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
