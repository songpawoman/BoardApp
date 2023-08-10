<%@ page contentType="text/html;charset=utf-8"%>
<%
	// 내장객체 중 응답정보 구성을 담당하는 객체인 response 객체에게 
	// 문자열 출력시 한글 등이 깨지지 않도록 인코딩 처리 
	//response.setCharacterEncoding("utf-8");
	out.print("여기는 스클립틀릿 영역");
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>
<script>
window.addEventListener("load", function(){
	let bt=document.getElementById("bt");

	bt.addEventListener("click", function(){
		location.href="/board/registform.html";	
	});	
	
});
</script>
</head>
<body>

<table>
  <tr>
    <th>No</th>
    <th>제목</th>
    <th>작성자</th>
	<th>등록일</th>
	<th>조회수</th>
  </tr>

<%for(int i=0;i<10;i++){%>
  <tr>
    <td><%out.print(i);%></td>
    <td>Smith</td>
    <td>50</td>
	<td>50</td>
	<td>50</td>
  </tr>
<%}%>
	<tr>
		<td colspan="5">
			<button id="bt">글쓰기</button>
		</td>
	</tr>
</table>

</body>
</html>






