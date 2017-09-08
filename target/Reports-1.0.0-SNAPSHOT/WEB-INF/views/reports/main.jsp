<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"></c:set>
<!DOCTYPE html>
<html>
<head>
  <%@ include file="/WEB-INF/views/include/head.jsp"%>

</head>

<script type="text/javascript">
var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cspan id='cnzz_stat_icon_1264360398'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s22.cnzz.com/z_stat.php%3Fid%3D1264360398' type='text/javascript'%3E%3C/script%3E"));
</script>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
  <header class="main-header">
    <!-- Logo -->
    <a href="javascript:void(0);" class="logo" id = "a1">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <c:if test="${user.username eq 'admin'}">
        <span class="logo-mini"><b>A</b>dmin</span>
        <span class="logo-lg">管理员</span>
      </c:if>
      <c:if test="${user.username ne 'admin'}">
        <span class="logo-mini"><b>P</b>tu</span>
        <span class="logo-lg">普通用户</span>
      </c:if>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" id = "nav1">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button" id = "toggleBtn">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
              <img src="${contextPath}/static/img/photo2.png" class="user-image" alt="User Image">
              <span class="hidden-xs">${user.username}</span>
            </a>
            <ul class="dropdown-menu">
              <!-- User image -->
              <li class="user-header">
                <img src="${contextPath}/static/img/photo2.png" class="img-circle" alt="User Image">

                <p>
                  ${user.username}
                  <%--<small>Member since Nov. 2012</small>--%>
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="center-block" style="width:30px;background-color:#ccc;">
                  <a href="${contextPath}/a/logout" class="btn btn-default btn-flat">退出</a>
                </div>
              </li>
            </ul>
          </li>
        </ul>
      </div>

    </nav>
  </header >
  <!-- Left side column. contains the logo and sidebar -->
  <aside class="main-sidebar" id = "aside1">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar" >
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="${contextPath}/static/img/photo2.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>${user.username}</p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>
      <br/>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu" data-widget="tree">
        <li class="header" style="font-size: 24px">报表分析</li>
        <li class="treeview active">
          <a href="#">
            <i class="fa fa-folder"></i> <span>报表目录</span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
            <li><a href="http://222.92.8.88:9502/analytics/saw.dll?portalpages&PortalPath=%2Fshared%2F1.1%E5%B8%82%E5%9C%BA%E9%87%87%E8%B4%AD%E6%80%BB%E8%B6%8B%E5%8A%BF%E5%88%86%E6%9E%90%2F_portal%2F1.1%E5%B8%82%E5%9C%BA%E9%87%87%E8%B4%AD%E5%87%BA%E5%8F%A3%E6%80%BB%E8%B6%8B%E5%8A%BF&page=%E9%A1%B5%201&NQUser=gwh&NQPassword=gwh123456" target="myiframe"></i> 1.1市场采购总趋势</a></li>
            <li><a href="http://222.92.8.88:9502/analytics/saw.dll?portalpages&PortalPath=%2Fshared%2F1.2%E5%8E%9F%E4%BA%A7%E5%9C%B0%E5%88%86%E6%9E%90%2F_portal%2F1.2%E5%8E%9F%E4%BA%A7%E5%9C%B0%E7%BB%9F%E8%AE%A1%E5%88%86%E6%9E%90&page=%E9%A1%B5%201&NQUser=gwh&NQPassword=gwh123456" target="myiframe"></i> 1.2原产地出口分析</a></li>
            <li><a href="http://222.92.8.88:9502/analytics/saw.dll?portalpages&PortalPath=%2Fshared%2F1.3%E6%8A%B5%E8%BF%90%E5%8C%BA%E5%9F%9F%E5%88%86%E6%9E%90%2F_portal%2F1.3%E6%8A%B5%E8%BF%90%E5%8C%BA%E5%9F%9F%E5%88%86%E6%9E%90&page=%E9%A1%B5%201&NQUser=gwh&NQPassword=gwh123456" target="myiframe"></i> 1.3抵运区域出口分析</a></li>
            <li><a href="http://222.92.8.88:9502/analytics/saw.dll?portalpages&PortalPath=%2Fshared%2F1.4%E6%8A%B5%E8%BF%90%E5%9B%BD%E7%BB%9F%E8%AE%A1%E5%88%86%E6%9E%90%2F_portal%2F1.4%E6%8A%B5%E8%BF%90%E5%9B%BD%E7%BB%9F%E8%AE%A1%E5%88%86%E6%9E%90&page=%E9%A1%B5%201&NQUser=gwh&NQPassword=gwh123456" target="myiframe"></i> 1.4抵运国统计分析</a></li>
            <li><a href="http://222.92.8.88:9502/analytics/saw.dll?portalpages&PortalPath=%2Fshared%2F1.5%E5%A4%96%E8%B4%B8%E5%85%AC%E5%8F%B8%E8%B6%8B%E5%8A%BF%E5%88%86%E6%9E%90%2F_portal%2F1.5%E5%A4%96%E8%B4%B8%E5%85%AC%E5%8F%B8%E8%B6%8B%E5%8A%BF%E5%88%86%E6%9E%90&page=%E9%A1%B5%201&NQUser=gwh&NQPassword=gwh123456" target="myiframe"></i> 1.5外贸公司入驻分析</a></li>
            <li><a href="http://222.92.8.88:9502/analytics/saw.dll?portalpages&PortalPath=%2Fshared%2F1.7%E5%95%86%E6%88%B7%E8%B6%8B%E5%8A%BF%E5%88%86%E6%9E%90%2F_portal%2F1.6%E5%95%86%E6%88%B7%E8%B6%8B%E5%8A%BF%E5%88%86%E6%9E%90&Page=%E9%A1%B5%201&NQUser=gwh&NQPassword=gwh123456" target="myiframe"></i> 1.6商户入驻分析</a></li>
            <li><a href="http://222.92.8.88:9502/analytics/saw.dll?portalpages&PortalPath=%2Fshared%2F1.8%E6%8A%A5%E5%85%B3%E8%A1%8C%E7%BB%9F%E8%AE%A1%2F_portal%2F1.7%E6%8A%A5%E5%85%B3%E8%A1%8C%E7%BB%9F%E8%AE%A1&page=%E9%A1%B5%201&NQUser=gwh&NQPassword=gwh123456" target="myiframe"></i> 1.7报关行统计分析</a></li>
            <li><a href="http://222.92.8.88:9502/analytics/saw.dll?portalpages&PortalPath=%2Fshared%2F1.9%E5%95%86%E5%93%81%E5%88%86%E7%B1%BB%E7%BB%9F%E8%AE%A1%E5%88%86%E6%9E%90%2F_portal%2F1.8%E5%95%86%E5%93%81%E5%88%86%E7%B1%BB%E7%BB%9F%E8%AE%A1%E5%88%86%E6%9E%90&page=%E9%A1%B5%201&NQUser=gwh&NQPassword=gwh123456" target="myiframe"></i> 1.8商品分类出口分析</a></li>
            <li><a href="http://222.92.8.88:9502/analytics/saw.dll?portalpages&PortalPath=%2Fshared%2F1.10%E4%B8%80%E5%B8%A6%E4%B8%80%E8%B7%AF%E5%87%BA%E5%8F%A3%E5%9B%BD%E5%8C%BA%E5%9F%9F%E5%88%86%E6%9E%90%2F_portal%2F1.9%E4%B8%80%E5%B8%A6%E4%B8%80%E8%B7%AF%E5%87%BA%E5%8F%A3%E5%9B%BD%E5%8C%BA%E5%9F%9F%E5%88%86%E6%9E%90&Page=%E9%A1%B5%201&NQUser=gwh&NQPassword=gwh123456" target="myiframe"></i> 1.9一带一路出口分析</a></li>
          </ul>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper"  style = "margin:auto" id = "divForShow">
    <!-- Content Header (Page header) -->
    <%--<section class="content-header">--%>
      <%--<iframe  id = "myiframe" src=""--%>
               <%--class="t-iframe" scrolling="no" security="restricted" name = "myiframe" style = "width:100%;height:500px;border:5px solid red"--%>
               <%--sandbox="" frameborder="no" border="0" marginwidth="0" marginheight="0" scrolling="no">--%>

      <%--</iframe>--%>
    <iframe src = "http://222.92.8.88:9502/analytics/saw.dll?portalpages&PortalPath=%2Fshared%2F1.1%E5%B8%82%E5%9C%BA%E9%87%87%E8%B4%AD%E6%80%BB%E8%B6%8B%E5%8A%BF%E5%88%86%E6%9E%90%2F_portal%2F1.1%E5%B8%82%E5%9C%BA%E9%87%87%E8%B4%AD%E5%87%BA%E5%8F%A3%E6%80%BB%E8%B6%8B%E5%8A%BF&page=%E9%A1%B5%201&NQUser=gwh&NQPassword=gwh123456"
            id="myiframe" name="myiframe" scrolling="no" frameborder="0" ></iframe>
    <%--<iframe src = "http://222.92.8.88:9502/analytics/saw.dll?portalpages&PortalPath=%2Fshared%2F1.2%E5%8E%9F%E4%BA%A7%E5%9C%B0%E5%88%86%E6%9E%90%2F_portal%2F1.2%E5%8E%9F%E4%BA%A7%E5%9C%B0%E7%BB%9F%E8%AE%A1%E5%88%86%E6%9E%90&page=%E9%A1%B5%201&NQUser=weblogic&NQPassword=Test_2017" id="myiframe" name="myiframe" scrolling="yes"--%>
            <%--frameborder="0" ></iframe>--%>
  <%--</section>--%>

  </div>
  <!-- /.content-wrapper -->
  <footer id = "foot1" class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 1.1.0
    </div>
    <strong>Copyright &copy; 2016-2017 常熟服装城市场采购监管平台报表系统</strong> All rights
    reserved.
  </footer>

  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->

