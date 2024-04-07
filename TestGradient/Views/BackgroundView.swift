import UIKit
import SwiftUI

protocol BGView {
    var parameters: Parameters { get set }
}

class BackgroundView: UIView, BGView {
    var parameters: Parameters = Default.background1 {
        didSet {
            updateGradientBackgroundView()
        }
    }
    
    private var hostingController: UIHostingController<GradientBackgroundView>?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupGradientBackgroundView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupGradientBackgroundView() {
        let gradientBackgroundView = GradientBackgroundView(viewModel: GradientBackgroundViewModel(gradientParametres: parameters.gradientParametres, backgroundColor: parameters.backgroundColor, noiseImage: parameters.noiseImage))
        let hostingController = UIHostingController(rootView: gradientBackgroundView)
        hostingController.view.frame = bounds
        hostingController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(hostingController.view)
        
        self.hostingController = hostingController
    }
    
    private func updateGradientBackgroundView() {
        guard let hostingController = self.hostingController else {
            return
        }
        
        hostingController.rootView.viewModel = GradientBackgroundViewModel(gradientParametres: parameters.gradientParametres,
                                                                           backgroundColor: parameters.backgroundColor,
                                                                           noiseImage: parameters.noiseImage)
    }
}
