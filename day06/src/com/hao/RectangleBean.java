package com.hao;

public class RectangleBean {
    private double length;

    private double width;

    public void setWidth(double width) {
        this.width = width;
    }

    public void setLength(double length) {
        this.length = length;
    }

    public double getArea() {
        return length * width;
    }


}
