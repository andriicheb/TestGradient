import UIKit
import SwiftUI

protocol State {
    func enter(context: ViewController)
    func next() -> State
}

class ViewController: UIViewController {
    
    var backgroundView: BackgroundView?
    var state: State?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bgView = BackgroundView(frame: view.bounds)
        view.addSubview(bgView)
        backgroundView = bgView
        
        state = FirstState()
        state?.enter(context: self)
        
        let switchStateButton = UIButton(type: .system)
        switchStateButton.setTitle("Switch State", for: .normal)
        switchStateButton.addTarget(self, action: #selector(switchStateButtonTapped), for: .touchUpInside)
        switchStateButton.frame = CGRect(x: 100, y: 700, width: 200, height: 50)
        view.addSubview(switchStateButton)
    }
    
    @objc func switchStateButtonTapped() {
        state = state?.next()
        state?.enter(context: self)
    }
}
