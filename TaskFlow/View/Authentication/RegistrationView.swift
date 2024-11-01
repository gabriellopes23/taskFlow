
import SwiftUI

struct RegistrationView: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var repeatPassword: String = ""
    
    var body: some View {
        ZStack {
            WaveBackgroundView()
            
            VStack(spacing: 20) {
                Spacer()
                
                Text("Welcome back to TaskFlow")
                    .font(.title3)
                    .fontWeight(.bold)

                VStack {
                    InfoField(text: $name, title: "Name")
                    InfoField(text: $email, title: "Email")
                    InfoSecureField(text: $password, title: "Password")
                    InfoSecureField(text: $repeatPassword, title: "Repeat Password")
                }
                
                // Button para Sign up
                Button {

                } label: {
                    Text("Sign Up")
                        .padding()
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 10).fill(
                                LinearGradient(
                                    colors: [greenColor, blueColor],
                                    startPoint: .leading, endPoint: .trailing)))
                }
            }
            .padding(.bottom)
        }
    }
}

#Preview {
    RegistrationView()
}
