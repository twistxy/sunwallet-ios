import SwiftUI

struct WelcomeView: View {
    // MARK:- Properties
    let assets: [TradePairHistory]
    
    // MARK:- Subviews
    private var registerButton: some View {
        NavigationLink(destination: BootstrapWalletsView()) {
            Text("Get Started")
                .padding()
                .frame(maxWidth: .infinity)
                .contentShape(Rectangle())
                .foregroundColor(.gradientEndColor)
                .background(Color.white)
                .cornerRadius(8)
        }
    }
    
    var body: some View {
        VStack {
            LogoView()
            
            AssetsView(assets: assets)
            
            Spacer()
            
            registerButton
                .padding(.horizontal)
        }
        .padding(.vertical, 48)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(LinearGradient.background)
        .edgesIgnoringSafeArea(.all)
    }
}
