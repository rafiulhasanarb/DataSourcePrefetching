//
//  ImageTableViewCell.swift
//  DataSourcePrefetching
//
//  Created by rafiul hasan on 15/2/23.
//

import UIKit

class ImageTableViewCell: UITableViewCell {
    
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var thumbImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateAppearanceFor(_ image: UIImage?) {
        DispatchQueue.main.async { [unowned self] in
            self.displayImage(image)
        }
    }
    
    private func displayImage(_ image: UIImage?) {
        if let _image = image {
            thumbImageView.image = _image
            loadingIndicator.stopAnimating()
            loadingIndicator.isHidden = true
        } else {
            loadingIndicator.startAnimating()
            loadingIndicator.isHidden = false
            thumbImageView.image = .none
        }
    }
}
