import SwiftUI

struct Tint: View {
    let shade: Shade
    let shades: [Shade]
    @State private var compare = Shade.clear
    @State private var background = Shade.clear
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 80, height: 80)
                        .foregroundColor(shade.color)
                    Spacer()
                    if compare.id != Shade.clear.id {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(width: 80, height: 80)
                            .foregroundColor(compare.color)
                        Spacer()
                    }
                }
                Spacer()
            }.background(background.color)
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Control(title: "Compare", action: {
                        
                    }).padding()
                    Button(action: {
                        
                    }) {
                        Text("Background")
                    }.padding()
                    Spacer()
                }.padding(.bottom, 10)
            }
        }.navigationBarTitle(.init(verbatim: shade.name), displayMode: .inline)
    }
}

private struct Control: View {
    var title: LocalizedStringKey
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 22)
                    .frame(width: 120, height: 44)
                    .shadow(color: .secondary, radius: 5, x: 0, y: 0)
                    .foregroundColor(.init(.systemBackground))
                Text(title)
                    .foregroundColor(.primary)
                    .font(.footnote)
                    .bold()
            }
        }
    }
}
