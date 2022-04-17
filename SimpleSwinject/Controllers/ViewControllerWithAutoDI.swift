//
//  ViewControllerWithAutoDI.swift
//  SimpleSwinject
//
//  Created by Narong Kanthanu on 18/4/2565 BE.
//

import UIKit

class ViewControllerWithAutoDI: UIViewController {
    
    private var viewModel: DocumentFormViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        viewModel = container.resolve(DocumentFormViewModel.self)
    }
}
