//
//  ImageCell.swift
//  Swift-Tutorial
//
//  Created by User on 14/04/2020.
//  Copyright © 2020 Ilya Glazunov. All rights reserved.
//

import UIKit

class ImageCell: UITableViewCell {
    let covidImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        
        
        return imageView
    }()
    
    let infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "comfortaa", size: 40)
        label.textColor = .black
        label.textAlignment = .center
        
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupViews()
        makeConstraints()
    }
    
   required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
      }
    
    private func setupViews() {
        contentView.addSubview(covidImageView)
        contentView.addSubview(infoLabel)
    }
    
    private func makeConstraints() {
        covidImageView.translatesAutoresizingMaskIntoConstraints = false
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            infoLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            infoLabel.bottomAnchor.constraint(equalTo: covidImageView.topAnchor),
            infoLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            covidImageView.centerXAnchor.constraint(equalTo: infoLabel.centerXAnchor),
            covidImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
}


  
