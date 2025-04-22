import SwiftUI

struct NewFarmingGroupView: View {
    @State private var copied = false
    let code = "-- INSERT ROBLOX EXECUTOR CODE HERE --"

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("1) Join a game in Roblox using the account you want to link.")
            Text("2) Execute the following code:")

            Button(action: {
                UIPasteboard.general.string = code
                copied = true
            }) {
                Text(copied ? "Copied!" : code)
                    .foregroundColor(.blue)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
            }

            Text("3) Follow the verification steps on the GUI that pops up.")
        }
        .padding()
        .navigationTitle("New Farming Group")
    }
}
