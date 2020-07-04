import SwiftUI

struct Mode: View {
    @Binding var mode: Int
    
    var body: some View {
        Picker("", selection: $mode, content: {
            Text(verbatim: "SwiftUI")
                .tag(0)
            Text(verbatim: "UIKit")
                .tag(1)
        }).pickerStyle(SegmentedPickerStyle())
            .padding(.vertical)
    }
}
