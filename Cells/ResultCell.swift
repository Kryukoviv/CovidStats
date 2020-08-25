//
//  ResultCell.swift
//  Swift-Tutorial
//
//  Created by User on 14/04/2020.
//  Copyright © 2020 Ilya Glazunov. All rights reserved.
//

import UIKit

class ResultCell: UITableViewCell {
    
 private func makeHorizontalStackView() -> UIStackView {
         let stackView = UIStackView()
         stackView.axis = .horizontal
         
         return stackView
     }
     
     private func makeImageView() -> UIImageView {
         let imageView = UIImageView()
         imageView.contentMode = .scaleAspectFit
         return imageView
     }
     
     private func makeLabel() -> UILabel {
         let label = UILabel()
         label.font = UIFont(name: "comfortaa", size: 25)
         label.textColor = .black
         
         return label
     }
     
     let generalStackView: UIStackView = {
         let stackView = UIStackView()
         stackView.axis = .vertical
         stackView.distribution = .fillEqually
         stackView.contentMode = .center
         
         return stackView
     } ()
     
     lazy var sickStackView = self.makeHorizontalStackView()
     lazy var deathStackView = self.makeHorizontalStackView()
     lazy var healthyStackView = self.makeHorizontalStackView()
     lazy var sickImageView = self.makeImageView()
     lazy var deathImageView = self.makeImageView()
     lazy var healthyImageView = self.makeImageView()
     lazy var sickLabel = self.makeLabel()
     lazy var deathLabel = self.makeLabel()
     lazy var healthyLabel = self.makeLabel()
     
     override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
         super.init(style: style, reuseIdentifier: reuseIdentifier)
                 
         setupViews()
         makeConstraints()
     }
             
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     
     private func setupViews() {
         contentView.addSubview(generalStackView)
         generalStackView.addArrangedSubview(sickStackView)
         generalStackView.addArrangedSubview(deathStackView)
         generalStackView.addArrangedSubview(healthyStackView)
         sickStackView.addArrangedSubview(sickImageView)
         sickStackView.addArrangedSubview(sickLabel)
         deathStackView.addArrangedSubview(deathImageView)
         deathStackView.addArrangedSubview(deathLabel)
         healthyStackView.addArrangedSubview(healthyImageView)
         healthyStackView.addArrangedSubview(healthyLabel)
     }
     
     private func makeConstraints() {
         
         generalStackView.translatesAutoresizingMaskIntoConstraints = false
         sickStackView.translatesAutoresizingMaskIntoConstraints = false
         deathStackView.translatesAutoresizingMaskIntoConstraints = false
         healthyStackView.translatesAutoresizingMaskIntoConstraints = false
         sickImageView.translatesAutoresizingMaskIntoConstraints = false
         sickLabel.translatesAutoresizingMaskIntoConstraints = false
         deathImageView.translatesAutoresizingMaskIntoConstraints = false
         deathLabel.translatesAutoresizingMaskIntoConstraints = false
         healthyImageView.translatesAutoresizingMaskIntoConstraints = false
         healthyLabel.translatesAutoresizingMaskIntoConstraints = false

         NSLayoutConstraint.activate([
             generalStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
             generalStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
             generalStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
             generalStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),

         
         ])
         
         NSLayoutConstraint.activate([
             sickImageView.leadingAnchor.constraint(equalTo: sickStackView.leadingAnchor),
             sickImageView.topAnchor.constraint(equalTo: sickStackView.topAnchor),
             sickImageView.bottomAnchor.constraint(equalTo: sickStackView.bottomAnchor),
             sickImageView.trailingAnchor.constraint(equalTo: sickLabel.leadingAnchor),
             sickImageView.widthAnchor.constraint(equalToConstant: 39.0),
             sickImageView.heightAnchor.constraint(equalToConstant: 39.0)
             
         ])
         
         NSLayoutConstraint.activate([
             sickStackView.topAnchor.constraint(equalTo: contentView.topAnchor),
             
         ])
         
         NSLayoutConstraint.activate([
             deathImageView.leadingAnchor.constraint(equalTo: deathStackView.leadingAnchor),
             deathImageView.topAnchor.constraint(equalTo: deathStackView.topAnchor),
             deathImageView.trailingAnchor.constraint(equalTo: deathLabel.leadingAnchor),
             deathImageView.bottomAnchor.constraint(equalTo: deathStackView.bottomAnchor),
             deathImageView.widthAnchor.constraint(equalToConstant: 39.0),
             deathImageView.heightAnchor.constraint(equalToConstant: 39.0)
             
         ])
         
         NSLayoutConstraint.activate([
             healthyImageView.leadingAnchor.constraint(equalTo: healthyStackView.leadingAnchor),
             healthyImageView.topAnchor.constraint(equalTo: healthyStackView.topAnchor),
             healthyImageView.trailingAnchor.constraint(equalTo: healthyLabel.leadingAnchor),
             healthyImageView.bottomAnchor.constraint(equalTo: healthyStackView.bottomAnchor),
             healthyImageView.widthAnchor.constraint(equalToConstant: 39.0),
             healthyImageView.heightAnchor.constraint(equalToConstant: 39.0)
             
         ])
         
         NSLayoutConstraint.activate([
             healthyLabel.leadingAnchor.constraint(equalTo: healthyImageView.trailingAnchor),
             healthyLabel.topAnchor.constraint(equalTo: healthyStackView.topAnchor),
             healthyLabel.trailingAnchor.constraint(equalTo: healthyStackView.trailingAnchor),
             healthyLabel.bottomAnchor.constraint(equalTo: healthyStackView.bottomAnchor)
             
         ])
         
         NSLayoutConstraint.activate([
             sickLabel.leadingAnchor.constraint(equalTo: sickImageView.trailingAnchor),
             sickLabel.topAnchor.constraint(equalTo: sickStackView.topAnchor),
             sickLabel.trailingAnchor.constraint(equalTo: sickStackView.trailingAnchor),
             sickLabel.bottomAnchor.constraint(equalTo: sickStackView.bottomAnchor)
             
         ])
         
         NSLayoutConstraint.activate([
             deathLabel.leadingAnchor.constraint(equalTo: deathImageView.trailingAnchor),
             deathLabel.topAnchor.constraint(equalTo: deathStackView.topAnchor),
             deathLabel.trailingAnchor.constraint(equalTo: deathStackView.trailingAnchor),
             deathLabel.bottomAnchor.constraint(equalTo: deathStackView.bottomAnchor)
             
         ])
         
         NSLayoutConstraint.activate([
             healthyStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
         ])
     }

 }
