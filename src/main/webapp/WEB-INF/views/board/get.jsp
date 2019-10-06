<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@include file="../includes/header.jsp"%> 
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Board Read
        <small>board reg.</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data tables</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content"> 
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Quick Example</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <!-- <form role="form" action="/board/register" method="post"> -->
              <div class="box-body">
                <div class="form-group">
                  <label for="bno">Bno</label>
                  <input class="form-control" name="bno" value="<c:out value='${board.bno}'/>" readonly="readonly">
                </div>
                <div class="form-group">
                  <label for="title">Title</label>
                  <input class="form-control" name="title" placeholder="Enter title" value="<c:out value='${board.title}'/>" readonly="readonly">
                </div>
                <div class="form-group">
                  <label for="content">Text area</label>
                  <textarea class="form-control" rows="3" name="content" readonly="readonly"><c:out value='${board.content}'/></textarea>
                </div>
                <div class="form-group">
                  <label for="writer">Writer</label>
                  <input class="form-control" name="writer" placeholder="Enter writer" value="<c:out value='${board.writer}'/>" readonly="readonly">
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button data-oper='modify' class="btn btn-default">Modify</button>
                <button data-oper='list' class="btn btn-default">List</button>
                
                <form id="operForm" action="/board/modify" method="get">
                	<input type="hidden" id="bno" name="bno" value="<c:out value='${board.bno}'/>">
                	<input type="hidden" id="pageNum" name="pageNum" value="<c:out value='${cri.pageNum}'/>">
                	<input type="hidden" id="amount" name="amount" value="<c:out value='${cri.amount}'/>">
	              	<input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
	              	<input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
                	
                </form>
                
              </div>
            <!-- </form> -->
          </div>
          <!-- /.box -->
      </div>
      <!-- /.row -->
      </div>
      <!--/.col (left) -->
      
      <!-- Reply -->
      <div class="row">
      	<div class="col-lg-12">
      		<!-- /.panel -->
      		<div class="panel panel-default">
      			<div class="panel-heading">
      				<i class="fa fa-comments fa-fw"></i>Reply
      			</div>
      			
      			<div class="panel-body">
      			
      				<ul class="chat">
      					<li class="left clearfix" data-rno='12'>
      						<div>
      							<div class="header">
      								<strong class="primary-font">user00</strong>
      								<small class="pull-right text-muted">2018-01-01 13:13</small>
      							</div>
      							<p>good job!</p>
      						</div>
      					</li>
      					<!--  end reply -->
      				</ul>
      					<!-- end ul -->
      			</div>
      			<!-- /.panel .chat-panel -->
      		</div>
      	</div>
      	<!-- ./ end row -->
      </div>
    </section>
    <!-- /.content -->
    
    <script type="text/javascript" src="/resources/js/reply.js"></script>
    
     <script type="text/javascript">
    	$(document).ready(function(){
    		console.log("======================");
    		console.log("JS TEST");
    		
    		var bnoValue = '<c:out value="${board.bno}"/>';
    		
    		/*
    		replyService.add(
    				{reply:"JS Test", replyer:"tester", bno:bnoValue},
    				function(result){
    					alert("RESLT: " + result);
    				}
			);
    		*/
    		
    		/*
    		replyService.getList({bno:bnoValue, page:1}, function(list){
    			console.log(arguments);
    			for(var i=0, len = list.length||0; i<len; i++){
    				console.log(list[i]);
    			}
    			
    		});
    		*/
    		
    		/*
    		replyService.remove(2, function(count){
    			console.log(count);
    			
    			if(count == "success"){
    				alert("REMOVED")
    			}
    			
    		}, function(err){
    			alert("ERROR");
    		});
    		*/
    		
    		/*
    		replyService.update(
    				{reply:"udpated- JS Test", rno: 69, replyer:"tester", bno:bnoValue},
    				function(result){
    					alert("RESLT: " + result);
    				}
			);
    		*/
    		
    		replyService.get(68, function(data){
    			console.log(data);
    		});
    		
    		
    	});
   	</script>
    
    <script type="text/javascript">
    	$(document).ready(function(){
    		
    		
    		console.log(replyService);
    		
    		var operForm = $('#operForm');
    		
    		$("button[data-oper='modify']").on("click", function(e){
    			operForm.attr("action", "/board/modify").submit();
    		});
    		
    		$("button[data-oper='list']").on("click", function(e){
    			operForm.find("#bno").remove();
    			operForm.attr("action", "/board/list");
    			operForm.submit();
    		});
    	});
    </script>
    
    <%@include file="../includes/footer.jsp" %>
    
