<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page session="false" %>
<html>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>

<div class="container">
	<div>
		<div class="recipe_wrap">
			<div class="recipe_box_normal">
				<ul>		
				<c:choose>
				    <c:when test="${fn:length(noticeList) == 0}">
				        <li>
							조회결과가 없습니다.
				        </li>
				    </c:when>
				    <c:otherwise>
				        <c:forEach var="noticeList" items="${noticeList}" varStatus="status">
							<li>
								<a class="thumbnail" href="noticeView.do?no=${noticeList.no}">
								</a>
								<span class="author">
									<a href="noticeView.do?userid=${noticeList.userid}">
										<strong>${noticeList.userid}</strong>
									</a>			
								</span>
								<h2 class="notice_title">
									<a class="call_recipe" href="noticeView.do?no=${noticeList.no}">
										${noticeList.subject}
									</a>
								</h2>
								</div>
							</li>
						
				        </c:forEach>
				    </c:otherwise> 
				</c:choose>				
				</ul>
			</div>
			<c:forEach var="noticeList" items="${noticeList}" varStatus="status">
				<table>
								<tr>
									<td align="center">${noticeList.no}</td>
									<td align="center"> <a href="noticeList.do?no=${noticeList.subject}"> </a> </td>
									<td align="center">${noticeList.userid}</td>												
									<td align="center">${noticeList.contents}</td>															
									<td align="center">${noticeList.hit}</td>														
									<td align="center">${noticeList.reg_date}</td>														
								</tr>
				</table>
			</c:forEach>
			<a href="noticeEdit.do">글쓰기</a>
		</div>
	</div>
</div>
							
<%@ include file="../footer.jsp" %>
</body>
</html>
