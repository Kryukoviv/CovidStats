//
//  CovidStatsImageCellModel.swift
//  Swift-Tutorial
//
//  Created by Игорь on 03/05/2020.
//  Copyright © 2020 Ilya Glazunov. All rights reserved.
//

import UIKit

struct ImageCellModel: PTableViewCellModel {
    
    let covidImage: UIImage
    let infoLabelText: String
    
    func configure(cell: ImageCell) {
        cell.covidImageView.image = covidImage
        cell.infoLabel.text = infoLabelText
    }
}

