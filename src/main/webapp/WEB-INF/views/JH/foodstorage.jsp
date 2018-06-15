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
    overflow:scroll;
}

</style>

<html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	// .check 클래스 중 어떤 원소가 체크되었을 때 발생하는 이벤트
	
	$(".check").click(function(){
	
	 var val=$(this).val();
	 $("#checked_food").html($("#checked_food").html()+"<input type='text' name='food_name' value='"+val+"' style='border:none; width:5%;' class='select_food_name'>"
	 +"<input type='number' class='select_food_count' name='food_count' placeholder='수량을 선택하세요'>"
	 + "<br>");
	 $(this).hide();
	
	 $("#select_food_btn").on("click", function(){
		 $("#checked_food").html("");
		 $(".check").show();
		 $('.check').removeAttr('checked');
		 
	 });
	
	});
	
	
	
	
});



function goPage(url){
	location.href = url;
}

function openRef(evt, refName, loc) {
    // Declare all variables
    var i, tabcontent, tablinks;

    if(refName=='freeze'){
    	if("resources/images/open_bottom_sr.jpg"== $(loc).attr("src")){
    		$("#bot").attr("src","resources/images/closed_bottom.jpg");
    		tabcontent = document.getElementsByClassName("tabcontent");
    	    tabcontent.freeze.style.display = "none";
    	}else{
    		$("#bot").attr("src","resources/images/open_bottom_sr.jpg");
    	    // Get all elements with class="tablinks" and remove the class "active"
    	    tablinks = document.getElementsByClassName("tablinks");
    	    for (i = 0; i < tablinks.length; i++) {
    	        tablinks[i].className = tablinks[i].className.replace(" active", "");
    	    }

    	    // Show the current tab, and add an "active" class to the link that opened the tab
    	    document.getElementById(refName).style.display = "block";
    	    evt.currentTarget.className += " active";
    	}  	
    	
    }
    else if(refName=='cold'){
    	if("resources/images/open_top_sr.jpg"== $(loc).attr("src")){
    		$("#top").attr("src","resources/images/closed_top.jpg");
    		tabcontent = document.getElementsByClassName("tabcontent");
    	    tabcontent.cold.style.display = "none";
    	}else{
    		$("#top").attr("src","resources/images/open_top_sr.jpg");
    	    // Get all elements with class="tablinks" and remove the class "active"
    	    tablinks = document.getElementsByClassName("tablinks");
    	    for (i = 0; i < tablinks.length; i++) {
    	        tablinks[i].className = tablinks[i].className.replace(" active", "");
    	    }

    	    // Show the current tab, and add an "active" class to the link that opened the tab
    	    document.getElementById(refName).style.display = "block";
    	    evt.currentTarget.className += " active";
    	    
    	  /*   $.ajax({
    	    	url:"",
    	    	type:"get",
    	    	dataType:"json",
    	    	data:{
    	    		a: a,
    	    	},
    	    	success:function(data){
    	    		
    	    	},
    	    	error:function(a,b,c){
    	    		alert("a = " + a + " , b = " + b + " , c = " + c);
    	    	}
    	    }); */
    	}
    }
    
}
</script>
<%@ include file="../head.jsp" %>
<body>
<%@ include file="../header.jsp" %>
<div class="container">
<div class="inner" style="overflow:hidden;">

     <h1>냉장고 페이지</h1>
     <div class="ref">
     	<img id="top" src="resources/images/closed_top.jpg" onclick="openRef(event, 'cold', '#top')"> <br>
     	<img id="bot" src="resources/images/closed_bottom.jpg" onclick="openRef(event, 'freeze', '#bot')">
     </div>

     <div class="tab">
	 <button class="tablinks" onclick="openRef(event, 'cold', '#top')">냉장실</button>
	 <button class="tablinks" onclick="openRef(event, 'freeze', '#bot')">냉동실</button>
	</div>
	
	<div id="cold" class="tabcontent" >
	  <h3>냉장실</h3>
	 <c:forEach items="${cold}" var="coldFood">
		<p>
		<input type="checkbox" class="check" value="${coldFood.food_name}"> ${coldFood.food_name} :    ${coldFood.food_count}      </p>
	</c:forEach>
	</div>
	
	<div id="freeze" class="tabcontent">
	  <h3>냉동실</h3>
	 <c:forEach items="${freeze}" var="freezeFood">
		<p><input type="checkbox" class="check" value="${freezeFood.food_name}">${freezeFood.food_name} : ${freezeFood.food_count}</p>
	</c:forEach>
	</div>
	
	선택한 재료 :<br>
	<form method="POST" action="updateFood.do?no=${loginUser.no }">
	<div id="checked_food">
	
	
	</div>
	<button type=submit>update</button>
	</form>
	
	<button id='select_food_btn'>Reset</button>
	<br>
	
	<div class="ref_insert">
	<!-- <button onclick="goPage('./foodinsert.do');">
	냉장고 재료 등록 하러가기~
	</button> -->
	
	</div>
	
	
	
	
	
	
	
	
</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>
