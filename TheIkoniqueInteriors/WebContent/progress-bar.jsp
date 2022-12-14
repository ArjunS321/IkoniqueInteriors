<!DOCTYPE html>
<html lang="en">

<head>
	<!-- Required meta tags-->
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="au theme template">
	<meta name="author" content="Hau Nguyen">
	<meta name="keywords" content="au theme template">

	<!-- Title Page-->
	<title>Progress Bar</title>

	<%@include file="FontFaces.jsp"%>
	<%@include file="commoncss.jsp"%>

</head>

<body class="animsition">
	<div class="page-wrapper">
		<!-- HEADER MOBILE-->
		<%@include file="headermobile.jsp"%>
		<!-- END HEADER MOBILE-->
		
		<!-- MENU SIDEBAR-->
		<%@include file="menusidebar.jsp"%>
		<!-- END MENU SIDEBAR-->

		<!-- PAGE CONTAINER-->
		<div class="page-container">
			<!-- HEADER DESKTOP-->
			<%@include file="header.jsp"%>
			<!-- HEADER DESKTOP-->

			<!-- MAIN CONTENT-->
			<div class="main-content">
				<div class="section__content section__content--p30">
					<div class="container-fluid">
						<div class="row">
							<div class="col-lg-6">
								<div class="card">
									<div class="card-header">
										<h4>Basic Progress Bar</h4>
									</div>
									<div class="card-body">
										<p class="muted">To create a default progress bar, add a
											<code>.progress</code> class to a
											<code>&lt;div&gt;</code> element:</p>
										<div class="progress mb-3">
											<div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<div class="progress mb-3">
											<div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<div class="progress mb-3">
											<div class="progress-bar bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<div class="progress mb-3">
											<div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>
								<!-- /# card -->

								<div class="card">
									<div class="card-header">
										<h4>Labels</h4>
									</div>
									<div class="card-body">
										<p class="muted">To create a default progress bar, add a
											<code>.progress</code> class to a
											<code>&lt;div&gt;</code> element:</p>
										<div class="progress mb-2">
											<div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">25%</div>
										</div>
										<div class="progress mb-2">
											<div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100">50%</div>
										</div>
										<div class="progress mb-2">
											<div class="progress-bar bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100">75%</div>
										</div>
										<div class="progress mb-2">
											<div class="progress-bar bg-danger" role="progressbar" style="width: 90%" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100">90%</div>
										</div>
									</div>
								</div>
								<!-- /# card -->

								<div class="card">
									<div class="card-header">
										<h4>Striped</h4>
									</div>
									<div class="card-body">
										<p class="muted">To create a default progress bar, add a
											<code>.progress-bar-striped</code> class to a
											<code>&lt;div&gt;</code> element:</p>
										<div class="progress mb-2">
											<div class="progress-bar progress-bar-striped bg-success" role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0"
											 aria-valuemax="100">25%</div>
										</div>
										<div class="progress mb-2">
											<div class="progress-bar progress-bar-striped bg-info" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0"
											 aria-valuemax="100"></div>
										</div>
										<div class="progress mb-2">
											<div class="progress-bar progress-bar-striped bg-warning" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0"
											 aria-valuemax="100"></div>
										</div>
										<div class="progress mb-2">
											<div class="progress-bar progress-bar-striped bg-danger" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0"
											 aria-valuemax="100"></div>
										</div>
									</div>
								</div>
								<!-- /# card -->
							</div>


							<div class="col-lg-6">
								<div class="card">
									<div class="card-header">
										<h4>Animated Progress Bar</h4>
									</div>
									<div class="card-body">
										<p class="muted">To create a default progress bar, add a
											<code>.progress-bar-striped and .progress-bar-animated</code> class to a
											<code>&lt;div&gt;</code> element:</p>
										<div class="progress mb-3">
											<div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: 25%" aria-valuenow="25"
											 aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<div class="progress mb-3">
											<div class="progress-bar bg-info progress-bar-striped progress-bar-animated" role="progressbar" style="width: 50%" aria-valuenow="50"
											 aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<div class="progress mb-3">
											<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" style="width: 75%" aria-valuenow="75"
											 aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<div class="progress mb-3">
											<div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" style="width: 100%" aria-valuenow="100"
											 aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>
								<!-- /# card -->

								<div class="card">
									<div class="card-header">
										<h4>Animated Labels</h4>
									</div>
									<div class="card-body">
										<p class="muted">To create a default progress bar, add a
											<code>.progress-bar-striped and .progress-bar-animated</code> class to a
											<code>&lt;div&gt;</code> element:</p>
										<div class="progress mb-2">
											<div class="progress-bar bg-success progress-bar-striped progress-bar-animated" role="progressbar" style="width: 25%" aria-valuenow="25"
											 aria-valuemin="0" aria-valuemax="100">25%</div>
										</div>
										<div class="progress mb-2">
											<div class="progress-bar bg-info progress-bar-striped progress-bar-animated" role="progressbar" style="width: 50%" aria-valuenow="50"
											 aria-valuemin="0" aria-valuemax="100">50%</div>
										</div>
										<div class="progress mb-2">
											<div class="progress-bar bg-warning progress-bar-striped progress-bar-animated" role="progressbar" style="width: 75%" aria-valuenow="75"
											 aria-valuemin="0" aria-valuemax="100">75%</div>
										</div>
										<div class="progress mb-2">
											<div class="progress-bar bg-danger progress-bar-striped progress-bar-animated" role="progressbar" style="width: 90%" aria-valuenow="90"
											 aria-valuemin="0" aria-valuemax="100">90%</div>
										</div>
									</div>
								</div>
								<!-- /# card -->

								<div class="card">
									<div class="card-header">
										<h4>Heights</h4>
									</div>
									<div class="card-body">
										<p class="muted">To create a height progress bar, add a
											<code>.progress-bar</code> class to a
											<code>&lt;div&gt;</code> element:</p>
										<div class="progress mb-2" style="height: 5px;">
											<div class="progress-bar bg-success" role="progressbar" style="width: 25%;" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<div class="progress mb-2" style="height: 5px;">
											<div class="progress-bar bg-info" role="progressbar" style="width: 50%;" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<div class="progress mb-2" style="height: 5px;">
											<div class="progress-bar bg-warning" role="progressbar" style="width: 75%;" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
										<div class="progress mb-2" style="height: 5px;">
											<div class="progress-bar bg-danger" role="progressbar" style="width: 100%;" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END PAGE CONTAINER-->

	</div>

	<%@include file="commonjs.jsp"%>

</body>

</html>
<!-- end document-->
