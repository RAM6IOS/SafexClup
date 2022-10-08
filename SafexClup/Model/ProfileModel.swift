//
//  ProfileModel.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 8/10/2022.
//

import Foundation
import CloudKit

struct ProfileModel {
    static let kFirstName   = "firstName"
    static let kLastName    = "lastName"
    static let kAvatar      = "avatar"
    static let kCompanyName = "companyName"
    static let kBio         = "bio"
    static let kIsCheckedIn = "isCheckedIn"
    
    let ckRecordID: CKRecord.ID
    let firstName: String
    let lastName: String
    let avatar: CKAsset!
    let companyName: String
    let bio: String
    let isCheckedIn: CKRecord.Reference? = nil
    
    init(record: CKRecord) {
        ckRecordID  = record.recordID
        firstName   = record[ProfileModel.kFirstName] as? String ?? "N/A"
        lastName    = record[ProfileModel.kLastName] as? String ?? "N/A"
        avatar      = record[ProfileModel.kAvatar] as? CKAsset
        companyName = record[ProfileModel.kCompanyName] as? String ?? "N/A"
        bio         = record[ProfileModel.kBio] as? String ?? "N/A"
    }
}
