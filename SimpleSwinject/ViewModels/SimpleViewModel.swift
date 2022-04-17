//
//  SimpleViewModel.swift
//  SimpleSwinject
//
//  Created by Narong Kanthanu on 17/4/2565 BE.
//

import Foundation

class SimpleViewModel {
    
    // Dependency
    private let apiService: DocumentAPI = DocumentAPI()
    private let calculator: CalculatorManager = CalculatorManager()
    private let documentCalculator: DocumentCalculatorManager
    
    init() {
        // Constructor Injection
        documentCalculator = DocumentCalculatorManager(calculator: calculator)
    }
    
}
