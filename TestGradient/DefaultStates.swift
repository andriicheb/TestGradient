import SwiftUI

enum Default {
    
    // Three balloons
    static let background1 = Parameters(gradientParametres: [GradientParametres(colors: [Color(hex: "9DF6F7")!, .clear], center: UnitPoint(x: 0.5, y: 0.5), startRadiusFraction: 0.1, endRadiusFraction: 0.42, width: 0.9, height: 0.58, rotationEffect: .degrees(-10), opacity: 0.8, blur: 40, bottomPadding: 0.586, leadingPadding: 0.14), GradientParametres(colors: [Color(hex: "9DF6F7")!, .clear], center: UnitPoint(x: 0.5, y: 0.5), startRadiusFraction: 0.09, endRadiusFraction: 0.46, width: 0.7, height: 0.4, rotationEffect: .degrees(-10), opacity: 0.8, blur: 40, topPadding: 0.234, trailingPadding: 0.504), GradientParametres(colors: [Color(hex: "1BD6FF")!, .clear], center: UnitPoint(x: 0.5, y: 0.44), startRadiusFraction: 0.08, endRadiusFraction: 0.4, width: 0.92, height: 0.4, rotationEffect: .degrees(0), opacity: 0.8, blur: 30, bottomPadding: 0.058, leadingPadding: 0.352)], backgroundColor: Color.black, noiseImage: Image(.noise))
    
    // Two balloons of the same colour
    static let background2 = Parameters(gradientParametres: [GradientParametres(colors: [Color(hex: "9DF6F7")!, .clear], center: UnitPoint(x: 0.5, y: 0.5), startRadiusFraction: 0.18, endRadiusFraction: 0.46, width: 0.7, height: 0.4, rotationEffect: .degrees(0), opacity: 0.8, blur: 30, bottomPadding: 0.586, trailingPadding: 0.657), GradientParametres(colors: [Color(hex: "1BD6FF")!, .clear], center: UnitPoint(x: 0.5, y: 0.44), startRadiusFraction: 0.01, endRadiusFraction: 0.49, width: 0.8, height: 0.39, rotationEffect: .degrees(0), opacity: 0.8, blur: 30, bottomPadding: 0.093, trailingPadding: 0.316)], backgroundColor: Color.black, noiseImage: Image(.noise))
    
    // Two balloons of the same colour
    static let background3 = Parameters(gradientParametres: [GradientParametres(colors: [Color(hex: "9DF6F7")!, .clear], center: UnitPoint(x: 0.5, y: 0.5), startRadiusFraction: 0.1, endRadiusFraction: 0.45, width: 0.7, height: 0.5, rotationEffect: .degrees(0), opacity: 0.8, blur: 50, bottomPadding: 0.586, leadingPadding: 0.528), GradientParametres(colors: [Color(hex: "9DF6F7")!, .clear], center: UnitPoint(x: 0.5, y: 0.5), startRadiusFraction: 0.01, endRadiusFraction: 0.55, width: 0.8, height: 0.38, rotationEffect: .degrees(-15), opacity: 0.8, blur: 50, topPadding: 0.234, trailingPadding: 0.352)], backgroundColor: Color.black, noiseImage: Image(.noise))
}

private extension Color {
    init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0

        let length = hexSanitized.count

        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        if length == 6 {
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0

        } else if length == 8 {
            r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            a = CGFloat(rgb & 0x000000FF) / 255.0

        } else {
            return nil
        }

        self.init(red: r, green: g, blue: b, opacity: a)
    }
}
