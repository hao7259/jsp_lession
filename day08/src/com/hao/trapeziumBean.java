package com.hao;


public class trapeziumBean {
    double up;
    double down;
    double height;
    double area;

    public trapeziumBean() {
    }

    public double getArea() {
        return (up+down)*(height/2);
    }

    public void setArea(double area) {
        this.area = area;
    }

    public double getUp() {
        return up;
    }

    public void setUp(double up) {
        this.up = up;
    }

    public double getDown() {
        return down;
    }

    public void setDown(double down) {
        this.down = down;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }
}
