<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@include file="../include/header.jsp" %>
<%@include file="sub_menu.jsp" %>
	<article>
		<h1>회원정보</h1>
			<form name="frm" method="post">
				<table id="userinfo">
					<tr>
						<th width="140">이름</th>
						<td width="200">${mDTO.name}</td>
						<th width="140">아이디</th>
						<td width="200">${mDTO.id}</td>
					<tr>
						<th width="140">생년월일</th>
						<td width="200">${mDTO.birth}</td>
					</tr>
					<tr>
						<th width="140">전화번호</th>
						<td width="200"><input type="text" name="pnum" value="${mDTO.pnum}"> 
					</tr>
					<tr>
						<th width="140">이메일</th>
						<td><input type="text" name="email" value="${mDTO.email}"></td>
					</tr>
					<tr>
						<th width="140">주소</th>
						<td><input type="text" name="addr" value="${mDTO.addr}"></td>
					</tr>
				</table>
				<input class="mpbtn" type="button" value="수정" onclick="mem_up_save('${mDTO.id}')">
				<input class="mpbtn" type="button" value="취소" onclick="dg_no()">
			</form>
	</article>
<%@include file="../include/footer.jsp" %>