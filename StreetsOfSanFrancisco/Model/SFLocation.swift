import CloudKit
import UIKit

struct SFLocation: Identifiable {
  static let kTitle = "title"
//  static let kSubTitle = "subTitle"
//  static let kMessage = "message"
//  static let kBannerAsset = "bannerAsset"
//  static let kSquareAsset = "squareAsset"
//  static let kCity = "city"
//  static let kState = "state"
  static let kLocation = "location"
  
  let id: CKRecord.ID
  let title: String
//  let subTitle: String
//  let message: String
//  let bannerAsset: CKAsset!
//  let squareAsset: CKAsset!
//  let city: String
//  let state: String
  let location: CLLocation
  
  init(record: CKRecord) {
    self.id           = record.recordID
    self.title        = record[SFLocation.kTitle] as? String ?? "NA"
//    self.subTitle     = record[FPLocation.kSubTitle] as? String ?? "NA"
//    self.message      = record[FPLocation.kMessage] as? String ?? "NA"
//    self.bannerAsset  = record[FPLocation.kBannerAsset] as? CKAsset
//    self.squareAsset  = record[FPLocation.kSquareAsset] as? CKAsset
//    self.city         = record[FPLocation.kCity] as? String ?? "NA"
//    self.state        = record[FPLocation.kState] as? String ?? "NA"
    self.location     = record[SFLocation.kLocation] as? CLLocation ?? CLLocation(latitude: 0, longitude: 0)
  }
  
//  func createSquareImage() -> UIImage {
//    guard let asset = squareAsset else { return PlaceholderImage.square }
//    return asset.convertToUIImage(in: .square)
//  }
//  
//  func createBannerImage() -> UIImage {
//    guard let asset = bannerAsset else { return PlaceholderImage.banner }
//    return asset.convertToUIImage(in: .banner)
//  }
}
