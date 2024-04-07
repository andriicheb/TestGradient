import SwiftUI

class GradientBackgroundViewModel: ObservableObject {
    
    @Published var gradientParametres: [GradientParametres]
    @Published var backgroundColor: Color
    @Published var noiseImage: Image?
    
    init(gradientParametres: [GradientParametres], backgroundColor: Color, noiseImage: Image? = nil) {
        self.gradientParametres = gradientParametres
        self.backgroundColor = backgroundColor
        self.noiseImage = noiseImage
    }
}
