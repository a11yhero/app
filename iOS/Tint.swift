import SwiftUI

struct Tint: View {
    let shade: Shade
    let shades: [Shade]
    @State private var compare = Shade.clear
    @State private var background = Shade.clear
    @State private var sheetCompare = false
    @State private var sheetBackground = false
    
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
                        self.sheetCompare = true
                    }).padding()
                    Control(title: "Background", action: {
                        self.sheetBackground = true
                    }).padding()
                    Spacer()
                }.padding(.bottom, 10)
            }
        }.navigationBarTitle(.init(verbatim: shade.name), displayMode: .inline)
            .sheet(isPresented: .init(get: {
                self.sheetBackground || self.sheetCompare
            }, set: { _ in
                self.sheetBackground = false
                self.sheetCompare = false
            })) {
                Sheet(title: "Compare", current: self.sheetCompare ? self.compare : self.background, shades: self.shades) {
                    if self.sheetCompare {
                        self.compare = $0
                    }
                    if self.sheetBackground {
                        self.background = $0
                    }
                    self.sheetCompare = false
                    self.sheetBackground = false
                }
            }
    }
}

private struct Sheet: View {
    let title: LocalizedStringKey
    let current: Shade
    let shades: [Shade]
    let action: (Shade) -> Void
    
    var body: some View {
        List {
            Section(header:
            Text(title)
                .font(.headline)
                .padding(.vertical)) {
                ForEach([Shade.clear] + shades) { shade in
                    Button(action: {
                        self.action(shade)
                    }) {
                        ColorCell(shade: shade, active: shade.id == self.current.id)
                    }
                }
            }
        }.listStyle(PlainListStyle())
    }
}
