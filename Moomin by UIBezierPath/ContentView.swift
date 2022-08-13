//
//  ContentView.swift
//  Moomin by UIBezierPath
//
//  Created by Ryan Lin on 2022/8/12.
//

import SwiftUI
struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        //右耳外
        let rEarpath = UIBezierPath()
        rEarpath.move(to: CGPoint(x: 157, y: 76)) //起點
        rEarpath.addQuadCurve(to: CGPoint(x: 175, y: 48), controlPoint: CGPoint(x: 157, y: 64)) //controlPoint 曲線
        rEarpath.addQuadCurve(to: CGPoint(x: 176, y: 72), controlPoint: CGPoint(x: 177, y: 64))
               
        //右耳內
        rEarpath.move(to: CGPoint(x: 163, y: 75))
        rEarpath.addQuadCurve(to: CGPoint(x: 171, y: 60), controlPoint: CGPoint(x: 165, y: 66))
        rEarpath.addQuadCurve(to: CGPoint(x: 171, y: 76), controlPoint: CGPoint(x: 173, y: 69))
        
        let rEarLayer = CAShapeLayer()
        rEarLayer.path = rEarpath.cgPath
        rEarLayer.lineWidth = 2 //線條粗細
        rEarLayer.fillColor = UIColor.clear.cgColor //線條內的顏色
        rEarLayer.strokeColor = UIColor.darkGray.cgColor //線條顏色
        view.layer.addSublayer(rEarLayer)
        
        //左耳外跟頭
        let lEarheadpath = UIBezierPath()
        lEarheadpath.move(to: CGPoint(x: 177, y: 67))
        lEarheadpath.addQuadCurve(to: CGPoint(x: 187, y: 66), controlPoint: CGPoint(x: 182, y: 66))
        lEarheadpath.addQuadCurve(to: CGPoint(x: 202, y: 49), controlPoint: CGPoint(x: 193, y: 56))
        lEarheadpath.addQuadCurve(to: CGPoint(x: 201, y: 72), controlPoint: CGPoint(x: 205, y: 67))
        lEarheadpath.addCurve(to: CGPoint(x: 232, y: 140), controlPoint1: CGPoint(x: 212, y: 78), controlPoint2: CGPoint(x: 218, y: 129)) //two controlPoint 曲線
        
        let lEarheadLayer = CAShapeLayer()
        lEarheadLayer.path = lEarheadpath.cgPath
        lEarheadLayer.lineWidth = 2
        lEarheadLayer.fillColor = UIColor.clear.cgColor
        lEarheadLayer.strokeColor = UIColor.darkGray.cgColor
        view.layer.addSublayer(lEarheadLayer)
        
        //左耳內
        let lEarIntpath = UIBezierPath()
        lEarIntpath.move(to: CGPoint(x: 193, y: 72))
        lEarIntpath.addQuadCurve(to: CGPoint(x: 200, y: 59), controlPoint: CGPoint(x: 198, y: 61))
        lEarIntpath.addQuadCurve(to: CGPoint(x: 197, y: 73), controlPoint: CGPoint(x: 201, y: 66))
        
        let lEarIntLayer = CAShapeLayer()
        lEarIntLayer.path = lEarIntpath.cgPath
        lEarIntLayer.lineWidth = 1.5
        lEarIntLayer.fillColor = UIColor.clear.cgColor
        lEarIntLayer.strokeColor = UIColor.darkGray.cgColor
        view.layer.addSublayer(lEarIntLayer)
        
        //臉
        let facepath = UIBezierPath()
        facepath.move(to: CGPoint(x: 232, y: 140))
        facepath.addCurve(to: CGPoint(x: 240, y: 187), controlPoint1: CGPoint(x: 260, y: 143), controlPoint2: CGPoint(x: 261, y: 174))
        facepath.addCurve(to: CGPoint(x: 143, y: 133), controlPoint1: CGPoint(x: 198, y: 214), controlPoint2: CGPoint(x: 150, y: 170))
        
        let faceLayer = CAShapeLayer()
        faceLayer.path = facepath.cgPath
        faceLayer.lineWidth = 2
        faceLayer.fillColor = UIColor.clear.cgColor
        faceLayer.strokeColor = UIColor.darkGray.cgColor
        view.layer.addSublayer(faceLayer)
        
        //身體左腳尾巴
        let bodyLLegTailpath = UIBezierPath()
        bodyLLegTailpath.move(to: CGPoint(x: 216, y: 196))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 220, y: 280), controlPoint: CGPoint(x: 233, y: 245))
        //尾巴開始
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 274, y: 318), controlPoint: CGPoint(x: 229, y: 306))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 307, y: 308), controlPoint: CGPoint(x: 287, y: 302))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 295, y: 313), controlPoint: CGPoint(x: 302, y: 311))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 313, y: 314), controlPoint: CGPoint(x: 302, y: 312))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 298, y: 317), controlPoint: CGPoint(x: 308, y: 317))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 317, y: 319), controlPoint: CGPoint(x: 305, y: 317))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 294, y: 323), controlPoint: CGPoint(x: 301, y: 325))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 310, y: 326), controlPoint: CGPoint(x: 296, y: 326))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 291, y: 327), controlPoint: CGPoint(x: 297, y: 331))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 305, y: 331), controlPoint: CGPoint(x: 296, y: 332))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 284, y: 333), controlPoint: CGPoint(x: 296, y: 336))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 274, y: 326), controlPoint: CGPoint(x: 277, y: 329))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 213, y: 293), controlPoint: CGPoint(x: 232, y: 316))
        //左腳開始
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 196, y: 304), controlPoint: CGPoint(x: 206, y: 298))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 200, y: 324), controlPoint: CGPoint(x: 204, y: 316))
        bodyLLegTailpath.addLine(to: CGPoint(x: 150, y: 325))
        bodyLLegTailpath.addCurve(to: CGPoint(x: 166, y: 315), controlPoint1: CGPoint(x: 147, y: 322), controlPoint2: CGPoint(x: 137, y: 318))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 159, y: 299), controlPoint: CGPoint(x: 160, y: 307))
        bodyLLegTailpath.addQuadCurve(to: CGPoint(x: 170, y: 289), controlPoint: CGPoint(x: 164, y: 291))
        
        let bodyLLegTailLayer = CAShapeLayer()
        bodyLLegTailLayer.path = bodyLLegTailpath.cgPath
        bodyLLegTailLayer.lineWidth = 2
        bodyLLegTailLayer.fillColor = UIColor.clear.cgColor
        bodyLLegTailLayer.strokeColor = UIColor.darkGray.cgColor
        view.layer.addSublayer(bodyLLegTailLayer)
        
        //頸部肚子
        let neckBellypath = UIBezierPath()
        neckBellypath.move(to: CGPoint(x: 158, y: 299))
        neckBellypath.addQuadCurve(to: CGPoint(x: 98, y: 250), controlPoint: CGPoint(x: 108, y: 290))
        neckBellypath.addQuadCurve(to: CGPoint(x: 158, y: 73), controlPoint: CGPoint(x: 80, y: 200))
        
        let neckBellyLayer = CAShapeLayer()
        neckBellyLayer.path = neckBellypath.cgPath
        neckBellyLayer.lineWidth = 2
        neckBellyLayer.fillColor = UIColor.clear.cgColor
        neckBellyLayer.strokeColor = UIColor.darkGray.cgColor
        view.layer.addSublayer(neckBellyLayer)
        
        //右腳
        let rLegpath = UIBezierPath()
        rLegpath.move(to: CGPoint(x: 145, y: 295))
        rLegpath.addQuadCurve(to: CGPoint(x: 145, y: 317), controlPoint: CGPoint(x: 150, y: 314))
        rLegpath.addQuadCurve(to: CGPoint(x: 96, y: 310), controlPoint: CGPoint(x: 96, y: 316))
        rLegpath.addQuadCurve(to: CGPoint(x: 115, y: 303), controlPoint: CGPoint(x: 94, y: 306))
        rLegpath.addQuadCurve(to: CGPoint(x: 111, y: 277), controlPoint: CGPoint(x: 110, y: 288))
        
        let rLegLayer = CAShapeLayer()
        rLegLayer.path = rLegpath.cgPath
        rLegLayer.lineWidth = 2
        rLegLayer.fillColor = UIColor.clear.cgColor
        rLegLayer.strokeColor = UIColor.darkGray.cgColor
        view.layer.addSublayer(rLegLayer)
        
        //右手
        let Handpath = UIBezierPath()
        Handpath.move(to: CGPoint(x: 95, y: 213))
        Handpath.addCurve(to: CGPoint(x: 75, y: 222), controlPoint1: CGPoint(x: 78, y: 206), controlPoint2: CGPoint(x: 81, y: 222))
        Handpath.addQuadCurve(to: CGPoint(x: 82, y: 207), controlPoint: CGPoint(x: 76, y: 214))
        Handpath.addQuadCurve(to: CGPoint(x: 69, y: 219), controlPoint: CGPoint(x: 75, y: 216))
        Handpath.addQuadCurve(to: CGPoint(x: 80, y: 202), controlPoint: CGPoint(x: 71, y: 211))
        Handpath.addQuadCurve(to: CGPoint(x: 61, y: 210), controlPoint: CGPoint(x: 65, y: 212))
        Handpath.addQuadCurve(to: CGPoint(x: 72, y: 199), controlPoint: CGPoint(x: 63, y: 207))
        Handpath.addQuadCurve(to: CGPoint(x: 59, y: 202), controlPoint: CGPoint(x: 63, y: 203))
        Handpath.addQuadCurve(to: CGPoint(x: 100, y: 191), controlPoint: CGPoint(x: 72, y: 185))
        Handpath.addQuadCurve(to: CGPoint(x: 73, y: 194), controlPoint: CGPoint(x: 84, y: 187))
        Handpath.addQuadCurve(to: CGPoint(x: 89, y: 195), controlPoint: CGPoint(x: 74, y: 198))
        
        //左手拇指
        Handpath.move(to: CGPoint(x: 199, y: 213))
        Handpath.addQuadCurve(to: CGPoint(x: 157, y: 208), controlPoint: CGPoint(x: 160, y: 202))
        Handpath.addQuadCurve(to: CGPoint(x: 165, y: 211), controlPoint: CGPoint(x: 162, y: 211))
       //左手食指手掌
        Handpath.move(to: CGPoint(x: 171, y: 209))
        Handpath.addQuadCurve(to: CGPoint(x: 153, y: 219), controlPoint: CGPoint(x: 154, y: 215))
        Handpath.addQuadCurve(to: CGPoint(x: 170, y: 215), controlPoint: CGPoint(x: 155, y: 220))
        Handpath.addQuadCurve(to: CGPoint(x: 155, y: 226), controlPoint: CGPoint(x: 155, y: 223))
        Handpath.addQuadCurve(to: CGPoint(x: 171, y: 220), controlPoint: CGPoint(x: 156, y:227 ))
        Handpath.addQuadCurve(to: CGPoint(x: 160, y: 232), controlPoint: CGPoint(x: 161, y: 227))
        Handpath.addQuadCurve(to: CGPoint(x: 174, y: 223), controlPoint: CGPoint(x: 161, y: 234))
        Handpath.addQuadCurve(to: CGPoint(x: 165, y: 238), controlPoint: CGPoint(x: 162, y: 238))
        Handpath.addQuadCurve(to: CGPoint(x: 174, y: 231), controlPoint: CGPoint(x: 169, y: 236))
        Handpath.addQuadCurve(to: CGPoint(x: 198, y: 241), controlPoint: CGPoint(x: 180, y: 228))
        
        let HandLayer = CAShapeLayer()
        HandLayer.path = Handpath.cgPath
        HandLayer.lineWidth = 2
        HandLayer.fillColor = UIColor.clear.cgColor
        HandLayer.strokeColor = UIColor.darkGray.cgColor
        view.layer.addSublayer(HandLayer)
        
        //左邊眉毛
        let Eyebrowpath = UIBezierPath()
        Eyebrowpath.move(to: CGPoint(x: 201, y: 97))
        Eyebrowpath.addQuadCurve(to: CGPoint(x: 213, y: 101), controlPoint: CGPoint(x: 207, y: 96))

        //右邊眉毛
        Eyebrowpath.move(to: CGPoint(x: 181, y: 102))
        Eyebrowpath.addQuadCurve(to: CGPoint(x: 191, y: 97), controlPoint: CGPoint(x: 185, y: 96))
        
        let EyebrowLayer = CAShapeLayer()
        EyebrowLayer.path = Eyebrowpath.cgPath
        EyebrowLayer.lineWidth = 2
        EyebrowLayer.fillColor = UIColor.clear.cgColor
        EyebrowLayer.strokeColor = UIColor.darkGray.cgColor
        view.layer.addSublayer(EyebrowLayer)
        
        //右邊眼眶
        let orbitpath = UIBezierPath()
        orbitpath.move(to: CGPoint(x: 190, y: 113))
        orbitpath.addCurve(to: CGPoint(x: 194, y: 136), controlPoint1: CGPoint(x: 180, y: 120), controlPoint2: CGPoint(x: 184, y: 135))
        orbitpath.addCurve(to: CGPoint(x: 189, y: 113), controlPoint1: CGPoint(x: 200, y: 133), controlPoint2: CGPoint(x: 202, y: 117))
        
        //左邊眼眶
        orbitpath.move(to: CGPoint(x: 214, y: 110))
        orbitpath.addCurve(to: CGPoint(x: 215, y: 134), controlPoint1: CGPoint(x: 206, y: 115), controlPoint2: CGPoint(x: 207, y: 129))
        orbitpath.addCurve(to: CGPoint(x: 213, y: 110), controlPoint1: CGPoint(x: 222, y: 133), controlPoint2: CGPoint(x: 224, y: 118))
        
        let orbitLayer = CAShapeLayer()
        orbitLayer.path = orbitpath.cgPath
        orbitLayer.lineWidth = 2
        orbitLayer.fillColor = UIColor.clear.cgColor
        orbitLayer.strokeColor = UIColor.darkGray.cgColor
        view.layer.addSublayer(orbitLayer)
        
        //右邊眼珠
        let eyeballpath = UIBezierPath()
        eyeballpath.move(to: CGPoint(x: 198, y: 121))
        eyeballpath.addCurve(to: CGPoint(x: 196, y: 134), controlPoint1: CGPoint(x: 188, y: 122), controlPoint2: CGPoint(x: 188, y: 133))
        eyeballpath.addCurve(to: CGPoint(x: 198, y: 121), controlPoint1: CGPoint(x: 200, y: 122), controlPoint2: CGPoint(x: 200, y: 133))
        
        //左邊眼珠
        eyeballpath.move(to: CGPoint(x: 219, y: 119))
        eyeballpath.addCurve(to: CGPoint(x: 219, y: 131), controlPoint1: CGPoint(x: 213, y: 122), controlPoint2: CGPoint(x: 214, y: 129))
        eyeballpath.addCurve(to: CGPoint(x: 219, y: 119), controlPoint1: CGPoint(x: 226, y: 119), controlPoint2: CGPoint(x: 220, y: 129))
        
        let eyeballLayer = CAShapeLayer()
        eyeballLayer.path = eyeballpath.cgPath
        eyeballLayer.fillColor = UIColor.darkGray.cgColor
        view.layer.addSublayer(eyeballLayer)
        
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}
struct ContentView: View {
    var body: some View {
        DrawView()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

