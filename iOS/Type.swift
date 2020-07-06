import SwiftUI

struct Type: View {
    let face: Face
    let faces: [Face]
    @State private var text = NSLocalizedString("Misfits", comment: "")
    @State private var compare: Face?
    @State private var comparing = false
    @State private var editing = false
    
    var body: some View {
        ScrollView {
            Text(verbatim: text)
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
                Text(verbatim: text)
                    .font(compare!.font)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding()
            }
        }.navigationBarTitle(.init(verbatim: face.name), displayMode: .inline)
            .navigationBarItems(trailing:
                Button(action: {
                    self.editing = true
                }, label: {
                    Image(systemName: "pencil.circle.fill")
                }).frame(width: 100, height: 100, alignment: .trailing))
            .sheet(isPresented: $editing) {
                List {
                    Section(header:
                        HStack {
                            Text("Yours")
                                .font(.headline)
                                .padding(.vertical)
                        
                            Spacer()
                            
                            Button(action: {
                                self.editing = false
                            }) {
                                Text("Done")
                            }
                        }) {
                            TextField("Comparing", text: self.$text)
                                .lineLimit(5)
                                .padding()
                        }
                }.listStyle(PlainListStyle())
            }
            .popover(isPresented: $comparing) {
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
                                    FontCell(face: face, active: face.id == self.compare?.id)
                                }.foregroundColor(.primary)
                        }
                    }
                }.listStyle(PlainListStyle())
        }
    }
}
