//
//  DIManagerExt.swift
//  SimpleSwinject
//
//  Created by Narong Kanthanu on 17/4/2565 BE.
//

import Foundation
import Swinject

extension Container {
    func registerManager() {
        self.register(CalculatorManager.self) { _ in CalculatorManager() }
        self.register(DocumentCalculatorManager.self) { r in
            let calculatorManager: CalculatorManager = r.resolve(CalculatorManager.self)!
            return DocumentCalculatorManager(calculator: calculatorManager)
        }
    }
}
