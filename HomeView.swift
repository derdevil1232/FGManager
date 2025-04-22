import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                NavigationLink("Make a New Farming Group", destination: NewFarmingGroupView())
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(8)

                NavigationLink("Manage Existing Farming Groups", destination: ManageAccountsView())
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .navigationTitle("Home")
            .padding()
        }
    }
}
