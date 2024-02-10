import CloudKit

extension CKRecord {
  func convertToSFLocation() -> SFLocation { SFLocation(record: self) }
//  func convertToSFProfile() -> SFProfile { SFProfile(record: self) }
}
