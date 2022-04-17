//
//  DIViewModelExt.swift
//  SimpleSwinject
//
//  Created by Narong Kanthanu on 17/4/2565 BE.
//

import Foundation
import Swinject

extension Container {
    func registerViewModel() {
        register(DocumentFormViewModel.self) { r in
            let model: DocumentModel = DocumentModel()
            let apiService: DocumentAPI = r.resolve(DocumentAPI.self)!
            let documentCalculatorManager: DocumentCalculatorManager = r.resolve(DocumentCalculatorManager.self)!
            return DocumentFormViewModel(
                model: model,
                apiService: apiService,
                documentCalculatorManager: documentCalculatorManager
            )
        }
    }
}
