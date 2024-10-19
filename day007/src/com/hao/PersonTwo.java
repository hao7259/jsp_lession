package com.hao;

import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet("/personTwo")
public class PersonTwo extends HttpServlet {
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        String Integers = req.getParameter("number");
        String backMess = analysis(Integers);
        out.println(backMess);
    }

    private String analysis(String integers) {
        String regex = "[0-9]+";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(integers);
        StringBuffer zero = new StringBuffer("3的倍数<br>");
        StringBuffer one = new StringBuffer("<br>除以三余1<br>");
        StringBuffer two = new StringBuffer("<br>除以三余2<br>");
        while (matcher.find()) {
            int num = Integer.parseInt(matcher.group());
            if (num % 3 == 0) {
                zero.append(num).append(" ");
            } else if (num % 3 == 1) {
                one.append(num).append(" ");
            }else if (num % 3 == 2) {
                two.append(num).append(" ");
            }
        }
        return zero.toString() + one.toString() + two.toString();
    }
}
