package com.hao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/HandleData")
public class HandleData extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String s1 = req.getParameter("up");
        String s2 = req.getParameter("down");
        String s3 = req.getParameter("height");
        if (s1 == null || s2 == null || s3 == null) {
            resp.sendRedirect("inputTrapezium");
            return;
        }
        double up = Double.parseDouble(s1);
        double down = Double.parseDouble(s2);
        double height = Double.parseDouble(s3);
        double area = (up + down) * height / 2;
        trapeziumBean obj = new trapeziumBean();
        HttpSession session = req.getSession();
        session.setAttribute("bean", obj);
        obj.setUp(up);
        obj.setDown(down);
        obj.setHeight(height);
        obj.setArea(area);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("show.jsp");
        requestDispatcher.forward(req,resp);
    }

}
