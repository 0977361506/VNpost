<%@ page  pageEncoding="utf-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div style="padding: 30px; margin: 10px 20px;">
<h3>Quản lý nhóm người dùng</h3>  
</div>

	<div class="modal" id="mailam2">
						<div class="modal-dialog">
							<div class="modal-content">

								<!-- Modal Header -->
								<div class="modal-header">
									<h4 class="modal-title">Thêm mới nhóm người dùng</h4>

								</div>

								<!-- Modal body -->
								<div class="modal-body">
									<div>
										<form:form action="themmoi/nhom" modelAttribute="themnhom" class="form-group">
											<div>
												<label for="">Mã nhóm</label> <form:input type="text"
												path="ma"	class="form-control"/>
											</div>
											<div>
												<label for="">Tên nhóm</label> <form:input type="text"
												path="tennhom"	class="form-control"/>
												
											</div>
											<div>
												<label for="">Phạm vi hệ thống</label> <form:input type="text"
												path="tenbc"	readonly="true" class="form-control"/>
											</div>
											<div>
												<label for="">Mô tả</label> <form:input type="textarea" row="3"
												path="mota"	class="form-control"/>
											</div>

										</form>

									</div>
								</div>

								<!-- Modal footer -->
								<div class="modal-footer">
									<button type="submit" class="btn btn-danger">Save</button>
									<button type="button" class="btn btn-danger"
										data-dismiss="modal">Close</button>
								</div>
                             </form:form>
							</div>
						</div>
					</div>
<form action="/timkiem/ungdung" method="post" >

<strong >Điều kiện tìm kiếm</strong>
<div style="display: block; margin-top:20px;">
<label>Tên ứng dụng : </label>
<input type="select" role="combobox" name="tkud" placeholder="Tất cả" style="width:30%;">

<label style=" margin-left: 5px;">Mã ứng dụng : </label>
<input type="select" name="tkma" placeholder="Tất cả" style="width:30%;">

</div>
<div style="margin-top: 50px;">
<label style=" margin-left: 3px;">Phạm vi ứng dụng : </label>
<input readonly type="select" name="" placeholder="Hệ thống quản trị trung tâm" style="width:68%;">
</div>

<div style="border-bottom:1px solid gray; width: 92%; margin-top: 40px;" ></div>


<div class="container" style="margin-left:78%; margin-top: 5px;">

<button type="submit" class="btn btn-primary ">Tìm kiếm</button>
<button type="button" class="btn btn-primary " data-toggle="modal" data-target="#mailam2">Thêm mới</button>


</div>
<div style="border-bottom:1px solid gray; width: 92%; margin-top: 5px;" ></div>
</form>



<div style="width: 100%;">
<p>Danh sách danh mục ứng dụng</p>
<p class="text-right" style="margin-right: 80px;">tổng số bản ghi: ${er}</p>

<table class="table table-bordered">
<thead>
<tr>
<th style="width: 10px;">STT</th>
<th style="width: 30px;">Mã nhóm</th>
<th style="width: 55%;">Tên nhóm</th>
<th style="width: 30px;">Phạm vi ứng dụng</th>
<th style="width: 60px;">Thao tác</th>
</tr>
</thead>
<tbody>

<c:forEach var="b" items="${nhom}">
<tr>

<td>${b.stt1}</td>
<td>${b.ma}</td>
<td>${b.tennhom}</td>
<td>${b.mota}</td>
<td>
<c:forEach var="cn" items="${cn}">
 <c:if test="${cn.kihieu=='Add'||cn.kihieu=='Del'||cn.kihieu=='Share'}">
<button type="button" data-toggle="modal" data-target="#myModal">${cn.kihieu}</button>
</c:if>
</c:forEach>
</td>


</tr>
</c:forEach>
<!-- day la list tim kiem -->
<c:forEach var="b3" items="${tk}">
<tr>

<td>${b3.stt1}</td>
<td>${b3.ma}</td>
<td>${b3.tennhom}</td>
<td>${b3.mota}</td>
<td>
<c:forEach var="cn" items="${cn}">
 <c:if test="${cn.kihieu=='Add'||cn.kihieu=='Del'||cn.kihieu=='Share'}">
<button type="button" data-toggle="modal" data-target="#myModal">${cn.kihieu}</button>
</c:if>
</c:forEach>
</td>


</tr>
</c:forEach>


</tbody>
</table>

</div>
<div id="myModal" class="modal fade" role="dialog">
<div class="modal-dialog">

<!-- Modal content-->
<div class="modal-content" style="width: 700px; margin-right: 600px;">
<div class="modal-header">
<h4 class="modal-title">Phân quyền chức năng cho nhóm Admin</h4>
</div>
<div class="modal-body">

