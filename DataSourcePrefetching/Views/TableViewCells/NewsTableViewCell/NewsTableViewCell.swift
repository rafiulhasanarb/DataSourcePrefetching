//
//  NewsTableViewCell.swift
//  DataSourcePrefetching
//
//  Created by rafiul hasan on 15/2/23.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func configureCell(with news: News){
        self.titleLabel.text = news.title
        self.urlLabel.text = news.url
        self.authorLabel.text = news.by
    }
    
    func truncateCell(){
        self.titleLabel.text = "Loading..."
        self.urlLabel.text = "Loading..."
        self.authorLabel.text = "Loading..."
    }
}
