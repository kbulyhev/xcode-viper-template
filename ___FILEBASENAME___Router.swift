//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation
import UIKit

class ___VARIABLE_ModuleName___Router : ___VARIABLE_ModuleName___RouterProtocol {
   
     static var storyboard: UIStoryboard {
       return UIStoryboard(name: "name", bundle: nil)
    }

    static func setupModule() -> ___VARIABLE_ModuleName___ViewController? {
        let viewController = storyboard.instantiateViewController(withIdentifier: "identifier") as? ___VARIABLE_ModuleName___ViewController
        let presenter = ___VARIABLE_ModuleName___Presenter()
        let router = ___VARIABLE_ModuleName___Router()
        let interactor = ___VARIABLE_ModuleName___Interactor()

        viewController?.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        interactor.presenter = presenter

        return viewController
    }
}
