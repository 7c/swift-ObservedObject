//
//  Demo ObservedObject
//

import SwiftUI

class FancyTimer:ObservableObject {
    @Published var counter = 0
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.counter+=1
        }
    }
}


struct ContentView: View {
    @ObservedObject var timer1 = FancyTimer()
    var body: some View {
        HStack {
            Text("Counter:\(timer1.counter)")
                .padding(10)
        }.frame(width:300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
