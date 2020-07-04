import SwiftUI

struct ColorCell: View {
    let shade: Shade
    let active: Bool
    
    var body: some View {
        HStack {
            Rectangle()
                .cornerRadius(8)
                .foregroundColor(shade.color)
                .frame(width: 50, height: 50)
            Text(shade.name)
                .padding(.vertical)
            Spacer()
            Image(systemName: "checkmark.circle.fill")
                .resizable()
                .frame(width: 22, height: 22)
                .foregroundColor(.blue)
                .padding(.vertical)
                .opacity(active ? 1 : 0)
        }
    }
}
