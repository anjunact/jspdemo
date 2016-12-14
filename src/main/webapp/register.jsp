<%@ page language="java"  pageEncoding="utf8"%>
<jsp:useBean id="user" scope="page" class="com.anjun.bean.User"/>
<jsp:setProperty name="user" property="*"/>
或者用以下,param可以不填写,其中param对应的是提交页面的表单name
<jsp:setProperty property="userName" name="user" param="userName"/>
<jsp:setProperty property="password" name="user" param="password"/>
<jsp:setProperty property="age" name="user" param="age"/>
<html>
  <body> 
      注册成功:<br>
      <hr>
      使用Bean的属性方法<br>
      用户名: <%=user.getUserName()%><br>
      密码: <%=user.getPassword()%><br>
      年龄: <%=user.getAge()%><br>
      <hr>
      使用getProperty<br>
      用户名:<jsp:getProperty name="user" property="userName"/><br>
      密码:  <jsp:getProperty name="user" property="password"/><br>
      年龄:  <jsp:getProperty name="user" property="age"/>
      客户端名称:<%=request.getRemoteAddr() %>
  </body>
</html>