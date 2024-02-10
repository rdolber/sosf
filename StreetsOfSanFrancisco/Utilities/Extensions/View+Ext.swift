import SwiftUI

extension View {
  func tabViewDefaultBackground() -> some View {
    self.onAppear {
      let tabBarAppearance = UITabBarAppearance()
      tabBarAppearance.configureWithDefaultBackground()
      UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }
  }
  
  func profileNameStyle() -> some View {
    self.modifier(ProfileNameText())
  }
  
  func dismissKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
  }
}
