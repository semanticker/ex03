<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@include file="../includes/header.jsp"%> 
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Board Register
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
            <form role="form" action="/board/register" method="post">
              <div class="box-body">
                <div class="form-group">
                  <label for="title">Title</label>
                  <input class="form-control" name="title" placeholder="Enter title">
                </div>
                <div class="form-group">
                  <label for="content">Text area</label>
                  <textarea class="form-control" rows="3" name="content"></textarea>
                </div>
                <div class="form-group">
                  <label for="writer">Writer</label>
                  <input class="form-control" name="writer" placeholder="Enter writer">
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <button type="submit" class="btn btn-default">Submit</button>
                <button type="reset" class="btn btn-default">Reset</button>
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
    <%@include file="../includes/footer.jsp" %>
    
