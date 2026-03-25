//
//  ContentView.swift
//  KMPDemo
//
//  Created by Utsav Shah on 25/03/26.
//

import DemoViewSDK
import KMPSDK
import SwiftUI

// MARK: - Composition root (App layer)
/// Single place that constructs **KMPSDK** services and passes them into **DemoViewSDK**.
/// `LiveArithmeticCalculator` is a `struct` (value type) — no reference cycle with the UI tree.
struct ContentView: View {
    private let calculator = LiveArithmeticCalculator()

    var body: some View {
        DemoCalculatorScreen(calculator: calculator)
    }
}

#Preview {
    ContentView()
}
