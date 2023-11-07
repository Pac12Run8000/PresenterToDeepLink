import SwiftUI

struct CardView: View {
    @State private var accountBalance = "$0.00"
    
    var body: some View {
        VStack {
            // Account balance display
            Text("Account balance: \(accountBalance)")
                .padding()
            
            // Button to show balance
            Button(action: {
                self.accountBalance = "$200.00"
            }) {
                VStack(alignment: .leading) {
                    Text("SmallMart")
                        .font(.title)
                        .fontWeight(.bold)
                    Text("Norbert Grover")
                        .font(.headline)
                    Text("Account #1234")
                        .font(.subheadline)
                }
                .padding()
                .background(Color.blue)
                .cornerRadius(10)
                .foregroundColor(.white)
                .padding()
            }
            .padding()
            
            // Clear button to reset balance
            Button(action: {
                self.accountBalance = "$0.00"
            }) {
                Text("Clear")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
            }
        }
    }
}
