//
//  DocumentModel.swift
//  SimpleSwinject
//
//  Created by Narong Kanthanu on 17/4/2565 BE.
//

import Foundation

struct DocumentModel {
   var id: Int
   var serial: String
   var remarks: String
   
   init() {
     self.id = 0
     self.serial = ""
     self.remarks = ""
   }
}
