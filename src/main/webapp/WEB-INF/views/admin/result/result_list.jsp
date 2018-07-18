<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page isELIgnored="false"%>
<script>
$(document).ready(function() {
$('.modal').modal({
dismissible : false
});
});
$(document).ready(function() {
$('select').formSelect();
});
</script>
<!-- 삭제확인창-->
<script>
function deleteAlert(name,seq){
alert("'"+name+"' 을삭제하시겠습니까);
}
</script>
<!-- /삭제확인창-->
<script>
function checkNull(){
if($("#category_seq").val().length<1){
alert("대분류번호값을입력해주세요");
$("#category_seq").focus();
return $('#cateInsert').submit(false);
} else if($("#category_name").val().length<1){
alert("대분류이름값을입력해주세요");
$("#category_name").focus();
return $('#cateInsert').submit(false);
} else if($("#sub_category_seq").val().length<1){
alert("중분류번호값을입력해주세요");
$("#sub_category_seq").focus();
return $('#cateInsert').submit(false);
} else if($("#sub_category_name").val().length<1){
alert("중분류이름값을입력해주세요");
$("#sub_category_name").focus();
return $('#cateInsert').submit(false);
}
return $('#cateInsert').submit();
}
</script>

<!-- 페이지이름-->
<nav class="teal">
     <div class="nav-wrapper">
      <div class="bread_div">
        <a href="#!" class="breadcrumb">결과물관리</a>
        <a href="#!" class="breadcrumb">결과물목록</a>
      </div>
    </div>
  </nav>
<!-- /페이지이름-->
<!-- main -->
<div class="main_body" style="width: 70%">
<!-- 수정부분-->
<div class="row box">
<table class="highlight centered">
<thead>
<tr>
<th>예약번호</th>
<th>예약자</th>
<th>예약일</th>
<th>장비반납여부</th>
<th>결과물제출여부</th>
</tr>
</thead>

<tbody>
<c:forEach items="${resultList}" var="resultData" varStatus="loop">
<tr>
<td>${resultData.RESERVATION_SEQ}</td>
<td>${resultData.NAME}</td>
<td>${resultData.RESERVE_DATE}</td>
<td>${resultData.RETURN_CHECK}</td>
<td>${resultData.NUM_OF_PROTOTYPE}</td>
</tr>
</c:forEach>
</tbody>
</table>
</div>
</div>

<!-- CATEGORY추가modal -->

<div id="modal1" class="modal modal-fixed-footer">
<div class="modal-content">
<div class="row">
<div class="row">
<div class="input-field col s12">
<span><i class="modal-close material-icons right">close</i></span>
<h4>카테고리추가</h4>
</div>
</div>

<form id="cateInsert" class="col s12" method="POST" action="<c:url value='/admin/category/category_merge'/>">
<input type="hidden" name="forwardView" value="/admin/category/category_list" />

<div class="row">
<div class="input-field col s12">
<input name="CATEGORY_SEQ" id="category_seq" type="text" class="validate"> <label
for="category_seq">대분류번호</label>
</div>
</div>
<div class="row">
<div class="input-field col s12">
<input name="CATEGORY_NAME" id="category_name" type="text" class="validate"> <label
for="category_name">대분류이름</label>
</div>
</div>
<div class="row">
<div class="input-field col s12">
<input name="SUB_CATEGORY_SEQ" id="sub_category_seq" type="text" class="validate"> <label
for="sub_category_seq">중분류번호</label>
</div>
</div>
<div class="row">
<div class="input-field col s12">
<input name="SUB_CATEGORY_NAME" id="sub_category_name" type="text" class="validate"> <label
for="sub_category_name">중분류이름</label>
</div>
</div>
</div>
</div>
<div class="modal-footer">
<button class="btn waves-effect waves-light" onclick="checkNull();" name="action">
추가<i class="material-icons right">send</i>
</button>
</div>
</form>
</div>
<!-- /CATEGORY추가modal -->

<!-- 카테고리추가버튼-->
 <div class="fixed-action-btn">
<a class="btn-floating btn-large red modal-trigger" href="#modal1">
<i class="large material-icons">add</i>
</a>
</div> 

<!-- /카테고리추가버튼-->
<!-- /수정부분-->

<!-- /main -->