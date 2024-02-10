import CloudKit

struct CloudKitManager {
  static func getLocations(completed: @escaping (Result<[SFLocation], Error>) -> Void) {
    let sortDescriptor = NSSortDescriptor(key: SFLocation.kTitle, ascending: true)
    let query = CKQuery(recordType: RecordType.location, predicate: NSPredicate(value: true))
    query.sortDescriptors = [sortDescriptor]
    
    CKContainer.default().publicCloudDatabase.perform(query, inZoneWith: nil) { (records, error) in
      guard error == nil else {
        completed(.failure(error!))
        return
      }
      
      guard let records else { return }

      let locations = records.map { $0.convertToSFLocation() }
      completed(.success(locations))
    }
  }
}
