package com.hao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/cal")
public class cal extends HttpServlet {
    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        numberBean numberBean = new numberBean();
        session.setAttribute("numberBean", numberBean);
        String first = req.getParameter("first");
        String var = req.getParameter("var");
        String number = req.getParameter("number");
        String mess = req.getParameter("submit");
        if (first.isEmpty() || var.isEmpty() || number.isEmpty()) {
            resp.sendRedirect("inputNumbers.jsp");
            return;
        }
        if (mess.contains("等差")) {
            calculate(first, var, number, numberBean, 0);

        }
        if (mess.contains("等比")) {
            calculate(first, var, number, numberBean, 1);

        }
        req.getRequestDispatcher("inputNumbers.jsp").forward(req, resp);
    }

    void calculate(String first, String var, String number, numberBean bean, int type) {
        double a = Double.parseDouble(first);
        double b = Double.parseDouble(var);
        int n = Integer.parseInt(number);
        bean.setFirst(a);
        bean.setVar(b);
        bean.setNumber(n);
        int i = 1;
        double sum = 0, item = a;
        if (type == 0) {
            bean.setName("等差级数的公差");
            while (i <= n) {
                sum += item;
                i++;
                item += b;
            }
            bean.setSum(sum);
        }
        if (type == 1) {
            bean.setName("等差级数的公比");
            while (i <= n) {
                sum += item;
                i++;
                item *= b;
            }
            bean.setSum(sum);
        }

    }
}
