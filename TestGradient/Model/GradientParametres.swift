import SwiftUI

struct GradientParametres: Identifiable {

    let id: UUID = UUID()
    
    let colors: [Color]
    let center: UnitPoint
    let startRadiusFraction: CGFloat
    let endRadiusFraction: CGFloat
    let width: CGFloat
    let height: CGFloat
    let rotationEffect: Angle
    let opacity: CGFloat
    let blur: CGFloat
    let topPadding: CGFloat
    let bottomPadding: CGFloat
    let leadingPadding: CGFloat
    let trailingPadding: CGFloat
    
    init(colors: [Color],
         center: UnitPoint,
         startRadiusFraction: CGFloat,
         endRadiusFraction: CGFloat,
         width: CGFloat,
         height: CGFloat,
         rotationEffect: Angle,
         opacity: CGFloat,
         blur: CGFloat,
         topPadding: CGFloat = 0,
         bottomPadding: CGFloat = 0,
         leadingPadding: CGFloat = 0,
         trailingPadding: CGFloat = 0) {
        self.colors = colors
        self.center = center
        self.startRadiusFraction = startRadiusFraction
        self.endRadiusFraction = endRadiusFraction
        self.width = width
        self.height = height
        self.rotationEffect = rotationEffect
        self.opacity = opacity
        self.blur = blur
        self.topPadding = topPadding
        self.bottomPadding = bottomPadding
        self.leadingPadding = leadingPadding
        self.trailingPadding = trailingPadding
    }
}
