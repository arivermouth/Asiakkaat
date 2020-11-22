<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
.keskella{
	text-align: center;
	background-color: lightblue;
	width: 150px;
	height: 40px;
}
</style>
</head>
<body>
<table id="listaus">
	<thead>	
		<tr>
			<th class="keskella">Hakusana:</th>
			<th colspan="2" class="keskella"><input type="text" id="hakusana"></th>
			<th class="keskella"><input type="button" value="hae" id="hakunappi"></th>
		</tr>			
		<tr>
			<th class="keskella">Etunimi</th>
			<th class="keskella">Sukunimi</th>
			<th class="keskella">Puhelin</th>
			<th class="keskella">Sähköposti</th>							
		</tr>
	</thead>
	<tbody>
	</tbody>
</table>
<script>
$(document).ready(function(){
	
	haeAsiakkaat();
	$("#hakunappi").click(function(){		
		haeAsiakkaat();
	});
	$(document.body).on("keydown", function(event){
		  if(event.which==13){ 
			  haeAsiakkaat();
		  }
	});
	$("#hakusana").focus();
});	

function haeAsiakkaat(){
	$("#listaus tbody").empty();
	$.ajax({url:"asiakkaat/"+$("#hakusana").val(), type:"GET", dataType:"json", success:function(result){		
		$.each(result.asiakkaat, function(i, field){  
        	var htmlStr;
        	htmlStr+="<tr>";
        	htmlStr+="<td>"+field.etunimi+"</td>";
        	htmlStr+="<td>"+field.sukunimi+"</td>";
        	htmlStr+="<td>"+field.puhelin+"</td>";
        	htmlStr+="<td>"+field.sposti+"</td>";  
        	htmlStr+="</tr>";
        	$("#listaus tbody").append(htmlStr);
        });	
    }});
}

</script>
</body>
</html>