import SwiftUI

struct LoginView: View {

    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showRegistrationView: Bool = false

    var body: some View {
        NavigationStack {
            ZStack {
                WaveBackgroundView()

                VStack(spacing: 25) {
                    Spacer()
                    // TextField para Login
                    VStack {
                        Text("Welcome back to TaskFlow")
                            .font(.title3)
                            .fontWeight(.bold)

                        InfoField(text: $email, title: "Email")

                        VStack(alignment: .trailing, spacing: 0) {
                            InfoSecureField(text: $password, title: "Password")
                            Button {

                            } label: {
                                Text("Forgot Password?")
                                    .font(.headline)
                            }
                            .padding(.horizontal)

                        }
                    }

                    // Button para Login
                    Button {

                    } label: {
                        Text("Sign In")
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

                    HStack {
                        Rectangle()
                            .frame(height: 0.5)
                            .opacity(0.5)
                        Text("Or")
                        Rectangle()
                            .frame(height: 0.5)
                            .opacity(0.5)
                    }
                    
                    // Sign up with Google
                    Button {
                        
                    } label: {
                        Text("Sign up using Google")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .foregroundStyle(.white)
                            .background(
                                RoundedRectangle(cornerRadius: 20).fill(
                                    LinearGradient(
                                        colors: [greenColor, blueColor],
                                        startPoint: .leading, endPoint: .trailing)))
                            .padding()
                    }

                    Button {
                        showRegistrationView = true
                    } label: {
                        Text("Don't have an account? Click here")
                    }
                }
                .ignoresSafeArea()
                .padding(.bottom)
                .navigationDestination(isPresented: $showRegistrationView) {
                    RegistrationView()
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
