/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Neal
 */
public class CirCalculator {

    private static final double PI = 3.14159265359;
    private double radius;

    public double getRadius() {
        return radius;
    }

    public void setRadius(String radius) {
        this.radius = Double.valueOf(radius);
    }
    
    public double getCircArea(){
        return (radius * radius * PI);
    }
}
