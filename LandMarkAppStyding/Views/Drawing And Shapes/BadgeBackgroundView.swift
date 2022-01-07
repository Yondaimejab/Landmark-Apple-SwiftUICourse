//
//  BadgeBackgroundView.swift
//  LandMarkAppStyding
//
//  Created by Joel Alcantara burgos on 12/29/20.
//

import SwiftUI

struct BadgeBackgroundView: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                var width: CGFloat =  min(geometry.size.width, geometry.size.height)
                let height = width
                path.move(
                    to: CGPoint(
                        x: width * 0.95,
                        y: height * (0.20 + HexagonParameters.adjustment)
                    )
                )
                
                HexagonParameters.segments.forEach { segment in
                    path.addLine(
                        to: CGPoint(
                            x: width * segment.line.x,
                            y: height * segment.line.y
                        )
                    )
                    
                    path.addQuadCurve(
                        to: CGPoint(
                            x: width * segment.curve.x,
                            y: height * segment.curve.y
                        ),
                        control: CGPoint(
                            x: width * segment.control.x,
                            y: height * segment.control.y
                        )
                    )
                }
            }
            .fill(Color.black)
        }
    }
}

struct BadgeBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackgroundView()
    }
}
