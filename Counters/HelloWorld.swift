//
//  ContentView 2.swift
//  Counters
//
//  Created by GreenyCells (Mineturtlee) on 9/8/25.
//

import SwiftUI

struct HelloWorld: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .navigationTitle("Hello World Screen")
        .navigationBarTitleDisplayMode(.inline)
    }
}
