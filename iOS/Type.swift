import SwiftUI

struct Type: View {
    let face: Face
    let faces: [Face]
    @State private var compare: Face?
    @State private var comparing = false
    
    var body: some View {
        ScrollView {
            Text("Misfits")
                .font(face.font)
                .padding()
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
                            .font(.headline)
                    } else {
                        Text(verbatim: compare!.name)
                            .foregroundColor(.primary)
                            .font(.headline)
                    }
                }.padding()
            }.background(Color.blue)
            if compare != nil {
                Text("Misfits")
                    .font(compare!.font)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding()
            }
        }.navigationBarTitle(.init(verbatim: face.name), displayMode: .inline)
            .sheet(isPresented: $comparing) {
                List {
                    Section(header:
                        Text("Compare")
                            .font(.headline)
                            .padding(.vertical)) {
                            ForEach(self.faces.filter { $0.id != self.face.id }) { face in
                                Button(action: {
                                    self.compare = face
                                    self.comparing = false
                                }) {
                                    HStack {
                                        Text(face.name)
                                            .font(face.font)
                                            .padding(.vertical)
                                        Spacer()
                                        if face.id == self.compare?.id {
                                            Image(systemName: "checkmark.circle.fill")
                                                .resizable()
                                                .frame(width: 22, height: 22)
                                                .foregroundColor(.blue)
                                                .padding(.vertical)
                                        }
                                    }
                                }.foregroundColor(.primary)
                        }
                    }
                }.listStyle(PlainListStyle())
        }
    }
}
