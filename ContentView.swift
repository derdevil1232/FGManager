import SwiftUI

class UserSession: ObservableObject {
    @Published var isAuthenticated = false
}

struct ContentView: View {
    @StateObject private var session = UserSession()

    var body: some View {
        if session.isAuthenticated {
            HomeView().environmentObject(session)
        } else {
            LoginSignupView().environmentObject(session)
        }
    }
}
