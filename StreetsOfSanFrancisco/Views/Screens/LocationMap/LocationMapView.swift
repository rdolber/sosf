import SwiftUI
import MapKit

struct LocationMapView: View {
  @EnvironmentObject private var locationManager: LocationManager
  @StateObject private var viewModel = LocationMapViewModel()
  
  var body: some View {
    Map(coordinateRegion: $viewModel.region, showsUserLocation: true, annotationItems: locationManager.locations) { location in
      MapMarker(coordinate: location.location.coordinate, tint: .brandPrimary)
    }
    .accentColor(.accentColor)
    .ignoresSafeArea()
  }
}

#Preview {
  LocationMapView()
}

