/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Neal
 */
public class TriCalculator {
    private double sideA;
    private double sideB;
    private double sideC;

    public double getSideA() {
        return sideA;
    }

    public void setSideA(String sideA) {
        this.sideA = Double.valueOf(sideA);
    }

    public double getSideB() {
        return sideB;
    }

    public void setSideB(double sideB) {
        this.sideB = Double.valueOf(sideB);
    }

    public double getSideC() {
        return sideC;
    }

    public void setSideC(double sideC) {
        this.sideC = Double.valueOf(sideC);
    }
    
    public double getThirdSide(){
        double thirdSide = 0;
        
        if (sideC == 0){
            thirdSide = Math.sqrt(Math.pow(sideA,2) + Math.pow(sideB,2));
        }
        if (sideB == 0){
            thirdSide = Math.sqrt(Math.pow(sideC,2) - Math.pow(sideA,2));
        }
        if (sideA == 0){
            thirdSide = Math.sqrt(Math.pow(sideC,2) - Math.pow(sideB,2));
        }
        return thirdSide;
    }
}
