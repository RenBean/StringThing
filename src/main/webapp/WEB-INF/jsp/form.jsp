<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <style>
        table.center {
            margin-left:auto;
            margin-right:auto;
        }
        body {text-align:center;
            background-image: url(".");
        }
        *{
            background-color: aliceblue;
            text-align: center;
        }
        a:hover{
            text-decoration: none;
            color:gold;
        }
        a{
            text-decoration: none;
            color:dimgrey;
        }
    </style>
    <title>Type a sentence</title>
    <%--<link rel="shortcut icon" href="/home/equalSign.png" type="image/x-icon" />--%>
</head>
<body>
<h1>Type a sentence</h1>
<br><br>
<form name="sentenceForm" method="POST" action="/recall">
    Input a sentence, any sentence will do:<hr>
    <TEXTAREA name="sentence" value="${sentence}" rows="2" cols="100" tabindex="40">
        </TEXTAREA><br>
    <c:forEach var="sentence" items="${sentences}">
        <option value="<c:out value="${sentence}"/>"><c:out value="${sentence}"/> </option>
    </c:forEach><br>
    <input type="submit">
</form>

<c:if test="${sentence != null}">
    <br><br>
    <hr>
    <br><br>
    Original Sentence: <c:out value="${sentence}"/><br>
    Word Count: <c:out value="${wordCount}"/><br>
    Characters Count: <c:out value="${charCount}"/><br>
    Reverse Sentence: <c:out value="${reverseString}"/><br>
    Pig Latin: <c:out value="${pigLatin}"/><br>
    Google Links:<br>
    <c:forEach var="googleLink" items="${googleLinks}">
        <a href="<c:out value="${googleLink}"/>><c:out value="${googleLink}"/></a><br>
    </c:forEach>
</c:if>

</body>
</html>

