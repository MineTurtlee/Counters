//
//  MultiCount.swift
//  Counters
//
//  Created by GreenyCells (Mineturtlee) on 9/8/25.
//

import SwiftUI

struct MultiCount: View {
    @State private var counter: Int = UserDefaults.standard.integer(forKey: "multicounter")
    var body: some View {
        Button(action: {
            if (counter == 4611686018427387904) {
                counter = 4611686018427387904
            }
            else if (counter != 0) {
                counter = counter * 2
            }
            else {
                counter = 1
            }
            UserDefaults.standard.set(counter, forKey: "multicounter")
            Haptic.med().impactOccurred()
        }, label: {
            Text("Click me!")
        }
        )
        .padding()
        .background(.blue)
        .foregroundColor(.white)
        .cornerRadius(15)
        Text("Current number: \(counter)")
            .foregroundColor(.gray)
        VStack {
            if counter == 4611686018427387904 {
                Text("Congrats, you have successfully reached the maximum number this project handles (huhhh)!")
                    .font(.system(size: 12))
            }
        }
    }
}
