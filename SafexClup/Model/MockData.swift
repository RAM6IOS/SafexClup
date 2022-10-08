//
//  MockData.swif.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 8/10/2022.
//

import Foundation
import CloudKit

struct MockData {
    
    static var location: CKRecord {
        let record = CKRecord(recordType: "LocationModel")
        record[LocationModel.kName]           = "Bouhedoub Ramzi Mohamed"
        record[LocationModel.kAddress]        = "123 Main Street"
        record[LocationModel.kDescription]    = "This is a test decription. Isn't it awesome. Not sure how long to make it to test the 3 lines."
        record[LocationModel.kWebsiteURL]     = "https://github.com/RAM6IOS"
        record[LocationModel.kLocation]       = CLLocation(latitude: 36.733934, longitude: 3.148216)
        record[LocationModel.kPhoneNumber]    = "111-111-1111"
        
        return record
    }
}

