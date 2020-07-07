import SwiftUI

struct Type: View {
    @State var text = NSLocalizedString("Misfits", comment: "")
    @State private var compare: Face?
    @State private var comparing = false
    let face: Face
    let faces: [Face]
    private let coordinator = Coordinator()
    
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
                NavigationLink(destination:
                    TextView(text: self.$text, coordinator: coordinator)
                        .onAppear {
                            self.coordinator.start()
                    }
                        .navigationBarTitle("Yours"), label: {
                    Image(systemName: "pencil.circle.fill")
                }).frame(width: 100, height: 100, alignment: .trailing))
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
                                    FontCell(face: face, active: face.id == self.compare?.id)
                                }.foregroundColor(.primary)
                        }
                    }
                }.listStyle(PlainListStyle())
        }
    }
}

private struct TextView: UIViewRepresentable {
    @Binding var text: String
    weak var coordinator: Coordinator!

    func makeCoordinator() -> Coordinator {
        coordinator.view = self
        return coordinator
    }
    
    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.font = .preferredFont(forTextStyle: .body)
        view.textContainerInset = .init(top: 20, left: 20, bottom: 20, right: 20)
        context.coordinator.prepare(view)
        return view
    }
    
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
}

private final class Coordinator: NSObject, UITextViewDelegate {
    var view: TextView?
    weak var textView: UITextView?
    
    func prepare(_ view: UITextView) {
        textView = view
        view.delegate = self
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        view?.text = textView.text
    }
    
    func start() {
        textView?.becomeFirstResponder()
        textView?.selectAll(nil)
    }
}
