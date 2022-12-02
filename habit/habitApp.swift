//
//  habitApp.swift
//  habit
//
//  Created by Aaron Anthony on 2022-12-02.
//

import SwiftUI

@main
struct habitApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                absHabits
                    .tag(0)
                    .tabItem {
                        Label("habits", systemImage: "bolt.fill")
                    }
                
                crtHabits
                    .tag(1)
                    .tabItem {
                        Label("today", systemImage: "bolt.fill")
                    }
            }
        }
    }
    
    var absHabits: some View {
        NavigationStack {
            List {
                Section(header: Text("dawn")) {
                    Text("meditate")
                    Text("2k run")
                    Text("shower")
                }
                
                Section(header: Text("dusk")) {
                    Text("meditate")
                    Text("journal")
                    Text("sleep learning")
                }
            }
            .navigationTitle("absHabits")
        }
    }
    
    var crtHabits: some View {
        NavigationStack {
            List {
                Section(header: Text("dawn")) {
                    Text("meditate")
                    Text("2k run")
                    Text("shower")
                }
                
                Section(header: Text("dusk")) {
                    Text("meditate")
                    Text("journal")
                    Text("sleep learning")
                }
            }
            .navigationTitle("crtHabits")
        }
    }
}
