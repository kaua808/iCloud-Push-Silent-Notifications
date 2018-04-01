//
//  Notes.swift
//  Push Notification
//
//  Created by Kaleo Kim on 3/26/18.
//  Copyright © 2018 Kaleo Kim. All rights reserved.
//

import Foundation
import CloudKit

struct Note {
    
    static let recordType = "Note"
    let title: String
    
    func noteRecord() -> CKRecord {
        let record = CKRecord(recordType: Note.recordType)
        record.setValue(title, forKey: "title")
        return record
    }
    
}
