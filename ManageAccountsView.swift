import SwiftUI

struct ManageAccountsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("Farming Group Members")
                .font(.title2)

            ForEach(["FGM_testing1", "FGM_testing2"], id: \.self) { name in
                Text(name)
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}
