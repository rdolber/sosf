import MapKit

final class LocationMapViewModel: NSObject, ObservableObject {
  @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 36.113314, longitude: -115.174668), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
  
  @Published var alertItem: AlertItem?
  
  var deviceLocationManager: CLLocationManager?
//  let kHasSeenOnboardView = "hasSeenOnboardView"
  
//  var hasSeenOnboardView: Bool {
//    return UserDefaults.standard.bool(forKey: kHasSeenOnboardView)
//  }
  
//  func runStartupChecks() {
//    if !hasSeenOnboardView {
//      // TODOX:
//      isShowingOnboardView = true
//      UserDefaults.standard.set(true, forKey: kHasSeenOnboardView)
//    } else {
//      print("##### checkLocationAuth called")
//      checkLocationAuthorization()
//    }
//  }
  
//  TODO: this never gets called a second time - OnboardView Persistence
//  func checkIfLocationServicesIsEnabled() {
//    if CLLocationManager.locationServicesEnabled() {
//      deviceLocationManager = CLLocationManager()
//      deviceLocationManager!.delegate = self
//    } else {
//      alertItem = AlertContext.locationDisabled
//    }
//  }
  
  private func checkLocationAuthorization() {
    guard let deviceLocationManager else { return }
    
    switch deviceLocationManager.authorizationStatus {
    case .notDetermined:
      print("##### notDetermined")
      deviceLocationManager.requestWhenInUseAuthorization()
    case .restricted:
      print("##### restricted")
      alertItem = AlertContext.locationRestricted
    case .denied:
      print("##### denied")
      alertItem = AlertContext.locationDenied
    case .authorizedAlways, .authorizedWhenInUse:
      print("##### always or when in use")
      break
    @unknown default:
      print("##### default")
      break
    }
  }
  
  func getLocations(for locationManager: LocationManager) {
    CloudKitManager.getLocations { [self] result in
      DispatchQueue.main.async {
        switch result {
        case .success(let locations):
          // TODO: clean up
          locationManager.locations = locations
        case .failure(_):
//          self.alertItem = AlertContext.unableToGetLocations
          print("Fail")
        }
      }
    }
  }
}

extension LocationMapViewModel: CLLocationManagerDelegate {
  func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
    checkLocationAuthorization()
  }
}

