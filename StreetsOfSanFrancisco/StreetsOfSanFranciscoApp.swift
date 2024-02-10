import SwiftUI

@main
struct StreetsOfSanFranciscoApp: App {
  let locationManager = LocationManager()
  
  var body: some Scene {
    WindowGroup {
      AppTabView().environmentObject(locationManager)
    }
  }
}
