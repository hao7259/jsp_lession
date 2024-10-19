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
@WebServlet("/personOne")
public class PersonOne extends HttpServlet {

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


    private String analysis(String input) {
        Pattern pattern;
        Matcher matcher;
        String regex = "-?[0-9]+";
        pattern = Pattern.compile(regex);
        matcher = pattern.matcher(input);
        StringBuffer evenNumbers = new StringBuffer("<br>偶数");
        StringBuffer oddNumbers = new StringBuffer("<br>奇数");
        while (matcher.find()) {
            String number = matcher.group();
            if (Integer.parseInt(number) % 2 == 0) {
                evenNumbers.append(number+",");
            }else {
                oddNumbers.append(number+",");
            }
        }
        return oddNumbers.append(evenNumbers).toString();
    }
}
