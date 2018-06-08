<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>


/* Style the tab */
.tab {
    float: left;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
    width: 10%;
    height: 300px;
}

/* Style the buttons that are used to open the tab content */
.tab button {
    display: block;
    background-color: inherit;
    color: black;
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
	display: none;
    float: left;
    padding: 0px 12px;
    border: 1px solid #ccc;
    width: 30%;
    border-left: none;
    height: 300px;
}

.ref_closed{
	display:block;
}

.ref_openall{
	display:none;
}

</style>

<html>
<script type="text/javascript">
/* $(document).click(function(tablinks){
	
	var clickElement
}); */
function openRef(evt, refName) {
    // Declare all variables
    var i, tabcontent, tablinks;
    
    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the link that opened the tab
    document.getElementById(refName).style.display = "block";
    evt.currentTarget.className += " active";
}
</script>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>
<div class="container">
<div class="inner" style="overflow:hidden;">

     <h1>냉장고 페이지</h1>
     <div class="ref_closed">
     	<img src="resources/images/closed.jpg">
     </div>
     <div class="ref_openall">
     	<img src="resources/images/open_all.jpg">
     </div>
     
     <div class="tab">
	 <button class="tablinks" onclick="openRef(event, 'freeze')">냉동실 열어보기</button>
	 <button class="tablinks" onclick="openRef(event, 'cold')">냉장실 열어보기</button>
	</div>
	
	<div id="freeze" class="tabcontent">
	  <h3>냉동실</h3>
	  <p>냉동 DB나와랏</p>
	</div>
	
	<div id="cold" class="tabcontent">
	  <h3>냉장실</h3>
	  <p>냉장 DB나와랏</p> 
	</div>
</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
