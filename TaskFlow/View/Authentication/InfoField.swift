
import SwiftUI

struct InfoField: View {
    
    @Binding var text: String
    @FocusState var isTyping: Bool
    
    let title: String
    
    var body: some View {
        ZStack(alignment: .leading) {
            TextField("", text: $text)
                .frame(height: 55)
                .padding(.leading)
                .focused($isTyping)
                .background(isTyping ? blueColor : .primary, in: RoundedRectangle(cornerRadius: 20).stroke(lineWidth: 1.5))
            
            Text(title)
                .padding(.horizontal, 5)
                .foregroundStyle(isTyping ? blueColor : .primary)
                .background(TFColor)
                .offset(y: -27)
                .padding(.leading, 30)
        }
        .padding()
    }
}

#Preview {
    InfoField(text: .constant(""), title: "Email")
}