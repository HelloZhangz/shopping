<#assign ctx="${request.contextPath}">
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>管理登录</title>
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="${ctx}/static/admin/bootstrap/css/bootstrap.min.css">
    <!-- 字体图标 -->
    <link rel="stylesheet" href="${ctx}/static/admin/dist/css/ionicons.min.css">
    <!-- 主题样式-->
    <link rel="stylesheet" href="${ctx}/static/admin/dist/css/AdminLTE.min.css">
    <!-- 主题颜色样式 -->
    <link rel="stylesheet" href="${ctx}/static/admin/dist/css/skins/all-skins.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="${ctx}/static/admin/plugins/iCheck/flat/red.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="/static/admin/dist/js/html5shiv.min.js"></script>
    <script src="/static/admin/dist/js/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="/admin/index"><b>Admin</b>LTE</a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>

        <form action="${ctx}/static/admin" method="post">
            <div class="form-group has-feedback">
                <input type="email" class="form-control" placeholder="邮件">
                <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
            </div>
            <div class="form-group has-feedback">
                <input type="password" class="form-control" placeholder="密码">
                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
            </div>
            <div class="row">
                <div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <input type="checkbox"> 记住我
                        </label>
                    </div>
                </div>
                <div class="col-xs-4">
                    <button type="submit" class="btn btn-primary btn-block btn-flat">登录</button>
                </div>
            </div>
        </form>

        <div class="social-auth-links text-center">
            <p>- OR -</p>
            <a href="#" class="btn btn-block btn-social btn-facebook btn-flat"><i class="fa fa-facebook"></i>
                Facebook登录</a>
            <a href="#" class="btn btn-block btn-social btn-google btn-flat"><i class="fa fa-google-plus"></i>
                Google+登录</a>
        </div>

        <a href="#">忘记密码</a><br>
        <a href="register.html" class="text-center">注册帐号</a>

    </div>
</div>
<!-- jQuery 2.2.3 -->
<script src="${ctx}/static/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${ctx}/static/admin/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="${ctx}/static/admin/plugins/iCheck/icheck.js"></script>
<script>
    $(document).ready(function(){
        $('input').iCheck({
            checkboxClass: 'icheckbox_flat-red',
            radioClass: 'iradio_flat-red',
            increaseArea : '-15%'
        });
    });
</script>
</body>
</html>
