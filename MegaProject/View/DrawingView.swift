//
//  DrawingView.swift
//  DrawingProject
//
//  Created by Perkins, Ryan on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    public override func draw(_ rect: CGRect) -> Void
    {
        // Drawing code
        createStickFigure().stroke()
        drawTurtle().stroke()
        drawPumpkin1().stroke()
        drawPumpkin2().stroke()
        drawPumpkin3().stroke()
    }
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.blue.setStroke()
        figure.lineWidth = 8.0
        figure.addArc(withCenter: CGPoint(x: 200, y: 200),
                      radius: CGFloat(20),
                      startAngle: CGFloat(0),
                      endAngle: CGFloat(2) * CGFloat.pi,
                      clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        return figure
    }
    
    private func drawTurtle() -> UIBezierPath
    {
        let logo : UIBezierPath = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 200))
        logo.addLine(to: CGPoint(x: 100, y: 250))
        logo.addLine(to: CGPoint(x: 50, y: 300))
        logo.close()
        logo.fill()
        
        return logo
    }
    
    private func drawPumpkin1() -> UIBezierPath
    {
        let pump : UIBezierPath = UIBezierPath()
        UIColor.orange.setFill()
        UIColor.orange.setStroke()
        
        pump.addArc(withCenter: CGPoint(x: 100, y: 100),
                    radius: CGFloat(40),
                    startAngle: CGFloat(0),
                    endAngle: CGFloat(2) * CGFloat.pi,
                    clockwise: true)
        pump.close()
        pump.fill()
        
        return pump
    }
    
    private func drawPumpkin2() -> UIBezierPath
    {
        let pump : UIBezierPath = UIBezierPath()
        
        UIColor.black.setFill()
        pump.move(to: CGPoint(x: 80, y: 80))
        pump.addLine(to: CGPoint(x: 95, y: 90))
        pump.addLine(to: CGPoint(x: 85, y: 95))
        pump.close()
        pump.fill()
        
        pump.move(to: CGPoint(x: 120, y: 80))
        pump.addLine(to: CGPoint(x: 105, y: 90))
        pump.addLine(to: CGPoint(x: 115, y: 95))
        pump.close()
        pump.fill()
        
        pump.move(to: CGPoint(x:100, y: 93))
        pump.addLine(to: CGPoint(x: 105, y: 103))
        pump.addLine(to: CGPoint(x: 95, y: 103))
        pump.close()
        pump.fill()
        
        pump.move(to: CGPoint(x: 80, y: 110))
        pump.addLine(to: CGPoint(x: 120, y: 110))
        pump.addLine(to: CGPoint(x: 110, y: 130))
        pump.addLine(to: CGPoint(x: 90, y: 130))
        pump.close()
        pump.fill()
        
        return pump
    }
    
    private func drawPumpkin3() -> UIBezierPath
    {
        let pump : UIBezierPath = UIBezierPath()
        
        UIColor.green.setStroke()
        UIColor.green.setFill()
        pump.move(to: CGPoint(x: 95, y: 61))
        pump.addLine(to: CGPoint(x: 115, y: 50))
        pump.addLine(to: CGPoint(x: 105, y: 61))
        pump.close()
        pump.fill()
        
        return pump
    }
}
