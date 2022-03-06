//
//  SAButton.swift
//  Chronus
//
//  Created by Aryaa Shah on 2/7/22.
//

import UIKit


class SAButton: UIButton {
    
    @IBOutlet weak var emailButtonTapped: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton() {
        setTitleColor(.white, for: .normal)
        
    }
}
