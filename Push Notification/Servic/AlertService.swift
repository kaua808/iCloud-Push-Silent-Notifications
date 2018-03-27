//
//  AlertService.swift
//  Push Notification
//
//  Created by Kaleo Kim on 3/26/18.
//  Copyright © 2018 Kaleo Kim. All rights reserved.
//

import Foundation
import UIKit

class AlertService {
    
    private init() {}
    
    static func composeNote(in vc: UIViewController, completion: @escaping (Note) -> Void) {
        
        let alert = UIAlertController(title: "New Note", message: "What's on your mind?", preferredStyle: .alert)
        alert.addTextField { (titleTextField) in
            titleTextField.placeholder = "Title"
        }
        
        let postAction = UIAlertAction(title: "Poset", style: .default) { (_) in
            guard let title = alert.textFields?.first?.text else { return }
            let note = Note(title: title)
            completion(note)
        }
        alert.addAction(postAction)
        vc.present(alert, animated: true, completion: nil)
    }
    
}
