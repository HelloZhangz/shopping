<#assign ctx="${request.contextPath}">
<!DOCTYPE html>
<html lang="zh">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <title>后台管理</title>
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="${ctx}/static/admin/bootstrap/css/bootstrap.min.css">
  <!--图标字体库和CSS框架-->
  <link rel="stylesheet" href="${ctx}/static/admin/dist/css/font-awesome.min.css">
  <!-- 字体图标 -->
  <link rel="stylesheet" href="${ctx}/static/admin/dist/css/ionicons.min.css">
  <!-- 主题样式-->
  <link rel="stylesheet" href="${ctx}/static/admin/dist/css/AdminLTE.min.css">
  <!-- 主题颜色样式 -->
  <link rel="stylesheet" href="${ctx}/static/admin/dist/css/skins/all-skins.min.css">


  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="/static/admin/dist/js/html5shiv.min.js"></script>
  <script src="/static/admin/dist/js/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <!-- 头部 -->
  <header class="main-header">
    <#include "common/header.ftl">
  </header>
  <!-- 左侧边栏-->
  <aside class="main-sidebar">
    <#include "common/letNav.ftl">
  </aside>

  <!-- 中间内容 -->
  <div class="content-wrapper">

  </div>
  <!-- 页脚内容 -->
  <footer class="main-footer">
  <#include "common/footer.ftl">
  </footer>
</div>


<!-- jQuery 2.2.3 -->
<script src="${ctx}/static/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${ctx}/static/admin/bootstrap/js/bootstrap.min.js"></script>
<!-- 解决移动端浏览器 300 毫秒点击延迟问题所开发的一个轻量级的库 -->
<script src="${ctx}/static/admin/plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="${ctx}/static/admin/dist/js/app.min.js"></script>


</body>
</html>