<%@ include file="/WEB-INF/views/include/js.base.jsp"%>
<!-- AdminLTE for demo purposes -->
<%--<script src="${contextPath}/static/js/dist/demo.js"></script>--%>
<script>
  var flag = false;
  $(function(){
      reinitIframe();
      $("#toggleBtn").trigger("click");
      flag = true;
  });
  $("#toggleBtn").on("click",function(){
      $("#divForShow").css("position","relative");
      iframe = $("#myiframe");
      var bWidth = iframe.parent().css("width");
      bWidth = bWidth.substring(0,bWidth.indexOf("px"));
//      alert(bWidth);
//      alert(flag)
      if(flag){
          flag = false;
//          buju(200);
          iframe.css("width",bWidth-220+"px");
//          alert(iframe.css("width"));
          $("#divForShow").css("left","230");

//          var bWidth = iframe.parent().css("width");
//          iframe.css("width",bWidth);
      }else{
          flag = true;
          $("#divForShow").css("left","0px");
          iframe.css("width",bWidth+"px");
      }
  });
    function reinitIframe(){
        iframe = $("#myiframe");
        try{
            var height1 = parseInt($("#divForShow").css("height"));
//            alert(height1);
            if(height1>700){
                height1 =height1-145;
            }else{
                height1 =height1-130;
            }
            $("#myiframe").css("height",height1);
            var bWidth = iframe.parent().css("width");
            iframe.css("width",bWidth);

        }catch (ex){}
    }
    function buju(width1){
        $("#nav1").css("position","relative");
        $("#foot1").css("position","relative");
        $("#aside1").css("width",width1);
        $("#a1").css("width",width1);
        var width = $("#nav1").css("width");
        width = parseInt(width.substring(0,width.indexOf("px")))+30+"px";
//        alert($("#nav1").css("left"));
        $("#nav1").css("left","50px");
        $("#nav1").css("width",width);
        width = $("#foot1").css("width");
        width = parseInt(width.substring(0,width.indexOf("px")))+30+"px";
        alert(width);
        $("#foot1").css("width",width);
        alert($("#foot1").css("width"));
    }
</script>
</body>
</html>
