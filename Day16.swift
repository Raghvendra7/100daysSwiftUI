struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
                ForEach(0..<11) {
                    Text("Row \($0) " + selectedStudent)
                }
            }
            .navigationTitle("WE SPLIT")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}