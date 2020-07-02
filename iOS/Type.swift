import SwiftUI

struct Type: View {
    let face: Face
    @State private var compare: Face?
    @State private var comparing = false
    
    var body: some View {
        List {
            Section(header:
                Text("Misfits")
                    .font(face.font)
                    .padding(.vertical)) {
                    Button(action: {
                        self.comparing = true
                    }) {
                        HStack {
                            Text("Compare")
                                .foregroundColor(.primary)
                            Spacer()
                            if compare == nil {
                                Text("None")
                                    .foregroundColor(.secondary)
                                    .font(.subheadline)
                            } else {
                                Text(verbatim: compare!.name)
                                    .foregroundColor(.blue)
                                    .font(.subheadline)
                            }
                        }
                    }
            }
            if compare != nil {
                Text("Misfits")
                    .font(compare!.font)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.vertical)
            }
        }.listStyle(GroupedListStyle())
            .navigationBarTitle(.init(verbatim: face.name), displayMode: .inline)
            .sheet(isPresented: $comparing) {
                List {
                    ForEach(Face.all.filter { $0.id != self.face.id }) { face in
                        Button(action: {
                            self.compare = face
                            self.comparing = false
                        }) {
                            Text(face.name)
                                .font(face.font)
                                .padding(.vertical)
                        }
                    }
                }
        }
    }
}
