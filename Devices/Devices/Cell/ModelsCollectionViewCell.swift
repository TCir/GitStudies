//
//  ModelsCollectionViewCell.swift
//  Devices
//
//  Created by Thiago Valentim on 27/04/22.
//

import UIKit

class ModelsCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var iphoneImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    static let identifier:String = "ModelsCollectionViewCell"
    static func nib()-> UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    //
    public func setUpCell(profile:Profile){
        self.iphoneImageView.image = profile.image
        self.nameLabel.text = profile.name
    }

}
