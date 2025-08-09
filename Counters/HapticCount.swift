//
//  HapticCount.swift
//  Counters
//
//  Created by GreenyCells (Mineturtlee) on 9/8/25.
//

import SwiftUI

class Haptic {
    static func light() -> UIImpactFeedbackGenerator {
        let impactlight = UIImpactFeedbackGenerator(style: .light)
        return impactlight
    }
    
    static func med() -> UIImpactFeedbackGenerator {
        let impactmedium = UIImpactFeedbackGenerator(style: .medium)
        return impactmedium
    }
    
    static func heavy() -> UIImpactFeedbackGenerator {
        let impactheavy = UIImpactFeedbackGenerator(style: .heavy)
        return impactheavy
    }
    
    static func rigid() -> UIImpactFeedbackGenerator {
        let impactrigid = UIImpactFeedbackGenerator(style: .rigid)
        return impactrigid
    }
    static func soft() -> UIImpactFeedbackGenerator {
        let impactsoft = UIImpactFeedbackGenerator(style: .soft)
        return impactsoft
    }
}

struct HapticCount: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Light Haptic", destination: HapticLight())
                NavigationLink("Medium Haptic", destination: HapticMedium())
                NavigationLink("Heavy Haptic", destination: HapticHeavy())
                NavigationLink("Rigid Haptic", destination: HapticRigid())
                NavigationLink("Soft Haptic", destination: HapticSoft())
            }
        }
        .navigationTitle("Haptic Counters")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HapticLight: View {
    @State private var counter: Int = UserDefaults.standard.integer(forKey: "lightcounter")
    var body: some View {
        VStack {
            Button(action: {
                counter += 1
                UserDefaults.standard.set(counter, forKey: "lightcounter")
                Haptic.light().impactOccurred()
            }, label: {
                Text("Click me")
            }
            )
            .padding()
            .foregroundStyle(.white)
            .background(.cyan)
            .cornerRadius(15)
            Text("Current number: \(counter)")
                .foregroundColor(.gray)
        }
        .navigationTitle("Light Haptic Counter")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HapticMedium: View {
    @State private var counter: Int = UserDefaults.standard.integer(forKey: "medcounter")
    var body: some View {
        VStack {
            Button(action: {
                counter += 1
                UserDefaults.standard.set(counter, forKey: "medcounter")
                Haptic.med().impactOccurred()
            }, label: {
                Text("Click me")
            }
            )
            .padding()
            .foregroundStyle(.white)
            .background(.cyan)
            .cornerRadius(15)
            Text("Current number: \(counter)")
                .foregroundColor(.gray)
        }
        .navigationTitle("Medium Haptic Counter")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HapticHeavy: View {
    @State private var counter: Int = UserDefaults.standard.integer(forKey: "heavycounter")
    var body: some View {
        VStack {
            Button(action: {
                counter += 1
                UserDefaults.standard.set(counter, forKey: "heavycounter")
                Haptic.heavy().impactOccurred()
            }, label: {
                Text("Click me")
            }
            )
            .padding()
            .foregroundStyle(.white)
            .background(.cyan)
            .cornerRadius(15)
            Text("Current number: \(counter)")
                .foregroundColor(.gray)
        }
        .navigationTitle("Heavy Haptic Counter")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HapticRigid: View {
    @State private var counter: Int = UserDefaults.standard.integer(forKey: "rigidcounter")
    var body: some View {
        VStack {
            Button(action: {
                counter += 1
                UserDefaults.standard.set(counter, forKey: "rigidcounter")
                Haptic.rigid().impactOccurred()
            }, label: {
                Text("Click me")
            }
            )
            .padding()
            .foregroundStyle(.white)
            .background(.cyan)
            .cornerRadius(15)
            Text("Current number: \(counter)")
                .foregroundColor(.gray)
        }
        .navigationTitle("Rigid Haptic Counter")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct HapticSoft: View {
    @State private var counter: Int = UserDefaults.standard.integer(forKey: "softcounter")
    var body: some View {
        VStack {
            Button(action: {
                counter += 1
                UserDefaults.standard.set(counter, forKey: "softcounter")
                Haptic.soft().impactOccurred()
            }, label: {
                Text("Click me")
            }
            )
            .padding()
            .foregroundStyle(.white)
            .background(.cyan)
            .cornerRadius(15)
            Text("Current number: \(counter)")
                .foregroundColor(.gray)
        }
        .navigationTitle("Soft Haptic Counter")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HapticCount()
}
