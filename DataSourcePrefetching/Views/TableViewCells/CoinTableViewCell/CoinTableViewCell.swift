//
//  CoinTableViewCell.swift
//  DataSourcePrefetching
//
//  Created by rafiul hasan on 15/2/23.
//

import UIKit

class CoinTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var symbolLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func configureCell(with coin: Coin){
        self.nameLabel.text = coin.name
        self.symbolLabel.text = coin.symbol
        self.rankLabel.text = "# \(coin.rank)"
        self.priceLabel.text = "$ \(coin.quotes["USD"]!.price)"
    }
}
