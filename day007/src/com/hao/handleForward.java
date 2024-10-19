package com.hao;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/handleForward")
public class handleForward extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init();
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        req.setCharacterEncoding("utf-8");
        RequestDispatcher dispatcher = null;
        String mess = req.getParameter("submit");
        if (mess == null || mess.isEmpty()) {
            resp.sendRedirect("inputIntegers.jsp");
            return;
        }
        if (mess.contains("personOne")) {
            dispatcher = req.getRequestDispatcher("personOne");
            dispatcher.forward(req, resp);
        } else if (mess.contains("personTwo")) {
            dispatcher = req.getRequestDispatcher("personTwo");
            dispatcher.forward(req, resp);
        }

    }
}
