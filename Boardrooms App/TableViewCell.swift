//
//  TableViewCell.swift
//  UIKitTableView
//
//  Created by Lola Almasari on 22/08/1444 AH.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var productImage: UIImageView!
    @IBOutlet var productName: UILabel!
    @IBOutlet var productDesc: UILabel!
   

  
    @IBOutlet weak var iimm: UIImageView!
    
    @IBOutlet weak var availableL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        //Edit available label
      
       // availableL.textColor = .white
       // availableL.clipsToBounds = true
      //  availableL.layer.cornerRadius = availableL.frame.height/2
        
      //  if availableL.text != "Unavailable" {
       //     availableL.backgroundColor = .black
       // } else if availableL.text == "Unavailable" {
       //     availableL.backgroundColor = .blue
      //  }
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
