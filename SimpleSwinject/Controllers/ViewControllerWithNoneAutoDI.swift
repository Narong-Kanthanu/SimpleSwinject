//
//  ViewControllerWithNoneAutoDI.swift
//  SimpleSwinject
//
//  Created by Narong Kanthanu on 17/4/2565 BE.
//

import UIKit

class ViewControllerWithNoneAutoDI: UIViewController {
    
    private let documentModel: DocumentModel = DocumentModel()
    private let apiService: DocumentAPI = DocumentAPI()
    private let calculatorManager: CalculatorManager = CalculatorManager()
    
    private var documentCalculatorManager: DocumentCalculatorManager!
    private var viewModel: DocumentFormViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        documentCalculatorManager = DocumentCalculatorManager(calculator: calculatorManager)
        viewModel = DocumentFormViewModel(
            model: documentModel,
            apiService: apiService,
            documentCalculatorManager: documentCalculatorManager
        )
    }
}

