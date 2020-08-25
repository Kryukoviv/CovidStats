//
//  CovidStatsRouter.swift
//  Swift-Tutorial
//
//  Created by Igor Kryukov on 24/04/2020.
//  Copyright © 2020 Ilya Glazunov. All rights reserved.
//

import Foundation
import UIKit

class CovidStatsPresenter {
    weak var view: CovidStatsViewController?
    private let covidAPI: CovidAPIProtocol
    
    init(
        view: CovidStatsViewController,
        covidAPI: CovidAPIProtocol
    ) {
        self.view = view
        self.covidAPI = covidAPI
    }
    
    func viewDidLoad(){
        let cellModels: [PTableViewCellAnyModel] = [
            ImageCellModel(covidImage: #imageLiteral(resourceName: "covidIcon"), infoLabelText: Strings.infoLabelText),
            DateCellModel(dateLabelText: Strings.date.dayMonthString),
            TextCellModel(countryTextFieldText: Strings.countryTextFieldText, provinceTextFieldText: Strings.provinceTextFieldText, cityTextFieldText: Strings.cityTextFieldText),
            ResultCellModel(sickImageViewImage: #imageLiteral(resourceName: "sickIcon"), deathImageViewImage: #imageLiteral(resourceName: "deathIcon"), healthyImageViewImage: #imageLiteral(resourceName: "healthIcon"))
        ]
        
        view?.showData(with: cellModels)
    }
}
