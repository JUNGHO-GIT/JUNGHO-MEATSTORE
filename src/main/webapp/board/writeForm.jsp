<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctxpath" value="<%= request.getContextPath() %>"/>
<c:set var="imgspath" value="upload"/>

<!--[Html]----------------------------------------------------------------------------------------->
<!doctype html>
<html lang="ko, en">

<!--[Head]----------------------------------------------------------------------------------------->
<head>

  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800" >
  <link rel="stylesheet" href="css/animate.css">
  <link rel="stylesheet" href="css/main.css">
  <link rel="stylesheet" href="css/board.css">

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"> </script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"> </script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"> </script>
  <script src="js/animate.js"> </script>
  <script src="js/custom.js"> </script>
  <script src="js/board.js"> </script>
  <title> Jungho </title>
  <style>
    .jumbotron {
      width : 100%;
      height : 150px;
      text-align: center;
    }
    .jumbotron h2 {
      padding-bottom: 0;
    }
  </style>
  <script>
	  function setThumbnail(event) {
	    let reader = new FileReader();
	    reader.onload = function(event) {
	      let img = document.createElement("img");
	        img.setAttribute("src", event.target.result);
	        img.setAttribute("height", "200");
	        img.setAttribute("width", "200");
	        let imageContainer = document.querySelector("div#image_container");
	        while (imageContainer.firstChild) {
	          imageContainer.removeChild(imageContainer.firstChild);
	        }
	      imageContainer.appendChild(img);
	    };
	    reader.readAsDataURL(event.target.files[0]);  
		}
	</script>
	<script>
    document.getElementById("buttons-jungho").addEventListener("click", function() {
    });
  </script>
  <script type="text/javascript">
//uppwcheck()
  function uppwcheck() {
  	if(document.updateForm.pw.value == null) {
  		alert("????????? ????????????");
  		document.updateForm.pw.focus();
  		return false;
  	}
  	return true;
  }

  function check() {
  	if($('#writer').val()=='') {
  		alert("????????? ?????? ?????????");
  		$('#writer').focus();
  		return false;
  	}

  	if($('#subject').val()=='') {
  		alert("???????????? ?????? ?????????");
  		$('#subject').focus();
  		return false;
  	}

  	if($('#content').val()=='') {
  		alert("????????? ?????? ?????????");
  		$('#content').focus();
  		return false;
  	}

  	if($('#pw').val()=='') {
  		alert("????????? ???????????????");
  		$('#pw').focus();
  		return false;
  	}
  	return true;
  }
  			
  </script>
	
</head>

<!--[Body]----------------------------------------------------------------------------------------->
<body>

