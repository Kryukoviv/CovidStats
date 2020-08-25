//
//  ResultCellModel.swift
//  Swift-Tutorial
//
//  Created by Игорь on 16/07/2020.
//  Copyright © 2020 Ilya Glazunov. All rights reserved.
//
import Foundation
import UIKit

struct ResultCellModel: PTableViewCellModel {
    
    let sickImageViewImage: UIImage 
    let deathImageViewImage: UIImage
    let healthyImageViewImage: UIImage

    func configure(cell: ResultCell) {
        cell.sickImageView.image = sickImageViewImage
        cell.deathImageView.image = deathImageViewImage
        cell.healthyImageView.image = healthyImageViewImage
    }
    
    
}