<div id="accordion">


<c:forEach var="c" items="${cv}">
<div class="bb">
<c:if test="${c.maCV==1}">
<div>


<div>
<div class="a" >
<c:if test="${c.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${c.ok==false}">
<input type="checkbox" name="" >
</c:if>
<a data-toggle="collapse" href="#collapseOne1">
${c.tenCV}
</a>
</div>

</div>


<div id="collapseOne1" class="collapse" data-parent="#accordion">

<ul>
<c:forEach var="cc" items="${k1}">
<li>
<c:if test="${cc.id==1}">
<c:if test="${cc.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${cc.ok==false}">
<input type="checkbox" name="">
</c:if>
<a href="#e1"  data-toggle="collapse"  title="">${cc.ten}</a>


<div id="e1" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="ccc" items="${a1}">

<li><c:if test="${ccc.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${ccc.ok==false}">
<input type="checkbox" name="" >
</c:if>
<a data-toggle="collapse" href="#collapseOne">
${ccc.tenCN}
</a></li>
</c:forEach>
</ul>
</div>

</c:if>


<c:if test="${cc.id==2}">
<c:if test="${cc.ok==false}">
<input type="checkbox" name="">
</c:if>
<c:if test="${cc.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<a href="#e2"  data-toggle="collapse"  title="">${cc.ten}</a>

<div id="e2" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="a2" items="${a2}">
<li>
<c:if test="${a2.ok==false}">
<input type="checkbox" name="">
</c:if>
<c:if test="${a2.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<a data-toggle="collapse" href="#collapseOne">
${a2.tenCN}
</a></li>
</c:forEach>
</ul>
</div>


</c:if>
<c:if test="${cc.id==3}">
<c:if test="${cc.ok==false}">
<input type="checkbox" name="">
</c:if>
<c:if test="${cc.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<a href="#e3"  data-toggle="collapse"  title="">${cc.ten}</a>

<div id="e3" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="a3" items="${a3}">
<li>
<c:if test="${a3.ok==false}">
<input type="checkbox" name="">
</c:if>
<c:if test="${a3.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<a data-toggle="collapse" href="#collapseOne">
${a3.tenCN}
</a></li>
</c:forEach>
</ul>
</div>

</c:if>

<c:if test="${cc.id==4}">
<c:if test="${cc.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${cc.ok==false}">
<input type="checkbox" name="" >
</c:if>
<a href="#e4"  data-toggle="collapse"  title="">${cc.ten}</a>

<div id="e4" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="a4" items="${a4}">

<li>
<c:if test="${a4.ok==false}">
<input type="checkbox" name="" >
</c:if>
<c:if test="${a4.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<a data-toggle="collapse" href="#collapseOne">
${a4.tenCN}
</a></li>
</c:forEach>
</ul>
</div>

</c:if>
<c:if test="${cc.id==5}">
<c:if test="${cc.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${cc.ok==false}">
<input type="checkbox" name="">
</c:if>
<a href="#e5"  data-toggle="collapse"  title="">${cc.ten}</a>

<div id="e5" class="collapse24" data-parent="#accordion" >
<ul>
<c:forEach var="a5" items="${a5}">
<li>
<c:if test="${a5.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${a5.ok==false}">
<input type="checkbox" name="">
</c:if>
<a data-toggle="collapse24" href="#collapseOne">
${a5.tenCN}
</a></li>
</c:forEach>
</ul>
</div>

</c:if>






</li>
</c:forEach>
</ul>

</div>
</div>
</c:if>


<!-- chuc vu 2 -->
<div class="bb">
<c:if test="${c.maCV==2}">
<div>


<div>
<div class="a" >

<c:if test="${c.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${c.ok==false}">
<input type="checkbox" name="">
</c:if>
<a data-toggle="collapse" href="#collapseOne111">
${c.tenCV}
</a>
</div>

</div>


<div id="collapseOne111" class="collapse" data-parent="#accordion">

<ul>
<c:forEach var="kk" items="${k2}">
<li>
<c:if test="${kk.id==6}">
<c:if test="${kk.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${kk.ok==false}">
<input type="checkbox" name="">
</c:if>
<a href="#e16"  data-toggle="collapse"  title="">${kk.ten}</a>


<div id="e16" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="a6" items="${a6}">
<li>
<c:if test="${a6.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${a6.ok==false}">
<input type="checkbox" name="" checked>
</c:if>
<a data-toggle="collapse" href="#collapseOne">
${a6.tenCN}
</a></li>
</c:forEach>
</ul>
</div>

