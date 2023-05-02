//
//  ViewController.swift
//  Build-Scheme-Example
//
//  Created by Sparkout on 02/05/23.
//

import UIKit

extension Bundle {
    static let baseUrl: String = "Base URL"
    func infoForKey(_ key: String) -> String? {
        (Bundle.main.infoDictionary?[key.description] as? String)?.replacingOccurrences(of: "\\", with: "")
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var buildTypeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buildTypeLabel.text = "Live"
        buildTypeLabel.text = Bundle.main.infoForKey(Bundle.baseUrl)
    }
}

