<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta content="" name="description" />
    <meta content="webthemez" name="author" />
    <title>广东教育工委党建</title>
    <!-- Bootstrap Styles-->
    <link href="<%=request.getContextPath() %>/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="<%=request.getContextPath() %>/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="<%=request.getContextPath() %>/assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="<%=request.getContextPath() %>/assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <!-- <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">  -->

    <style>
        body{
            background-color:#eee;
        }
        .top-navbar {
            background-color: #cf2124;
        }
        #sideNav{
            color:#fff;
        }
        #main-menu{
            background-color: #eee;
        }
        #page-wrapper{
            box-shadow:0 0 #fff;
            background-color: #fff;
        }
        .page-header{
            background-color: #fff;
        }
        .sidebar-collapse .nav > li > a {
            color: #ae3a3a;
            font-size: medium;
        }
        .sidebar-collapse .nav > li > a:hover, .sidebar-collapse .nav > li > a:focus{
            color:#fff;
        } 
        .nav > li > a > i{
            color: #fff;
        }
    </style>

</head>

<body>
  	 <div id="wrapper">
		<%@ include file="navbar-top.jsp" %>
			<!-- /. NAV TOP  -->
			<%@ include file="navbar-side.jsp" %>
<!-- /. NAV SIDE  -->
      
      
		<div id="page-wrapper">
		  <div class="header" style="margin-top:10px;"> 
                        
						<ol class="breadcrumb">
					  <!-- <li><a href="#">Home</a></li> -->
					  <li><a href="<%=request.getContextPath() %>/school/listAllDocument.do">文档列表</a></li>
					  <li class="active">修改文档-退回文档</li>
					</ol> 
									
		</div>
            <div id="page-inner">
            
            <div class="row">
                <div class="col-xs-12">
                    <div class="panel panel-default">
                        <div class="panel-body">
                                <form class="form-horizontal" role="form"  enctype="multipart/form-data" method="post" action="<%=request.getContextPath() %>/school/modifyDocument.do?docId=${docId}">
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">上报单位</label>
                                                <div class="col-sm-3" style="line-height:32px;">
                                                    <!-- <input class="form-control" id="focusedInput" type="text"  value="请输入上报单位"> -->
                                                    ${organizationName}
                                                </div>
                                            </div>
                                        <div class="form-group">
		                                    <label class="col-sm-2 control-label" for="name">名称</label>
                                            <div class="col-sm-6">
		                                        ${docTitle}
                                        	</div>
	                                    </div>
                                        
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">文档类别</label>
                                            <div class="col-sm-3" style="line-height:32px;">
                                                ${documentType }
                                                <a href="<%=request.getContextPath() %>/school/downloadTemplateAccessory.do?docId=${docId}" style="padding-left:30px">下载模板</a>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">文档状态</label>
                                           
                                            	<div class="col-sm-3" style="line-height:32px;">       
                                                    ${docState }                                                
                                         	   </div>
                                        </div>
                                            <div class="form-group">
                                                <label for="editor" class="col-sm-2 control-label">修改意见</label>
                                                <div class="col-sm-6">
                                                    <!--<label for="name">文本框</label>-->
                                                    ${suggest}
                                                </div>
                                            </div>
                                            <!--<div class="form-group">-->
                                                <!--<label for="editor" class="col-sm-2 control-label">上报文档</label>-->
                                                    <!--<div class="col-sm-10" id="editor">
                                                        <p></p>
                                                    </div>-->
                                            
                                            <!--</div>-->
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="upload">上传文档</label>
                                                    <input id="upload" type="file" style="display:none" name = "accessory">
                                                    <div class="col-md-6">
                                                        <input id="file_name" class="col-sm-8 form-control" type="text" placeholder="请选择文档...">
                                                    </div>
                                                    <a class="btn btn-default" onclick="$('input[id=upload]').click();">上传</a>
                                            </div>
                                            <button type="submit" class="btn btn-md btn-primary col-md-offset-2">确定修改</button>
                                            

                                </form>
                            
                        </div>
                    </div>
                </div>
            </div>

				<footer><p>Copyright &copy; 2016.Company name All rights reserved.<a target="_blank" href="http://www.cssmoban.com/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
                </footer>

            </div>
            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    <!-- /. WRAPPER  -->
    <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery-1.10.2.js"></script>
    <!-- Bootstrap Js -->
    <script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
	 
    <!-- Metis Menu Js -->
    <script src="${pageContext.request.contextPath}/assets/js/jquery.metisMenu.js"></script>
    <!-- Custom Js -->
    <script src="${pageContext.request.contextPath}/assets/js/custom-scripts.js"></script>

    <script src="${pageContext.request.contextPath}/assets/js/select2.full.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$(".selectbox").select2();
			});
		</script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/wangEditor.min.js"></script>
		<script type="text/javascript">
			var E = window.wangEditor;
			var editor = new E('#editor');
			// 或者 var editor = new E( document.getElementById('editor') )

			editor.customConfig.menus = [
				'fontName', // 字体
				'fontSize', // 字号
				'head', // 标题
				'bold', // 粗体
				'fontSize', // 字号
				'italic', // 斜体
				'underline', // 下划线
				'backColor', // 背景颜色
				'list', // 列表
				'justify', // 对齐方式
				'quote', // 引用
				'image', // 插入图片
				'table', // 表格
				'undo', // 撤销
				'redo' // 重复
			];
			editor.customConfig.zIndex = 10;
			// 下面两个配置，使用其中一个即可显示“上传图片”的tab。但是两者不要同时使用！！！
			editor.customConfig.uploadImgShowBase64 = true // 使用 base64 保存图片
			// editor.customConfig.uploadImgServer = '/upload'  // 上传图片到服务器
			editor.create();
		</script>

        <script type="text/javascript">
            $('input[id=upload]').change(function() {
                $('#file_name').val($(this).val());
            });
        </script>

</body>

</html>