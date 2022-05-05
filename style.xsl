<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			<head>
				<title>Telepizza</title>
				<!-- Required meta tags -->
				<meta charset="utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
				
				<!-- Bootstrap CSS -->
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
			</head>
			<body>
				<header>
					<div class="bg-danger">
						<div class="container">
							<div class="row">
								<div class="col-10">
									<img src="img/telepizzalogo.png" alt="" />
								</div>
								<div class="col-2 d-flex justify-content-center align-items-center">
									<p>
										<img src="img/user.svg" alt=""/>
											<img src="img/work.svg" alt=""/>
												<img src="img/cart.svg" alt=""/>
												</p>
											</div>
										</div>
									</div>
								</div>
							</header>
							<div class="container shadow mt-3">
								<h2><strong>Entrantes</strong></h2>
								<br/>
								<xsl:for-each select="entrantes/categoria">
									<h4 class="mb-4"><xsl:value-of select="@nombre"/></h4>
									<div class="row justify-content-center">
										<xsl:for-each select="entrante">
											<div class="col-lg-4 col-md-6 mb-5">
												<div class="card">
													<img class="card-img-top img-fluid" src="https://images.telepizza.com/vol/es/images/content/productos/new/{imagen}.png" alt=""/>
													<div class="card-body">
														<h4 class="card-title"><xsl:value-of select="@nombre"/></h4>
														<div class="row">
															<div class="col">
																<p class="card-text">Ver mas</p>
															</div>
															<div class="col-8">
																<xsl:choose>
																	<xsl:when test="oferta=''">
																		<h5 class="card-text text-right"><span class="text-danger">(OFERTA) </span> <xsl:value-of select="precio"/>€</h5>
																	</xsl:when>
																	<xsl:otherwise>
																		<h5 class="card-text text-right"><xsl:value-of select="precio"/>€</h5>
																	</xsl:otherwise>
																</xsl:choose>
															</div>
														</div>
														<div class="row mt-3">
															<div class="col">
																
															</div>
															<div class="col text-right">
																<button type="button" class="btn btn-danger text-white">Añadir</button>
															</div>
														</div>
														
													</div>
												</div>
											</div>
										</xsl:for-each>
									</div>
								</xsl:for-each>
							</div>
							<!-- Optional JavaScript -->
							<!-- jQuery first, then Popper.js, then Bootstrap JS -->
							<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
							<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
							<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
						</body>
					</html>
					
				</xsl:template>
			</xsl:stylesheet>