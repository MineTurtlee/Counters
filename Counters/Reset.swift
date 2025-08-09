//
//  Reset.swift
//  Counters
//
//  Created by GreenyCells (Mineturtlee) on 9/8/25.
//

import SwiftUI

struct ResetCandidate: Identifiable {
    let id = UUID()
    var name: String
    var isOn: Bool
    var keyname: String
}

struct ResetSelector: View {
    @State private var ResetCandidates: [ResetCandidate] = [
        ResetCandidate(name: "Incremental counter", isOn: false, keyname: "additionalcounter"),
        ResetCandidate(name: "Decremental counter", isOn: false, keyname: "subtractioncounter"),
        ResetCandidate(name: "\"Restore in progress\" counter", isOn: false, keyname: "restorecounter"),
        ResetCandidate(name: "Haptic (Light) counter", isOn: false, keyname: "lightcounter"),
        ResetCandidate(name: "Haptic (Medium) counter", isOn: false, keyname: "medcounter"),
        ResetCandidate(name: "Haptic (Heavy) counter", isOn: false, keyname: "heavycounter"),
        ResetCandidate(name: "Haptic (Rigid) counter", isOn: false, keyname: "rigidcounter"),
        ResetCandidate(name: "Haptic (Soft) counter", isOn: false, keyname: "softcounter"),
        ResetCandidate(name: "Multiplication counter", isOn: false, keyname: "multicounter")
    ]
    @AppStorage("additionalcounter") var additionalCounter: Int = 0
    @AppStorage("subtractioncounter") var subtractionCounter: Int = 0
    @AppStorage("restorecounter") var restoreCounter: Int = 0
    @AppStorage("lightcounter") var lightCounter: Int = 0
    @AppStorage("medcounter") var medCounter: Int = 0
    @AppStorage("heavycounter") var heavyCounter: Int = 0
    @AppStorage("rigidcounter") var rigidCounter: Int = 0
    @AppStorage("softcounter") var softCounter: Int = 0
    @AppStorage("multicounter") var multicounter: Int = 0
    func reset(name : String) {
        func reset(name: String) {
            switch name {
            case "additionalcounter": additionalCounter = 0
            case "subtractioncounter": subtractionCounter = 0
            case "restorecounter": restoreCounter = 0
            case "lightcounter": lightCounter = 0
            case "medcounter": medCounter = 0
            case "heavycounter": heavyCounter = 0
            case "rigidcounter": rigidCounter = 0
            case "softcounter": softCounter = 0
            case "multicounter": multicounter = 0
            default: break
            }
        }
    }
    @State var showConfirmation = false
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Items to reset")) {
                    ForEach($ResetCandidates) { $candidate in
                        Toggle(candidate.name, isOn: $candidate.isOn)
                    }
                }
                Section(header: Text("")) {
                    Button (
                        action: {
                            for candidate in ResetCandidates {
                                if candidate.isOn {
                                    reset(name: candidate.keyname)
                                }
                            }
                            showConfirmation = true
                        },
                        label: {
                            Text("Reset")
                        }
                    )
                    .alert(isPresented: $showConfirmation) {
                        Alert(
                            title: Text("Counters reset"),
                            message: Text("The selected counters have been reset to 0"),
                            dismissButton: .default(Text("OK"))
                        )
                    }
                }
            }
        }
    }
}
