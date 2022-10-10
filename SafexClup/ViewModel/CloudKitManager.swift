//
//  CloudKitManager.swift
//  SafexClup
//
//  Created by Bouchedoub Rmazi on 9/10/2022.
//

import CloudKit


struct CloudKitManager {
    
    static func getLocations(completed: @escaping (Result<[LocationModel], Error>) -> Void) {
        let sortDescriptor = NSSortDescriptor(key: LocationModel.kName, ascending: true)
        let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
        query.sortDescriptors = [sortDescriptor]
        
        CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { records, error in
            guard error == nil else {
                completed(.failure(error!))
                return
            }
            guard let records = records else { return }
            let locations = records.map { $0.convertToLocationModel() }
            completed(.success(locations))
        }
    }
}
