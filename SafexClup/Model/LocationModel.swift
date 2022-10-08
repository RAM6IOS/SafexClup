//
//  LocationModel.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 8/10/2022.
//

import Foundation
import CloudKit

struct LocationModel {
    static let kName        = "name"
    static let kDescription = "description"
    static let kSquareAsset = "squareAsset"
    static let kBannerAsset = "bannerAsset"
    static let kAddress     = "address"
    static let kLocation    = "location"
    static let kWebsiteURL  = "websiteURL"
    static let kPhoneNumber = "phoneNumber"
    
    let ckRecordID: CKRecord.ID
    let name: String
    let description: String
    let squareAsset: CKAsset!
    let bannerAsset: CKAsset!
    let address: String
    let location: CLLocation
    let websiteURL: String
    let phoneNumber: String
    
    init(record: CKRecord) {
        ckRecordID  = record.recordID
        name        = record[LocationModel.kName] as? String ?? "N/A"
        description = record[LocationModel.kDescription] as? String ?? "N/A"
        squareAsset = record[LocationModel.kSquareAsset] as? CKAsset
        bannerAsset = record[LocationModel.kBannerAsset] as? CKAsset
        address     = record[LocationModel.kAddress] as? String ?? "N/A"
        location    = record[LocationModel.kLocation] as? CLLocation ?? CLLocation(latitude: 0, longitude: 0)
        websiteURL  = record[LocationModel.kWebsiteURL] as? String ?? "N/A"
        phoneNumber = record[LocationModel.kPhoneNumber] as? String ?? "N/A"
    }
}

