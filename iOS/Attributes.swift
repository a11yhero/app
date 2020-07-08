import SwiftUI

struct Attributes: View {
    @State private var mode = 0
    
    private let swiftui = [
        "Accessibility Action",
        "Accessibility Hint",
        "Accessibility Label",
        "Accessibility Value",
        "Accessibility Hidden",
        "Accessibility Traits",
        "Accessibility Identifier",
        "Accessibility Sort Priority",
        "Accessibility Scroll Action",
        "Accessibility Activation Point",
        "Accessibility Element",
        "Accessibility Adjustable Action",
        "Accessibility Selection Identifier"]
    
    private let uikit = [
        "Acessibility Identifier",
        "Acessibility Label",
        "Acessibility Traits",
        "Acessibility Value",
        "Acessibility Frame",
        "Acessibility Hint",
        "Acessibility Path",
        "Acessibility Elements",
        "Acessibility Language",
        "Acessibility Scroll Direction",
        "Acessibility Activate",
        "Acessibility View is Modal",
        "Acessibility Custom Rotors",
        "Acessibility Custom Actions",
        "Acessibility Attributed Hint",
        "Acessibility Element Count",
        "Acessibility Elements Hidden",
        "Acessibility Textual Context",
        "Acessibility Activation Point",
        "Acessibility Attributed Label",
        "Acessibility Attributed Value",
        "Acessibility Navigation Style",
        "Acessibility Perform Escape",
        "Acessibility User Input Labels",
        "Acessibility Perform Magic Tap",
        "Acessibility Element is Focused",
        "Acessibility Ignores Invert Colors",
        "Acessibility Drop Point Descriptors",
        "Acessibility Drag Source Descriptors",
        "Acessibility Responds to User Interaction",
        "Acessibility Attributed User Input Labels",
        "Acessibility Assistive Technology Focused Identifiers",
        "Acessibility Element did Lose Focus",
        "Acessibility Element did Become Focused",
        "Acessibility Element",
        "Acessibility Container Type"]
    
    var body: some View {
        NavigationView {
            List {
                Text("About.accessibility.features")
                    .font(.footnote)
                    .foregroundColor(.secondary)
                Section(header: Mode(mode: $mode)) {
                    ForEach(mode == 0 ? swiftui.sorted() : uikit.sorted(), id: \.self) { item in
                        Text(verbatim: item)
                            .font(.footnote)
                    }
                }
            }.listStyle(GroupedListStyle())
                .navigationBarTitle("Accessibility.features", displayMode: .large)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}
