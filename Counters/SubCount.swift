//
//  SubCount.swift
//  Counters
//
//  Created by GreenyCells (Mineturtlee) on 9/8/25.
//

import SwiftUI

struct SubCount: View {
    @State private var counter: Int = UserDefaults.standard.integer(forKey: "subtractioncounter")
    var body: some View {
        VStack {
            Button(action: {
                counter -= 1
                UserDefaults.standard.set(counter, forKey: "subtractioncounter")
                let impact = UIImpactFeedbackGenerator(style: .light)
                impact.impactOccurred()
            }, label: {
                Text("Click me")
            }
            )
            .padding()
            .foregroundStyle(.blue)
            .background(Color(red: 1, green: 0.0, blue: 0.0))
            .cornerRadius(15)
            Text("Current number: \(counter)")
                .foregroundColor(.gray)
        }
        .navigationTitle("Decremental Counter")
        .navigationBarTitleDisplayMode(.inline)
    }
}
