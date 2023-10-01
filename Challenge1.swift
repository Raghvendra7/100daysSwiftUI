struct ContentView: View {
    @State private var conversionType = 2
    @State private var valueTobeConverted: Double = 0.0
    @State private var inputUnit: Dimension = UnitDuration.seconds
    @State private var outputUnit: Dimension = UnitDuration.hours
    @FocusState private var amountIsFocused: Bool
    var conversionTypes = ["Temperature", "Length", "Time","Volume"]
    var units: [[Dimension]] {
           let tempUnits: [UnitTemperature] = [.celsius, .fahrenheit, .kelvin]
           let lengthUnits: [UnitLength] = [.meters, .kilometers, .feet, .yards, .miles]
           let timeUnits: [UnitDuration] = [.seconds, .minutes, .hours]
           let volumeUnits: [UnitVolume] = [.milliliters, .liters, .cups, .pints, .gallons]
           
           return [
               tempUnits,
               lengthUnits,
               timeUnits,
               volumeUnits,
           ]
       }
    var result: String {
           let outputMeasurement = Measurement(value: valueTobeConverted, unit: inputUnit).converted(to: outputUnit)
           return formatter.string(from: outputMeasurement)
       }

    let formatter: MeasurementFormatter
      init() {
          formatter = MeasurementFormatter()
          formatter.unitOptions = .providedUnit
          formatter.unitStyle = .short
      }
      
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Picker("Converstion Type", selection: $conversionType) {
                        ForEach(0..<conversionTypes.count, id: \.self) {
                            Text(conversionTypes[$0])
                        }
                    }
                } header: {
                    Text("What Converstion you want to do")
                }
                Section {
                    unitPicker(title: "Convert from Unit", selection: $inputUnit)
                    unitPicker(title: "Convert to Unit", selection: $outputUnit)
                } header: {
                    Text("\(formatter.string(from: inputUnit)) to \(formatter.string(from: outputUnit))")
                }
                Section {
                    TextField("Enter Value", value: $valueTobeConverted, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                } header: {
                    Text("Value need to be convert")
                }
                Section {
                    Text(result)
                } header: {
                    Text("Converted Value")
                }
            }
            .navigationTitle("Converted")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
            .onChange(of: conversionType) { newUnits in
                inputUnit = units[newUnits][0]
                outputUnit = units[newUnits][1]
            }
        }
    }

    private func unitPicker(title: String, selection: Binding<Dimension>) -> some View {
           Picker(title, selection: selection) {
               ForEach(units[conversionType], id: \.self) {
                   Text(formatter.string(from: $0).capitalized)
               }
           }
           .pickerStyle(.segmented)
       }
}