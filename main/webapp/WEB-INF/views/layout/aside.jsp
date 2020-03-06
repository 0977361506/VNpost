<%@ page  pageEncoding="utf-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>


	<div class="col-sm-3" style="border-right: 1px solid gray; background: white;">
			<div>
				<button type="button" style="width: 300px; height:auto; border:none; font-weight: 400;
				color: #007bff;
				text-decoration: none; margin-bottom: 20px;">
				<img src="/img/vn.png" alt="buudienvietnam" style="max-width: 97%;border-style: none;  ">
			</button>
		</div>
		<div id="accordion">
         
         
          <c:forEach var="c" items="${vip}">
			<div class="bb">
			 <c:if test="${c.maCV==1}">
				<div>
         
                  
                   <div>
					<div class="a" >
					
					
						<a data-toggle="collapse" href="#collapseOne1">
							${c.tenCV}
						</a>
					</div>
					<div class="b">
						<i class="metismenu-state-icon fa fa-caret-left rotate-minus-90" ></i>
					</div>
				</div>
				
				
				<div id="collapseOne1" class="collapse" data-parent="#accordion">
                   
					<ul>
					  <c:forEach var="cc" items="${vip1}">
						<li><a href="/quantri/${cc.id}" title="">${cc.ten}</a></li>
                         </c:forEach>
					</ul>
                    
				</div>
				</div>
				  </c:if>
				   
				   
				   
				   
				   
				   
				   
				    <c:if test="${c.maCV==2}">
				<div>
         
                  
                   <div>
					<div class="a" >
					
					
						<a data-toggle="collapse" href="#collapseOne2">
							${c.tenCV}
						</a>
					</div>
					<div class="b">
						<i class="metismenu-state-icon fa fa-caret-left rotate-minus-90" ></i>
					</div>
				</div>
				
				
				<div id="collapseOne2" class="collapse" data-parent="#accordion">
                   
					<ul>
					  <c:forEach var="ccc" items="${vip2}">
						<li><a href="/quantri/${ccc.id-1}" title="">${ccc.ten}</a></li>
                         </c:forEach>
					</ul>
                    
				</div>
				</div>
				  </c:if>
				  
				  
				   <c:if test="${c.maCV==3}">
				<div>
         
                  
                   <div>
					<div class="a" >
					
					
						<a data-toggle="collapse" href="#collapseOne">
							${c.tenCV}
						</a>
					</div>
					<div class="b">
						<i class="metismenu-state-icon fa fa-caret-left rotate-minus-90" ></i>
					</div>
				</div>
				
				
				<div id="collapseOne" class="collapse" data-parent="#accordion">
                   
					<ul>
					  <c:forEach var="cccc" items="${vip3}">
						<li><a href="/quantri/${cccc.id}" title="">${cccc.ten}</a></li>
                         </c:forEach>
					</ul>
                    
				</div>
				</div>
				  </c:if>
				   
				   
				   
	   
				   
			
				  
			</div>
          </c:forEach>
          
          
			
	</div>		
					
</div>
