//
//  AddCount.swift
//  Counters
//
//  Created by GreenyCells (Mineturtlee) on 9/8/25.
//

import SwiftUI

struct AddCount: View {
    @State private var counter: Int = UserDefaults.standard.integer(forKey: "additionalcounter")
    var body: some View {
        VStack {
            Button(action: {
                counter += 1
                UserDefaults.standard.set(counter, forKey: "additionalcounter")
                let impactMed = UIImpactFeedbackGenerator(style: .heavy)
                impactMed.impactOccurred()
            }, label: {
                Text("Click me")
            }
            )
            .padding()
            .foregroundStyle(.blue)
            .background(Color(red: 0.0, green: 0.4, blue: 0.0))
            .cornerRadius(15)
            Text("Current number: \(counter)")
                .foregroundColor(.gray)
        }
        .navigationTitle("Addition Counter")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    AddCount()
}
