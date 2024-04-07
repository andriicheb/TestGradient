
import SwiftUI

struct GradientBackgroundView: View {

    @ObservedObject var viewModel: GradientBackgroundViewModel
    
    var body: some View {
        GeometryReader { geometry  in
            ZStack {
                viewModel.backgroundColor
                
                ForEach(viewModel.gradientParametres) { background in
                    EllipticalGradient(colors: background.colors,
                                       center: background.center,
                                       startRadiusFraction: background.startRadiusFraction,
                                       endRadiusFraction: background.endRadiusFraction)
                    .frame(width: geometry.size.height * background.width, height: geometry.size.height * background.height)
                    .background {
                        Color.clear
                    }
                    .rotationEffect(background.rotationEffect)
                    .opacity(background.opacity)
                    .blur(radius: background.blur)
                    .padding(.top, geometry.size.height * background.topPadding)
                    .padding(.bottom, geometry.size.height * background.bottomPadding)
                    .padding(.leading, geometry.size.height * background.leadingPadding)
                    .padding(.trailing, geometry.size.height * background.trailingPadding)
                }
                
                if let noiseImage = viewModel.noiseImage {
                    noiseImage
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    @ObservedObject var viewModel = GradientBackgroundViewModel(gradientParametres: Default.background1.gradientParametres, backgroundColor: Default.background1.backgroundColor)
    
    return GradientBackgroundView(viewModel: viewModel)
}
