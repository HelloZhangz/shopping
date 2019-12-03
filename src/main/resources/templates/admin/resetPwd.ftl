<#assign ctx="${request.contextPath}">
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>找回密码</title>
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
    <style>

        .icheckbox_flat-red{
            top: -1px;
            width: 15px;
            height: 15px;
            background-position: -3px -1px;
            margin-right: 5px;
        }
        .icheckbox_flat-red.checked{
            background-position: -25px -3px;
            margin-right: 5px;
        }
    </style>
</head>
<body class="hold-transition login-page" style="background-image: url('/static/admin/dist/img/login.jpg')">
<div class="login-box">
    <div class="login-logo">
        <a href="/admin/login"><span style="font-size: 20px;color: #00c0ef">后台管理员密码找回</span></a>
    </div>
    <div class="login-box-body">
        <form action="${ctx}/static/admin" method="post">
            <div class="form-group has-feedback">
                <input type="text" class="form-control" name="userName" placeholder="请输入邮箱或者手机号码">
            </div>

            <div class="row">
                <div class="col-xs-8 text-left" >
                    <input type="text" class="form-control" name="num" placeholder="验证码">
                </div>
                <div class="col-xs-4 text-center"  style="padding-left: 0px;">
                    <button class="btn btn-success btn-block btn-flat">获取验证码</button>
                </div>
            </div>
            <div class="row" style="margin: 10px 0;">
                <button type="submit" class="btn btn-primary btn-block btn-flat">确认重置</button>
            </div>
        </form>

        <div class="row">
            <div class="col-xs-12 text-center" >
                <a href="/admin/login">回到登录页面</a><br>
            </div>
        </div>

    </div>
</div>
<!-- jQuery 2.2.3 -->
<script src="${ctx}/static/admin/plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="${ctx}/static/admin/bootstrap/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="${ctx}/static/admin/plugins/iCheck/icheck.js"></script>

<script>
    $(function () {
        $('#remember').iCheck({
            checkboxClass: 'icheckbox_flat-red',
            radioClass: 'iradio_flat-red'
        });
    });
</script>

</body>
</html>
