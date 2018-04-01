//
//  CKService.swift
//  Push Notification
//
//  Created by Kaleo Kim on 3/31/18.
//  Copyright © 2018 Kaleo Kim. All rights reserved.
//

import Foundation
import CloudKit

class CKService {
    private init() {}
    static let shared = CKService()
    
    let privateDatabase = CKContainer.default().publicCloudDatabase
    
    func save(record: CKRecord) {
        privateDatabase.save(record) { (record, error) in
            print(error ?? "no ck error")
            print(record ?? "no ck record saved")
        }
    }
}
