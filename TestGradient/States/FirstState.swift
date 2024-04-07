import Foundation

struct FirstState: State {
    
    func enter(context: ViewController) {
        context.backgroundView?.parameters = Default.background1
    }
    
    func next() -> State {
        return SecondState()
    }
}
