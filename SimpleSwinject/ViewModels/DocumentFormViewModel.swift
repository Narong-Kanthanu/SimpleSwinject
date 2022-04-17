//
//  DocumentFormViewModel.swift
//  SimpleSwinject
//
//  Created by Narong Kanthanu on 17/4/2565 BE.
//

import Foundation

class DocumentFormViewModel {
    
    private let apiService: DocumentAPI
    private let documentCalculatorManager: DocumentCalculatorManager
    private let model: DocumentModel

    init(model: DocumentModel, apiService: DocumentAPI, documentCalculatorManager: DocumentCalculatorManager) {
      self.model = model
      self.apiService = apiService
      self.documentCalculatorManager = documentCalculatorManager
    }
    
    func getDocumentList() -> [DocumentModel] {
        return apiService.getList()
    }
}
