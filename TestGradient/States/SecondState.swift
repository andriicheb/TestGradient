import Foundation

struct SecondState: State {
    
    func enter(context: ViewController) {
        context.backgroundView?.parameters = Default.background2
    }
    
    func next() -> State {
        return ThirdState()
    }
}
