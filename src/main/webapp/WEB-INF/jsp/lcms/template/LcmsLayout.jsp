<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%
 /**
  * @Class Name : LcmsLayout.jsp
  * @Description : tiles layout
  * @Modification Information
  * 
  * @생성일                   생성자                생성내용
  *  ----------   --------   ---------------------------
  *  2021.07.22   김정윤              tiles Layout Created
  *
  *  @author 김정윤
  *  @since 2021.07.22
  *  @version 1.0
  *  @see

  */
%>
<!DOCTYPE html>
<html lang="ko">
<body>
<div id="wrap">
	<tiles:insertAttribute name="header"/>
	<div id="main_wrap">
		<tiles:insertAttribute name="content"/>
	</div>
	<tiles:insertAttribute name="footer"/>
</div>
</body>
</html>