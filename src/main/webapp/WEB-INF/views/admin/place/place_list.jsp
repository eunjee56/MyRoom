<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page isELIgnored="false"%>

<script>
	document.addEventListener('DOMContentLoaded', function() {
		var elems = document.querySelectorAll('.modal');
		var instances = M.Modal.init(elems, options);
	});

	// Or with jQuery

	$(document).ready(function() {
		$('.modal').modal();
	});
	$(document).ready(function() {
		$('select').formSelect();
	});
</script>

<!-- main -->
<div class="main_body" style="width: 70%">
	<!-- 수정부분 -->


	<!--   장비관리 navbar -->
	<nav class="nav-extended">
		<div class="nav-wrapper">

			<a href="#" class="brand-logo"
				style="margin-left: 20px; color: white;">장소관리</a>
			<!--
			<a href="#" data-target="mobile-demo" class="sidenav-trigger"><i
				class="material-icons">menu</i></a>
 			<ul id="nav-mobile" class="right hide-on-med-and-down">
				<li><a href="sass.html">Sass</a></li>
				<li><a href="badges.html">Components</a></li>
				<li><a href="collapsible.html">JavaScript</a></li>
			</ul> -->
		</div>
		<div class="nav-content">
			<ul class="tabs tabs-transparent">
				<li class="tab"><a class="active" href="#test1">미팅롬</a></li>
				<li class="tab"><a class="active" href="#test2">개인창작실</a></li>
				<li class="tab"><a class="active" href="#test3">회의실</a></li>
				<li class="tab"><a class="active" href="#test4">스튜디오</a></li>
			</ul>
		</div>
	</nav>


	<!--   /장비관리 navbar -->
	<div class="row">

		<div class="col s12 m5" style="width: 33%; display: inline-block;">
			<div class="card">
				<div class="card-image">
					<img src="<c:url value='/resources/images/creationRoom.PNG'/>">
					<!-- <span class="card-name" style="color: black;">개인창작실</span> -->
				</div>
				<div class="card-content">
					<div class="card-title">
						<label>장소명</label>
						<p class="form_title">개인창작실</p>
					</div>
					<div class="manufacturer">
						<label>위치</label>
						<p class="form_manufacturer">3층</p>
					</div>
					<div class="discript">
						<label>설명</label>
						<p class="form_discript">◎ 목재가공기기 구비 ◎ 현장 접수로 진행하며, 신청서 작성 중에
							마감될 수 있습니다. 궁금하신 사항은 프로그램 신청 문의에 등록된 연락처로 문의해주세요.</p>
					</div>
					<div class="manager">
						<label>담당자</label>
						<p class="form_manager">김민채</p>
					</div>
				</div>
				<div class="card-action">
					<a href="#">예약내역</a>
				</div>
			</div>
		</div>

		<div class="col s12 m5" style="width: 33%; display: inline-block;">
			<div class="card">
				<div class="card-image">
					<img src="<c:url value='/resources/images/creationRoom.PNG'/>">
					<!-- <span class="card-name" style="color: black;">개인창작실</span> -->
				</div>
				<div class="card-content">
					<div class="card-title">
						<label>장소명</label>
						<p class="form_title">개인창작실</p>
					</div>
					<div class="manufacturer">
						<label>위치</label>
						<p class="form_manufacturer">3층</p>
					</div>
					<div class="discript">
						<label>설명</label>
						<p class="form_discript">◎ 목재가공기기 구비 ◎ 현장 접수로 진행하며, 신청서 작성 중에
							마감될 수 있습니다. 궁금하신 사항은 프로그램 신청 문의에 등록된 연락처로 문의해주세요.</p>
					</div>
					<div class="manager">
						<label>담당자</label>
						<p class="form_manager">김민채</p>
					</div>
				</div>
				<div class="card-action">
					<a href="#">예약내역</a>
				</div>
			</div>
		</div>

		<div class="col s12 m5" style="width: 33%; display: inline-block;">
			<div class="card">
				<div class="card-image">
					<img src="<c:url value='/resources/images/creationRoom.PNG'/>">
					<!-- <span class="card-name" style="color: black;">개인창작실</span> -->
				</div>
				<div class="card-content">
					<div class="card-title">
						<label>장소명</label>
						<p class="form_title">개인창작실</p>
					</div>
					<div class="manufacturer">
						<label>위치</label>
						<p class="form_manufacturer">3층</p>
					</div>
					<div class="discript">
						<label>설명</label>
						<p class="form_discript">◎ 목재가공기기 구비 ◎ 현장 접수로 진행하며, 신청서 작성 중에
							마감될 수 있습니다. 궁금하신 사항은 프로그램 신청 문의에 등록된 연락처로 문의해주세요.</p>
					</div>
					<div class="manager">
						<label>담당자</label>
						<p class="form_manager">김민채</p>
					</div>
				</div>
				<div class="card-action">
					<a href="#">예약내역</a>
				</div>
			</div>
		</div>

		<div class="col s12 m5" style="width: 33%; display: inline-block;">
			<div class="card">
				<div class="card-image">
					<img src="<c:url value='/resources/images/creationRoom.PNG'/>">
					<!-- <span class="card-name" style="color: black;">개인창작실</span> -->
				</div>
				<div class="card-content">
					<div class="card-title">
						<label>장소명</label>
						<p class="form_title">개인창작실</p>
					</div>
					<div class="manufacturer">
						<label>위치</label>
						<p class="form_manufacturer">3층</p>
					</div>
					<div class="discript">
						<label>설명</label>
						<p class="form_discript">◎ 목재가공기기 구비 ◎ 현장 접수로 진행하며, 신청서 작성 중에
							마감될 수 있습니다. 궁금하신 사항은 프로그램 신청 문의에 등록된 연락처로 문의해주세요.</p>
					</div>
					<div class="manager">
						<label>담당자</label>
						<p class="form_manager">김민채</p>
					</div>
				</div>
				<div class="card-action">
					<a href="#">예약내역</a>
				</div>
			</div>
		</div>

		<div class="col s12 m5" style="width: 33%; display: inline-block;">
			<div class="card">
				<div class="card-image">
					<img src="<c:url value='/resources/images/creationRoom.PNG'/>">
					<!-- <span class="card-name" style="color: black;">개인창작실</span> -->
				</div>
				<div class="card-content">
					<div class="card-title">
						<label>장소명</label>
						<p class="form_title">개인창작실</p>
					</div>
					<div class="manufacturer">
						<label>위치</label>
						<p class="form_manufacturer">3층</p>
					</div>
					<div class="discript">
						<label>설명</label>
						<p class="form_discript">◎ 목재가공기기 구비 ◎ 현장 접수로 진행하며, 신청서 작성 중에
							마감될 수 있습니다. 궁금하신 사항은 프로그램 신청 문의에 등록된 연락처로 문의해주세요.</p>
					</div>
					<div class="manager">
						<label>담당자</label>
						<p class="form_manager">김민채</p>
					</div>
				</div>
				<div class="card-action">
					<a href="#">예약내역</a>
				</div>
			</div>
		</div>


	</div>


	<!-- Palce_Modal -->

	<!-- Modal Trigger -->
	<a class="waves-effect waves-light btn modal-trigger" href="#modal1"
		style="color: teallighten-2;">장소추가</a>

	<!-- Modal Structure -->
	<div id="modal1" class="modal">
		<div class="modal-content">
			<div class="row">

				<div class="row">
					<div class="input-field col s12">
						<i class="material-icons Medium">rate_review</i>
						<h4 style="display: inline-block;">장소추가</h4>
					</div>
				</div>
				<form class="col s12">

					<div class="row">
						<div class="input-field col s6">
							<select>
								<option value="" disabled selected>담당자 선택</option>
								<option value="1">김은지</option>
								<option value="2">이대연</option>
								<option value="3">임진희</option>
							</select> <label>관리자</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="name" type="text" class="validate"> <label
								for="name">장소명</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="location" type="text" class="validate"> <label
								for="location">위치</label>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<input id="descript" type="text" class="validate"> <label
								for="descript">설명</label>
						</div>
					</div>
				</form>
			</div>

			<div class="modal-footer">
				<a href="#!" class="modal-close waves-effect waves-green btn-flat">확인</a>
			</div>
		</div>


		<!-- /Palce_Modal -->


		<!-- /수정부분 -->
	</div>
	<!-- /main -->