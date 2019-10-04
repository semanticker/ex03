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
        <div class="col-md-6">
          <!-- general form elements -->
          <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Quick Example</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form name="data_form" role="form" action="/board/modify" method="post">
            	<input type="hidden" id="pageNum" name="pageNum" value="<c:out value='${cri.pageNum}'/>">
                <input type="hidden" id="amount" name="amount" value="<c:out value='${cri.amount}'/>">
                <input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>
	              	<input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
              <div class="box-body">
                <div class="form-group">
                  <label for="bno">Bno</label>
                  <input class="form-control" name="bno" value="<c:out value='${board.bno}'/>" readonly="readonly">
                </div>
                <div class="form-group">
                  <label for="title">Title</label>
                  <input class="form-control" name="title" placeholder="Enter title" value="<c:out value='${board.title}'/>">
                </div>
                <div class="form-group">
                  <label for="content">Text area</label>
                  <textarea class="form-control" rows="3" name="content"><c:out value='${board.content}'/></textarea>
                </div>
                <div class="form-group">
                  <label for="writer">Writer</label>
                  <input class="form-control" name="writer" placeholder="Enter writer" value="<c:out value='${board.writer}'/>">
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button data-oper='modify' class="btn btn-default">Modify</button>
                <button data-oper='remove' class="btn btn-danger">Remove</button>
                <button data-oper='list' class="btn btn-info">List</button>
              </div>
            </form>
          </div>
          <!-- /.box -->
      </div>
      <!-- /.row -->
      </div>
      <!--/.col (left) -->
      </section>
    <!-- /.content -->
    <script type="text/javascript">
    $(document).ready(function(){
    	var formObj = $("form[name=data_form]");
    	
    	$('button').on("click", function(e){
    		e.preventDefault();
    		
    		var operation = $(this).data("oper");
    		
    		console.log(operation);
    		
    		if(operation == 'remove'){
    			formObj.attr("action", "/board/remove");
    		}else if(operation == 'list'){
    			//self.location = '/board/list';
    			formObj.attr("action", "/board/list").attr("method", "get");
    			
    			var pageNumTag = $("input[name='pageNum']").clone();	
    			var amountTag = $("input[name='amount']").clone();	
    			var keywordTag = $("input[name='keyword']").clone();	
    			var typeTag = $("input[name='type']").clone();	
    			
    			formObj.empty();
    			formObj.empty();
    			formObj.append(pageNumTag);
    			formObj.append(amountTag);
    			formObj.append(keywordTag);
    			formObj.append(typeTag);
    		}
    		formObj.submit();
    	});
    	
    });
    </script>
    <%@include file="../includes/footer.jsp" %>
    
