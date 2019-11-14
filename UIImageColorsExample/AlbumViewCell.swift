//
//  AlbumViewCell.swift
//  UIImageColorsExample
//
//  Created by Jathu Satkunarajah on 2017-11-30 - Toronto
//  Copyright © 2017 Jathu Satkunarajah. All rights reserved.
//

import UIKit
import SDWebImage
class AlbumViewCell: UICollectionViewCell {
    
    let imageView: UIImageView = {
        let i = UIImageView()
        i.translatesAutoresizingMaskIntoConstraints = false
        i.contentMode = .scaleAspectFill
        i.layer.masksToBounds = true
        return i
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Add subview
        self.contentView.addSubview(self.imageView)
        
        // Constraints
        NSLayoutConstraint.activate([
            self.imageView.topAnchor.constraint(equalTo: self.contentView.topAnchor),
            self.imageView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            self.imageView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            self.imageView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func loadImage(image: Image?) {
        if let image = image , let url = URL(string: image.url) {
            self.imageView.sd_setImage(with: url, completed: nil)
        }
    }
    
}
