struct ContentView: View {
   
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }

            Text("Your content")
                .foregroundColor(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

struct ContentView: View {
   
    var body: some View {
        VStack {
            LinearGradient(gradient: Gradient(colors: [.white, .black]), startPoint: .top, endPoint: .bottom)
            RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)
            AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)
        }
    }
}

struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        VStack {
                  Button("Show Alert") {
                      showingAlert = true
                  }
                  .alert("Important message", isPresented: $showingAlert) {
                      Button("Delete", role: .destructive) { }
                      Button("Cancel", role: .cancel) { }
                  }
        }
    }
}