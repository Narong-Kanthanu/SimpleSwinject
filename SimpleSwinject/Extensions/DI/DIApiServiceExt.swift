//
//  DIApiServiceExt.swift
//  SimpleSwinject
//
//  Created by Narong Kanthanu on 17/4/2565 BE.
//

import Foundation
import Swinject

extension Container {
    func registerApiService() {
        self.register(DocumentAPI.self) { _ in DocumentAPI() }
    }
}
