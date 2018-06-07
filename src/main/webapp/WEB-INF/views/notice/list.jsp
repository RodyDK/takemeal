<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>


<div class="container">
	<div>
		<div class="recipe_wrap">
		
			<div class="title">
				<h1>공지사항</h1>
				<p>서비스 이용 시 중요사항을 전달해드립니다. </p>
			</div>
	        <form class="form-inline" id="frmSearch" action="notice/list">
	            <input type="hidden" id="startPage" name="startPage" value=""><!-- 페이징을 위한 hidden타입 추가 -->
	            <input type="hidden" id="visiblePages" name="visiblePages" value=""><!-- 페이징을 위한 hidden타입 추가 -->
	        </form>
	        
	        
            <div class="notice">
                <table>
                	<colgroup>
                		<col width="80"/>
                		<col width=""/>
                		<col width="150"/>
                	</colgroup>
                    <tr>
                        <th>
							번호
                        </th>
                        <th>
                           	 제목
                        </th>
                        <th>
                          	  작성일
                        </th>
                    </tr>
                    <c:choose>
                        <c:when test="${fn:length(noticeList) == 0}">
                            <tr>
                                <td colspan="3" class="no-data">
									조회결과가 없습니다.
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="noticeList" items="${noticeList}" varStatus="status">
                                <tr>
                                    <td align="center">${noticeList.no}</td>
                                    <td>
                                        <a href="noticeView.do?no=${noticeList.no}">${noticeList.subject}</a>
                                    </td>
                                    <td align="center">${noticeList.reg_date}</td>
                                </tr>
                            </c:forEach>
                        </c:otherwise> 
                    </c:choose>
                </table>
                <div id="pagination"></div>
            </div>
		</div>
	</div>
</div>
							
<%@ include file="../footer.jsp" %>
</body>
</html>
