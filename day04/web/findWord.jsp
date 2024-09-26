<%--
  Created by IntelliJ IDEA.
  User: 20575
  Date: 2024/9/26
  Time: 19:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html" %>
<%@ page pageEncoding="utf-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.regex.Pattern" %>
<%@ page import="java.util.regex.Matcher" %>
<HTML>
<body>
<p>
    <%!
        class Word {
            String englishWord;
            int count;

            public boolean equals(Object o) {
                Word wd = (Word) o;
                return englishWord.equals(wd.englishWord);
            }
        }
    %>
    <%
        request.setCharacterEncoding("utf-8");
        String englishText = request.getParameter("english");
        ArrayList<Word> wordList = new ArrayList<Word>();
        Pattern pattern;
        Matcher matcher;
        String regex = "[a-zA-Z]+";
        pattern = Pattern.compile(regex);
        matcher = pattern.matcher(englishText);
        int allWordAmount = 0;
        while (matcher.find()) {
            String str = matcher.group();
            allWordAmount++;
            Word wd = new Word();
            wd.englishWord = str;
            if (!wordList.contains(wd)) {
                wordList.add(wd);
                wd.count = 1;
            } else {
                int index = wordList.indexOf(wd);
                wd = wordList.get(index);
                wd.count += 1;
            }
        }
        int differentWords = wordList.size();
        Iterator<Word> ite = wordList.iterator();
        out.print("出现了" + allWordAmount + "个单词:<br>");
        out.print("使用了" + differentWords + "个不相同的单词:<br>");
        while (ite.hasNext()) {
            Word wd = ite.next();
            double fq = (double) (wd.count) / allWordAmount;
            String frequency = String.format("%.2f", fq);
            out.print("<br>" + wd.englishWord + "频率（保留2位小数）" + frequency);
        }
    %>
</p></body>
</HTML>