<!-- form --------------------------------------------------------------------------------------->
<form name="writeForm" method="post" enctype="multipart/form-data" action="${ctxpath}/board/writePro.do"
onsubmit="return check()">
  <input type="hidden" name="num" value="${num}">
  <input type="hidden" name="ref" value="${ref}">
  <input type="hidden" name="re_step" value="${re_step}">
  <input type="hidden" name="re_level" value="${re_level}">
  
  <!-- ??????(1) ?????? ????????? ------------------------------------------------------------------------>
  <section class="section-1">
    <div class="jumbotron d-flex align-items-center">
      <div class="gradient"> </div>
        <div class="container-fluid content">
        <h1 data-aos="fade-right" data-aos-delay="300"> ??????????????? </h1>
		    <c:if test="${num == 0}"> <h2 data-aos="fade-left" data-aos-delay="300"> [??? ??????] </h2> </c:if>
	    	<c:if test="${num != 0}"> <h2 data-aos="fade-left" data-aos-delay="300"> [?????? ??????] </h2> </c:if>
      </div>
    </div>
  </section>
  <!----------------------------------------------------------------------------------------------->
  
  <!-- ??????(4) ?????? ?????? -------------------------------------------------------------------------->
  <section class="blog">

    <!-- container 1 ------------------------------------------------------------------------------>
    <div class="container">
      <div class="row">
        <!-- ?????? ?????? -->
        <div class="blank-jungho0"></div>
        <!-- ????????? -->
        <div class="float-left">
          <h3> ????????? ??????????????????! </h3>
        </div>
        <!-- ?????? ?????? -->
        <div class="blank-jungho9"></div>
				<!-- ????????? ?????? -->
        <div class="component-jungho1">
          <div class="col-sm-12">
              <h6>
                <input type="submit" class="btn btn-jungho" value="????????????"> &nbsp;
                <input type="reset" onclick="window.location.reload()" class="btn btn-jungho" value="????????????"> &nbsp;
                <input type="file" name="fileupload" id="fileupload" onchange="setThumbnail(event);" class="btn btn-jungho"> &nbsp;
                <input type="button" onclick="window.location.href='${ctxpath}/board/list.do'" class="btn btn-jungho" value="????????????">  
              </h6>
          </div>
        </div>
        
      	<div class="container">
          <div class="row" data-aos="fade-up" data-aos-duration="700">
            <div class="col-sm-12">
            	<div class="sibal">
	            	<div id="image_container" oninput="setThumbnail(event);" class="write_column_image">
									<c:if test="${dto.fileupload != null}">
										<img src="${ctxpath}/${imgspath}/${dto.fileupload}" width="auto" height="auto">
									</c:if>
								</div>
							</div>
            </div>
          </div>
        </div>
            
          <div class="social-buttons" data-aos="fade-up" data-aos-duration="700">
	          <div class="row">
	            <div class="col-sm-5 col-md-6">
	              <div class="inner-jungho">
	  							<h2> 
	  								&nbsp; &nbsp; &nbsp; 
	  								<input type="text" name="subject" id="subject" placeholder="????????? ???????????????"> 
	  							</h2> 
	  							<span> &nbsp;
    								<h3> <input type="text" name="writer" id="writer" placeholder="????????? ???????????????">
    							</span> </h3>
    							<span> 
    								<h3>
    									<input type="password" name="pw" id="pw" class="write_column_two" placeholder="????????? ???????????????">
    								</h3>
    							</span>
              	</div>
            	</div>
	            <div class="col-sm-7 col-md-6">
	              <ul class="mbm_social">
	                  <li> <a class="social-facebook" href="www.facebook.com">
	                      <i class="fa fa-facebook"> <small> 1.2m </small> </i>
	                      <div class="tooltip"> <span> facebook </span> </div>
	                      </a>
	                  </li>
	                  <li> <a class="social-twitter" href="www.twitter.com">
	                      <i class="fa fa-twitter"> <small> 448.6k </small> </i>
	                      <div class="tooltip"> <span> Twitter </span> </div>
	                      </a>
	                  </li>
	                  <li> <a class="social-google-plus" href="www.pinterest.com">
	                      <i class="fa fa-pinterest" aria-hidden="true"> <small>111.7k </small> </i>
	                      <div class="tooltip"> <span> google+ </span> </div>
	                      </a>
	                  </li>
	              </ul>
	            </div>
	          </div>
	        </div>
            
				 	<div class="row" data-aos="fade-up" data-aos-duration="700">
				  	<div class="col-sm-12 col-lg-12 box">
				      <textarea name="content" id="content" class="write_column_textarea" placeholder="????????? ???????????????"></textarea>
						</div>
					</div>
	    <br>
		  <section class="section4 more-blog" data-aos="fade-up" data-aos-duration="700">
		    <h2 class="background"> <span> ????????? ????????? </span> </h2>
		      <div class="container">
		          <div class="row" data-aos="fade-up" data-aos-duration="700">
		              <div class="card-deck">
		                  <div class="card">
		                      <img class="card-img-top" src="images//meat2.jpg" >
		                      <div class="card-body">
		                          <a class="btn btn-success" href="blog_main.html" role="button"> ????????? </a>
		                          <p class="card-text"> <small class="text-muted"> January 24th 2023 </small> </p>
		                          <p class="card-text"> <a href="blog_single.html"> ????????? ????????? </p>
		                      </div>
		                  </div>
		                  <div class="card">
		                      <img class="card-img-top" src="images//pig.jpg">
		                      <div class="card-body">
		                          <a class="btn btn-success" href="blog_main.html" role="button"> ????????? </a>
		                          <p class="card-text"> <small class="text-muted"> January 24th 2023 </small> </p>
		                          <p class="card-text"> <a href="blog_single.html"> ????????? ????????????  </a> </p>
		                      </div>
		                  </div>
		                  <div class="card">
		                      <img class="card-img-top" src="images//chicken.jpg">
		                      <div class="card-body">
		                        <a class="btn btn-success" href="blog_main.html" role="button"> ????????? </a>
		                        <p class="card-text"> <small class="text-muted"> January 24th 2023 </small> </p>
		                        <p class="card-text"> <a href="blog_single.html"> ????????? ?????????  </a> </p>
		                      </div>
		                  </div>
		              </div>
		          </div>
		      </div>
		  </section>
		   
    </div>
    </div>
  </section>
 </form>
  
</body>
</html>
