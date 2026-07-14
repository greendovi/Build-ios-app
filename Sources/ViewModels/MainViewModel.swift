import SwiftUI

class MainViewModel: ObservableObject {
    @Published var isLoading = false
    @Published var message = "Ready"
    
    func performAction() {
        isLoading = true
        message = "Processing..."
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            self.message = "Action completed!"
            self.isLoading = false
        }
    }
}
