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
				<h1>자주찾는질문</h1>
				<p>서비스 이용 시 궁금한 점을 해소시켜 드립니다.</p>
			</div>
	        <form class="form-inline" id="frmSearch" action="notice/list">
	            <input type="hidden" id="startPage" name="startPage" value=""><!-- 페이징을 위한 hidden타입 추가 -->
	            <input type="hidden" id="visiblePages" name="visiblePages" value=""><!-- 페이징을 위한 hidden타입 추가 -->
	        </form>
	        
	        
            <div class="faq">
                <table>
                	<colgroup>
                		<col width="50"/>
                		<col width=""/>
                	</colgroup>
                    <c:choose>
                        <c:when test="${fn:length(faqList) == 0}">
                            <tr>
                                <td colspan="2" class="no-data">
									조회결과가 없습니다.
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="faqList" items="${faqList}" varStatus="status">
                                <tr onclick="javascript:faqlistAccordion(this,${faqList.no});">
                                    <td align="center">Q</td>
                                    <td>
                                        ${faqList.subject}
                                    </td>
                                </tr>
                                <tr>
                                	<td colspan="2" id="faq_content_${faqList.no}" class="accordion"></td>
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
