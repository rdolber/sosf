import Foundation

final class LocationManager: ObservableObject {
  @Published var locations: [SFLocation] = []
}
