
import SwiftUI

struct WaveBackgroundView: View {
    var body: some View {
        GeometryReader { geometry in
                ZStack {
                    Path { path in
                        let width = geometry.size.width
                        let height = geometry.size.height / 4.5
                        
                        path.move(to: CGPoint(x: 0, y: height))
                        path.addCurve(to: CGPoint(x: width, y: height),
                                      control1: CGPoint(x: width * 0.30, y: height - 250),
                                      control2: CGPoint(x: width * 0.7, y: height + 150))
                        path.addLine(to: CGPoint(x: width, y: 0))
                        path.addLine(to: CGPoint(x: 0, y: 0))
                    }
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [greenColor,  blueColor]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                    .frame(height: geometry.size.height / 4)
                    .ignoresSafeArea()
                    
                    logoTaskFlow
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150, height: 150)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
    }
}

#Preview {
    WaveBackgroundView()
}
