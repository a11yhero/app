import SwiftUI

struct FontCell: View {
    let face: Face
    let active: Bool
    
    var body: some View {
        HStack {
            Text(face.name)
                .font(face.font)
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