</c:if>


<c:if test="${kk.id==7}">
<c:if test="${kk.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${kk.ok==false}">
<input type="checkbox" name="">
</c:if>
<a href="#e27"  data-toggle="collapse"  title="">${kk.ten}</a>

<div id="e27" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="a7" items="${a7}">
<li>
<c:if test="${a7.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${a7.ok==false}">
<input type="checkbox" name="">
</c:if>
<a data-toggle="collapse" href="#collapseOne">
${a7.tenCN}
</a></li>
</c:forEach>
</ul>
</div>


</c:if>
<c:if test="${kk.id==8}">
<c:if test="${kk.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${kk.ok==false}">
<input type="checkbox" name="" >
</c:if>
<a href="#e38"  data-toggle="collapse"  title="">${kk.ten}</a>

<div id="e38" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="a8" items="${a8}">
<li>
<c:if test="${a8.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${a8.ok==false}">
<input type="checkbox" name="" >
</c:if>
<a data-toggle="collapse" href="#collapseOne">
${a8.tenCN}
</a></li>
</c:forEach>
</ul>
</div>

</c:if>

<c:if test="${kk.id==9}">
<c:if test="${kk.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${kk.ok==false}">
<input type="checkbox" name="">
</c:if>
<a href="#e49"  data-toggle="collapse"  title="">${kk.ten}</a>

<div id="e49" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="a9" items="${a9}">
<li>
<c:if test="${a9.ok==true}">
<input type="checkbox" name="" checked>
</c:if>
<c:if test="${a9.ok==true}">
<input type="checkbox" name="" >
</c:if>

<a data-toggle="collapse" href="#collapseOne">
${a9.tenCN}
</a></li>
</c:forEach>
</ul>
</div>

</c:if>







</li>
</c:forEach>
</ul>

</div>
</div>
</c:if>




<div class="bb">
<c:if test="${c.maCV==3}">
<div>


<div>
<div class="a" >

<input type="checkbox" name="">
<a data-toggle="collapse" href="#collapseOne5">
${c.tenCV}
</a>
</div>

</div>


<div id="collapseOne5" class="collapse" data-parent="#accordion">

<ul>
<c:forEach var="k3" items="${k3}">
<li>



<input type="checkbox" name="">
<a href="#e10"  data-toggle="collapse"  title="">${k3.ten}</a>
<c:if test="${cc.id==10}">
<div id="e10" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="a10" items="${a10}">
<li><input type="checkbox" name="">
<a data-toggle="collapse" href="#collapseOne">
${a10.tenCN}
</a></li>
</c:forEach>
</ul>
</div>

</c:if>
<c:if test="${cc.id==11}">
<input type="checkbox" name="">
<a href="#e11"  data-toggle="collapse"  title="">${cc.ten}</a>

<div id="e11" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="a11" items="${a11}">
<li><input type="checkbox" name="">
<a data-toggle="collapse" href="#collapseOne">
${a11.tenCN}
</a></li>
</c:forEach>
</ul>
</div>

</c:if>
<c:if test="${cc.id==12}">
<input type="checkbox" name="">
<a href="#e13"  data-toggle="collapse"  title="">${cc.ten}</a>

<div id="e13" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="a12" items="${a12}">
<li><input type="checkbox" name="">
<a data-toggle="collapse" href="#collapseOne">
${a12.tenCN}
</a></li>
</c:forEach>
</ul>
</div>

</c:if>

<c:if test="${cc.id==13}">
<input type="checkbox" name="">
<a href="#e14"  data-toggle="collapse"  title="">${cc.ten}</a>

<div id="e14" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="a13" items="${a13}">
<li><input type="checkbox" name="">
<a data-toggle="collapse" href="#collapseOne">
${a13.tenCN}
</a></li>
</c:forEach>
</ul>
</div>

</c:if>
<c:if test="${cc.id==14}">
<input type="checkbox" name="">
<a href="#e15"  data-toggle="collapse"  title="">${cc.ten}</a>
<div id="e15" class="collapse" data-parent="#accordion" >
<ul>
<c:forEach var="a14" items="${a14}">
<li><input type="checkbox" name="">
<a data-toggle="collapse" href="#collapseOne">
${a14.tenCN}
</a></li>
</c:forEach>
</ul>
</div>

</c:if>






</li>
</c:forEach>
</ul>

</div>
</div>
</c:if>







</c:forEach>




					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" class="btn btn-danger">Save</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>

				



				</div>
</div>
</div>
	<!-- The Modal -->
				



					<!--thêm mới cán bộ công nhân viên -->


