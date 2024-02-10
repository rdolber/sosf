import UIKit

enum RecordType {
  static let location   = "SFLocation"
}

enum PlaceholderImage {
  static let avatar     = UIImage(named: "default-avatar")!
  static let banner     = UIImage(named: "default-banner-asset")!
  static let square     = UIImage(named: "default-square-asset")!
}

enum ImageDimension {
  case square, banner
  
  static func getPlaceholder(for dimension: ImageDimension) -> UIImage {
    switch dimension {
    case .square:
      PlaceholderImage.square
    case .banner:
      PlaceholderImage.banner
    }
  }
}
