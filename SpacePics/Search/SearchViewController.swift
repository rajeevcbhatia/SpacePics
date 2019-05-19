//
//  SearchViewController.swift
//  SpacePics
//
//  Created by Rajeev Bhatia on 19/05/19.
//  Copyright © 2019 rajeev. All rights reserved.
//

import UIKit

class SearchViewController: BaseViewController {
    
    @IBOutlet weak var searchTextField: UITextField! {
        didSet {
            searchTextField.text = ""
            searchTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
            searchTextField.delegate = self
        }
    }
    
    @IBOutlet weak var searchButton: UIButton! {
        didSet {
            searchButton.isHidden = true
        }
    }
    
    @objc func textFieldDidChange(textField: UITextField) {
        searchButton.isHidden = textField.text?.count == 0
    }
}

extension SearchViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
       
        let newString = ((textField.text ?? "") as NSString).replacingCharacters(in: range, with: string)
        
        //empty string is allowed
        if newString == "" { return true }
        
        return newString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) != ""
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        guard let text = textField.text else { return false }
        
        if text.count > 0 {
            return true
        } else {
            return false
        }
    }
}
