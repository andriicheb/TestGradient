import Foundation

struct ThirdState: State {
    
    func enter(context: ViewController) {
        context.backgroundView?.parameters = Default.background3
    }
    
    func next() -> State {
        return FirstState()
    }
}
