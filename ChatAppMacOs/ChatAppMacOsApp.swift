//
//  ChatAppMacOsApp.swift
//  ChatAppMacOs
//
//  Created by Maliks on 31/03/2024.
//

import SwiftUI

@main
struct ChatAppMacOsApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}

extension NSTextField {
    open override var focusRingType: NSFocusRingType {
        get { .none }
        set {}
    }
}
