<!-- sidebar 侧边栏 样式在sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel 侧边栏用户面板 -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/static/admin/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>管理员</p>
                <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
            </div>
        </div>
        <!-- search form 搜索表单-->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="搜索...">
                <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>
        <!-- sidebar menu 侧边栏菜单 -->
        <ul class="sidebar-menu">
            <li class="header">主导航</li>

            <li class="treeview">
                <a href="/admin/index">
                    <i class="fa fa-files-o"></i>
                    <span>界面选项</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">4</span>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="top-nav.html"><i class="fa fa-circle-o"></i> 顶部导航</a></li>
                    <li><a href="boxed.html"><i class="fa fa-circle-o"></i> 盒子布局</a></li>
                    <li><a href="fixed.html"><i class="fa fa-circle-o"></i> 固定布局</a></li>
                </ul>
            </li>


            <li>
                <a href="/admin/index">
                    <i class="fa fa-th"></i> <span>小部件</span>
                    <span class="pull-right-container">
                        <small class="label pull-right bg-green">新</small>
                    </span>
                </a>
            </li>


            <li class="treeview">
                <a href="/admin/index">
                    <i class="fa fa-pie-chart"></i>
                    <span>图表</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="chartjs.html"><i class="fa fa-circle-o"></i> JS图表</a></li>
                    <li><a href="morris.html"><i class="fa fa-circle-o"></i> 遍历</a></li>
                    <li><a href="flot.html"><i class="fa fa-circle-o"></i> Flot</a></li>
                    <li><a href="inline.html"><i class="fa fa-circle-o"></i> 内嵌图表</a></li>
                    <li><a href="collapsed-sidebar.html"><i class="fa fa-circle-o"></i> 折叠侧栏</a></li>
                </ul>
            </li>



            <li><a href="/static/admin/documentation/index.html"><i class="fa fa-book"></i> <span>文档</span></a></li>
            <li class="header">标签</li>
            <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>重要</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>警告</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>信息</span></a></li>
        </ul>
    </section>