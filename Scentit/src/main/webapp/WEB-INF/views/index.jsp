<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>Dashboard</title>
<!-- Custom fonts for this template-->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					SB Admin <sup>2</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider">
			<!-- Heading -->
			<div class="sidebar-heading">Page</div>
			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="register"> <i
					class="fas fa-fw fa-clipboard-list"></i> <span>출연진 관리</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
					<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
					
						<!-- Sidebar Toggle (Topbar) -->
						<button id="sidebarToggleTop"
							class="btn btn-link d-md-none rounded-circle mr-3">
							<i class="fa fa-bars"></i>
						</button>

						<!-- Topbar Search -->
						<form action="${cpath}/"
							class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
							<div class="input-group">
							
								<select name="type" class="form-control bg-light">
									<option>방송제목</option>
                					<option>MC이름</option>
                				</select>
                				&nbsp&nbsp&nbsp
								<input name="content" type="text" class="form-control bg-light border-0 small"
									placeholder="Search for..." aria-label="Search"
									aria-describedby="basic-addon2">
								<div class="input-group-append">
									<button class="btn btn-primary" type="submit">
										<i class="fas fa-search fa-sm"></i>
									</button>
								</div>
							</div>
						</form>


					</nav>
					<!-- End of Topbar -->

					<!-- Begin Page Content -->
					<div class="container-fluid">

						<!-- Page Heading -->
						<div
							class="d-sm-flex align-items-center justify-content-between mb-4">
							<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
						</div>

						<!-- Content Row -->
						<div class="row">

							<!-- Earnings (Monthly) Card Example -->
							<div class="col-xl-3 col-md-6 mb-4">
								<div class="card border-left-primary shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-primary text-uppercase mb-1">
													${vo.program_nm} 남성 시청율 평균</div>
												<div class="row no-gutters align-items-center">
													<div class="col-auto">
														<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${vo.male_rt}%</div>
													</div>
													<div class="col">
														<div class="progress progress-sm mr-2">
															<div class="progress-bar bg-primary" role="progressbar"
																style="width:${vo.male_rt}%"
																aria-valuenow="${vo.male_rt}" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-3 col-md-6 mb-4">
								<div class="card border-left-danger shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-danger text-uppercase mb-1">
													${vo.program_nm} 여성 시청률 평균</div>
												<div class="row no-gutters align-items-center">
													<div class="col-auto">
														<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${vo.female_rt}%</div>
													</div>
													<div class="col">
														<div class="progress progress-sm mr-2">
															<div class="progress-bar bg-danger" role="progressbar"
																style="width: ${vo.female_rt}%"
																aria-valuenow="${vo.female_rt}" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-3 col-md-6 mb-4">
								<div class="card border-left-info shadow h-100 py-2">
									<div class="card-body">
										<div class="row no-gutters align-items-center">
											<div class="col mr-2">
												<div
													class="text-xs font-weight-bold text-info text-uppercase mb-1">
													${vo.program_nm} 전체 시청률 평균</div>
												<div class="row no-gutters align-items-center">
													<div class="col-auto">
														<div class="h5 mb-0 mr-3 font-weight-bold text-gray-800">${vo.wtchng_rt}%</div>
													</div>
													<div class="col">
														<div class="progress progress-sm mr-2">
															<div class="progress-bar bg-info" role="progressbar"
																style="width: ${vo.wtchng_rt}%"
																aria-valuenow="${vo.wtchng_rt}" aria-valuemin="0"
																aria-valuemax="100"></div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-auto">
												<i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Content Row -->

						<div class="row">

							<!-- Area Chart -->
							<div class="col-xl-8 col-lg-7">
								<div class="card shadow mb-4">
									<!-- Card Header - Dropdown -->
									<div
										class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
										<h6 class="m-0 font-weight-bold text-primary">${vo.program_nm}
											월별 시청률</h6>
									</div>
									<!-- Card Body -->
									<div class="card-body">
										<div class="chart-area">
											<canvas id="myAreaChart"></canvas>
											<!-- js파일은 head 태그 안쪽, body 끝나는 태그 위쪽에 로드 -->
										</div>
									</div>
								</div>
							</div>

							<!-- Pie Chart -->
							<div class="col-xl-4 col-lg-5">
								<div class="card shadow mb-4">
									<!-- Card Header - Dropdown -->
									<div
										class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
										<h6 class="m-0 font-weight-bold text-primary">${vo.program_nm}
											연령대별 시청률</h6>
									</div>
									<!-- Card Body -->
									<div class="card-body">
										<div class="chart-pie pt-4 pb-2">
											<canvas id="myPieChart"></canvas>
										</div>
										<div class="mt-4 text-center small">
											<span class="mr-2"> <i
												class="fas fa-circle text-primary"></i> 10대
											</span> <span class="mr-2"> <i
												class="fas fa-circle text-success"></i> 20대
											</span> <span class="mr-2"> <i
												class="fas fa-circle text-info"></i> 30대
											</span> <span class="mr-2"> <i class="fas fa-circle"
												id="text-orange"></i> 40대
											</span> <span class="mr-2"> <i class="fas fa-circle"
												id="text-yellow"></i> 50대
											</span> <span class="mr-2"> <i class="fas fa-circle"
												id="text-purple"></i> 60대 이상
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Content Row -->
						<div class="row">

							<!-- Content Column -->
							<div class="col-lg-6 mb-4">

								<!-- Project Card Example -->
								<div class="card shadow mb-4">
									<div class="card-header py-3">
										<h6 class="m-0 font-weight-bold text-primary">출연진 TOP5</h6>
									</div>
									<div class="card-body" id="top5"></div>
								</div>
							</div>
						</div>

					</div>
					<!-- /.container-fluid -->
			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>Copyright &copy; Your Website 2023</span>
					</div>
				</div>
			</footer>
			<!-- End of Footer -->

		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>


	<!-- Bootstrap core JavaScript-->
	<script src="resources/vendor/jquery/jquery.min.js"></script>
	<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="resources/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="resources/vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script type="text/javascript">
		// 분리된 js에서 java의 변수를 사용하고 싶다면
		// js 파일이 로드되기 전에 script 태그를 열어서 변수를 하나 선언하면 된다.
		let program_nm = '${vo.program_nm}';
	</script>
	
	<script src="resources/js/demo/chart-area-demo.js"></script>
	<script src="resources/js/demo/chart-pie-demo.js"></script>

	<script type="text/javascript">
		// 프로그램명 받아오기
		// vo --> java에서 꺼내오기
		// 현재 내가 코드를 작성하고 있는 파일의 확장자 --> .jsp --> java server page
		// java에 접근 가능
		// 1) EL
		// 2) 표현식
		
    	// let program_nm = '${vo.program_nm}';
    	// console.log(program_nm); // 데이터를 가져왔으면 잘 가져왔는 지 꼭 출력하기
    	
    	$(function () {
			$.ajax({
				url : 'getCastCount', // get방식 -> 쿼리스트링 문법 ?key=value
				data : { program_nm : program_nm},
				datatype : 'json',
				success : function (res) {
					console.log(res)
					// DOM -> Document Object Model
					// 1. id값이 top5인 태그를 가져오기
					// let top5 = Document.getElementById("top5"); -> JS
					// jquery, 순수js --> 요소(태그)를 조작하는 메소드들 공부!
					
					// 2. 태그에 추가하기 (5번)
					for (let i = 0; i < 5; i++) {
					$('#top5').append(
					 `<h4 class="small font-weight-bold">
                     \${res[i].name}<span class="float-right">\${res[i].count}번</span>
                    </h4>
                    <div class="progress mb-4">
                        <div class="progress-bar bg-danger" role="progressbar" style="width: \${res[i].count}%"
                            aria-valuenow="\${res[i].count}" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>`
					)
						
					}
					
				},
				error : function () {
					console.log("실패!")
				}
				
			})
		})
		
		
		
    </script>





</body>

</html>