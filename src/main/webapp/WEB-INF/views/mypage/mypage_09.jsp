<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>

<style>
.basketdiv {
	width: 100%;
	border-top: 1px solid #e0e0e0;
	float: left;
	font-size: 0.9375em;
	margin-bottom: 20px;
}

.basketdiv .row.head {
	border-bottom: 2px solid #888;
	box-sizing: border-box;
	background-color: #f4f4f4;
	font-weight: 500;
}

.basketdiv .data {
	border-bottom: 1px dashed #888;
	box-sizing: border-box;
	cursor: pointer;
	float: left;
	width: 100%;
}

.basketdiv .data .empty {
	text-align: center;
	padding: 12px 0;
}

.basketdiv .row.head .subdiv {
	background-color: #f4f4f4;
}

.basketdiv .row>.subdiv {
	display: block;
	float: left;
}

.basketdiv .row>.subdiv:nth-child(1) {
	width: 50%;
}

.basketdiv .row>.subdiv:nth-child(2) {
	width: 40%;
}

.basketdiv .row>.subdiv:nth-child(3) {
	width: 10%;
}

.basketdiv2 .row>.subdiv:nth-child(1) {
	width: 60%;
}

.basketdiv2 .row>.subdiv:nth-child(2) {
	width: 40%;
}

.basketdiv .row>div>div {
	display: block;
	float: left;
	text-align: center;
	margin: 0;
	padding: 12px 0;
}

.basketdiv .row.data>div>div {
	height: 60px;
	line-height: 60px;
}

.basketdiv .data .num .updown {
	color: #0075ff;
	font-size: 2em;
	letter-spacing: -5px;
}

.basketdiv .check {
	width: 10%;
}

.basketdiv .check input[type=checkbox] {
	transform: scale(1.5);
}

.basketdiv .img {
	width: 20%;
}

.basketdiv .pname {
	width: 70%;
}

.basketdiv2 .pname {
	width: 80%;
}

.basketdiv .basketprice {
	width: 33%;
}

.basketdiv .num {
	width: 33%;
	min-width: 105px;
}

.basketdiv .sum {
	width: 34%;
	max-width: 80px;
	color: #0000aa;
}

.basketdiv .point {
	width: 50%;
}

.basketdiv2 .basketprice {
	width: 25%;
}

.basketdiv2 .num {
	width: 25%;
}

.basketdiv2 .sum {
	width: 25%;
	color: #0000aa;
}

.basketdiv2 .point {
	width: 25%;
}

.basketdiv .basketcmd {
	width: 100%;
}

.basketdiv .data .pname {
	text-align: left !important;
	line-height: 1.2 !important;
}

.basketdiv .data .price, .basketdiv .data .sum, .basketdiv .data .point
	{
	text-align: right;
}

.baseform>tbody>tr>td:first-child {
	width: 100px;
}

.buttongroup {
	padding: 11px 0;
	margin: 50px 0;
}

.narrowbuttongroup {
	margin: 15px 0;
}

.buttongroup.center {
	text-align: center;
}

.buttongroup input[type=text], .buttongroup input[type=password] {
	height: 30px;
}

.buttongroup button, .buttongroup a {
	margin-right: 5px;
}

.buttongroup button:last-child, .buttongroup a:last-child {
	margin-right: 0;
}

.abutton, .abutton:link, .abutton:visited, .abutton:active, input[type=button]
	{
	background-color: #383838;
	border: 1px solid #888888;
	color: #ffffff;
	cursor: pointer;
	letter-spacing: -1px;
	padding: 3px 5px;
	margin: 2px 3px;
	width: auto;
	word-break: keep-all;
	border-radius: 5px;
	text-decoration: none;
	font-size: 0.9375em;
}

.abutton-alt {
	background-color: #d3e2c6;
}

.red {
	color: #b00;
}

.blue {
	color: #0075ff;
}

.basketrowcmd, .sumcount, .summoney {
	text-align: right;
	margin-bottom: 10px;
}

.sumcount, .summoney {
	font-size: 1.25em;
	font-weight: bold;
}

.buttongroup {
	text-align: center;
}

.buttongroup a {
	text-decoration: none;
}

.cmd a, .cmd span {
	padding: 12px 30px;
	box-sizing: border-box;
	margin-top: 10px;
	font-size: 1.2em;
	color: #000;
	background-color: #f4f4f4;
	border: 1px solid #e0e0e0;
	text-align: center;
}

.cmd.small a, .cmd.small span {
	padding: 6px 20px;
	font-size: 0.8125em;
}

.orderform .p_num {
	text-align: right;
	width: 40px;
	font-size: 1em;
}
</style>
</head>
<title>최근 본 상품창</title>
<body>
	<section class="ftco-section" style="padding-top: 100px; height:500px;">
		<div class="container">

			<!-- 최근 본 상품 -->
		<jsp:include page="/WEB-INF/views/common/quick.jsp" flush="false" />

			<!-- 내용 -->


			<div class="order_list">
			
			<div
						style="font-size: 20px; font-weight: bold; margin-bottom: 20px;">
						<a style="color: #7e9c8c;">최근 본 상품</a>
			</div>

				<table class="table" style="margin-top: 0px; font-size: 13px; vertical-align: middle;">
					<thead class="table-dark" align=center>
						<tr align="center"
							style="background-color: #fbfbfb; border-top: 1px solid #7e9c8c; border-bottom: 1px solid #eeeeee; color: black;">
							<td scope="col" width="300"></td>
							<td scope="col" width="800" align="left">상품명</td>
							<td scope="col" width="300">가격</td>
				
						</tr>
					</thead>
					<tbody>
					<c:choose>
						<c:when test="${empty quickListAll}">
						<tr height="200" style=" border-bottom: 1px solid #eeeeee;">
							<td colspan="10" style="background-color:white; padding-top:100px;">
								<p align="center">
									<b><span style="background-color: white; vertical-align:middle; width: 300px; height:80px; color:#5f5f5f; border-bottom:1px solid #eeeeee;">최근 본 상품이 없습니다.</span></b>
								</p>
							</td>
						</tr>	
					</c:when>
					<c:when test="${!empty quickListAll }">
					<c:forEach var="item" items="${quickListAll}">
						<tr style=" border-bottom: 1px solid #eeeeee;">
							
							<td scope="col" align=center>
							<img width=80 height=80 src="${contextPath}/download_product.do?productNum=${item.productNum}&productImage=${item.productImage}" id="preview" /></td>
							<td scope="col" align=left>
							<br><a href="${contextPath}/product/viewProduct.do?productNum=${item.productNum}">${item.productName}</a></td>
							<td scope="col" align="center" style="padding-top: 0px;">
							<br><fmt:formatNumber pattern="###,###,###" value="${item.productPrice}"/></td>
						</tr>

                     </c:forEach>
                     </c:when>
                     </c:choose>
	
						

					</tbody>
				</table>

			</div>
		</div>
	</section>



  </body>
</html>