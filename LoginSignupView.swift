import SwiftUI

struct LoginSignupView: View {
    @EnvironmentObject var session: UserSession
    @State private var email = ""
    @State private var magicKey = ""
    @State private var hasAccount = false
    @State private var message = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Bot Farm Manager")
                .font(.largeTitle).bold()

            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            if hasAccount {
                SecureField("Magic Key", text: $magicKey)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }

            Button(hasAccount ? "Login" : "Sign Up") {
                if hasAccount {
                    if magicKey == UserDefaults.standard.string(forKey: email) {
                        session.isAuthenticated = true
                    } else {
                        message = "Invalid key"
                    }
                } else {
                    let key = UUID().uuidString
                    UserDefaults.standard.set(key, forKey: email)
                    message = "Your Magic Key: \(key)\nWrite this down and keep it safe."
                }
            }

            Toggle("Already have a key?", isOn: $hasAccount)
                .padding()

            Text(message)
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
        }
        .padding()
    }
}
