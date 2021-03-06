//
//  VIPERRouter.swift
//  Archetecture
//
//  Created by ilyas.ikhsanov on 21.02.2022.
//

import UIKit

protocol VIPERRouterProtocol {
    func showErrorAlert()
    func showMVPModule()
}

final class VIPERRouter: VIPERRouterProtocol {
    
    weak var view: UIViewController?
    
    // MARK: - VIPERRouterProtocol
    func showErrorAlert() {
        let alert = UIAlertController(title: "Внимание!", message: "Пришла ошибка", preferredStyle: .actionSheet)
        view?.present(alert, animated: true, completion: nil)
    }
    
    func showMVPModule() {
        let assemble = MVPAssembly()
        let mvpView = assemble.assemble()
        view?.present(mvpView, animated: true, completion: nil)
    }
}
