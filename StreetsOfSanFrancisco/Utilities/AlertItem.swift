import SwiftUI

struct AlertItem: Identifiable {
  let id = UUID()
  let title: Text
  let message: Text
  let dismissButton: Alert.Button
}

struct AlertContext {
  // MARK: - MapView Errors
  static let unableToGetLocations     = AlertItem(title: Text("Locations Error"),
                                              message: Text("Unable to retrieve locations at this time.\nPlease try again."),
                                              dismissButton: .default(Text("OK")))
  
  static let locationRestricted       = AlertItem(title: Text("Locations Restricted"),
                                              message: Text("Your location is restriceted. This may be due to parental controls."),
                                              dismissButton: .default(Text("OK")))
  
  static let locationDenied           = AlertItem(title: Text("Locations Denied"),
                                              message: Text("Your location was denied, please give access."),
                                              dismissButton: .default(Text("OK")))
  
  static let locationDisabled         = AlertItem(title: Text("Locations Disabled"),
                                              message: Text("Your phone location service is disabled."),
                                              dismissButton: .default(Text("OK")))
  
  // MARK: - ProfileView Errors
  static let invalidProfile           = AlertItem(title: Text("Invalid Profile"),
                                              message: Text("All fields are required as well as a profile. Your bio must be < 100 characters.\n Please try again."),
                                              dismissButton: .default(Text("OK")))
}
