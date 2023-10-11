struct BlueLargeTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
    }
}

extension View {
    func blueLargeTitle() -> some View{
        modifier(BlueLargeTitleModifier())
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello World!")
            .blueLargeTitle()
    }
}