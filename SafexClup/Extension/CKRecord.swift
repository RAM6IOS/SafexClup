//
//  CKRecord.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 9/10/2022.
//

import Foundation
import CloudKit


extension CKRecord {
    func convertToLocationModel() -> LocationModel {LocationModel(record: self) }
    func convertToProfileModel() -> ProfileModel { ProfileModel(record: self) }
}

