import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = MainViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Welcome to Build iOS App")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                Text("Build something amazing")
                    .font(.body)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Button(action: { viewModel.performAction() }) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
