import SwiftUI

struct AppTabView: View {
  var body: some View {
    TabView {
      LocationMapView()
        .tabItem {
          Label("Map", systemImage: "map")
        }
      
      EpisodeListView()
        .tabItem {
          Label("Episodes", systemImage: "photo.stack")
        }
      
//      NavigationView {
//        ProfileView()
//      }
//      .tabItem {
//        Label("Profile", systemImage: "person")
//      }
    }
    .accentColor(.brandPrimary)
    .tabViewDefaultBackground()
  }
}

#Preview {
  AppTabView()
}
