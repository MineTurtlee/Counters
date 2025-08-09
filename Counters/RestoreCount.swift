//
//  RestoreCount.swift
//  Counters
//
//  Created by GreenyCells (Mineturtlee) on 9/8/25.
//

import SwiftUI
import notify

struct RestoreCount: View {
    @State private var counter: Int = UserDefaults.standard.integer(forKey: "restorecounter")
    var body: some View {
        VStack {
            
            Text("Proceed with caution ;)")
            Button(action: {
                counter += 1
                UserDefaults.standard.set(counter, forKey: "restorecounter")
                notify_post("com.apple.MobileSync.BackupAgent.RestoreStarted")
            }, label: {
                Text("Restore")
            }
            )
            .padding()
            .foregroundColor(.white)
            .background(Color(red: 0.5, green: 0, blue: 0))
            .cornerRadius(15)
            Text("Count: \(counter)")
                .foregroundColor(.gray)
        }
        .navigationTitle("\"Restore In Progress\" Counter")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    RestoreCount()
}
