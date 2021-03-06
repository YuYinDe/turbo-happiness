<%--
  Created by IntelliJ IDEA.
  User: zk182
  Date: 2018/12/29
  Time: 23:03
  To change this template use File | Settings | File Templates.
  用于管理员注册实训
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<c:if test="${empty sessionScope.userName}">
    <c:redirect url="login.jsp?f=5" />
</c:if>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>注册实训界面</title>
    <link rel="stylesheet" href="css/style1.css">
    <link rel="shortcut icon" href="images/favicon.png"/>
</head>
<script type="text/javascript">
    function showTime() {
        nowtime = new Date();
        year = nowtime.getFullYear();
        month = nowtime.getMonth() + 1;
        date = nowtime.getDate();
        document.getElementById("mytime").innerText = year + "年" + month + "月" + date + " " + nowtime.toLocaleTimeString();
    }

    setInterval("showTime()", 1000);
</script>
<body>
<div class="body-wrapper">
    <!-- partial:partials/_sidebar.html -->
    <aside class="mdc-persistent-drawer mdc-persistent-drawer--open">
        <!--导航栏-->
        <nav class="mdc-persistent-drawer__drawer">
            <!--顶上图标-->
            <div class="mdc-persistent-drawer__toolbar-spacer">
                <strong>管理员界面</strong>
            </div>
            <div class="mdc-list-group">
                <nav class="mdc-list mdc-drawer-menu">
                    <!--侧栏选项-->
                    <div class="mdc-list-item mdc-drawer-item">
                        <a class="mdc-drawer-link" href="/adminInfo">
                            <i class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon"
                               aria-hidden="true">desktop_mac</i>
                            个人信息查询
                        </a>
                    </div>
                    <!--侧栏选项-->
                    <div class="mdc-list-item mdc-drawer-item">
                        <a class="mdc-drawer-link" href="/adminEdit">
                            <i class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon"
                               aria-hidden="true">track_changes</i>
                            个人信息修改
                        </a>
                    </div>
                    <!--侧栏选项-->
                    <div class="mdc-list-item mdc-drawer-item">
                        <a class="mdc-drawer-link" href="admin_changePassword.jsp">
                            <i class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon"
                               aria-hidden="true">event</i>
                            修改密码
                        </a>
                    </div>
                    <!--侧栏选项-->
                    <div class="mdc-list-item mdc-drawer-item">
                        <a class="mdc-drawer-link" href="admin_register_pt.jsp">
                            <i class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon"
                               aria-hidden="true">dashboard</i>
                            添加实训
                        </a>
                    </div>
                    <!--侧栏选项-->
                    <div class="mdc-list-item mdc-drawer-item">
                        <a class="mdc-drawer-link" href="/adminTeacherList">
                            <i class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon"
                               aria-hidden="true">grid_on</i>
                            查询教师信息
                        </a>
                    </div>
                    <!--侧栏选项-->
                    <div class="mdc-list-item mdc-drawer-item">
                        <a class="mdc-drawer-link" href="/adminTrainLsit">
                            <i class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon"
                               aria-hidden="true">pages</i>
                            查询学生未提交情况
                        </a>
                    </div>
                    <div class="mdc-list-item mdc-drawer-item">
                        <a class="mdc-drawer-link" href="/adminCount">
                            <i class="material-icons mdc-list-item__start-detail mdc-drawer-item-icon"
                               aria-hidden="true">pie_chart_outlined</i>
                            统计实训信息
                        </a>
                    </div>
                    <!--下侧按钮-->
                    <div class="mdc-list-item mdc-drawer-item purchase-link">
                        <a href="logout.jsp"
                           class="mdc-button mdc-button--raised mdc-button--dense mdc-drawer-link"
                           data-mdc-auto-init="MDCRipple">
                            登出系统
                        </a>
                    </div>
                </nav>
            </div>
        </nav>
    </aside>
    <!-- partial -->
    <!-- partial:partials/_navbar.html -->
    <header class="mdc-toolbar mdc-elevation--z4 mdc-toolbar--fixed">
        <div class="mdc-toolbar__row">
            <section class="mdc-toolbar__section mdc-toolbar__section--align-start">
                <a href="#" class="menu-toggler material-icons mdc-toolbar__menu-icon">menu</a>
                <span class="mdc-toolbar__input">
            <!--查询框div class="mdc-text-field">
              <input type="text" class="mdc-text-field__input" id="css-only-text-field-box"
                     placeholder="Search anything...">
            </div-->
                    <!--学校log-->
                    <div class="mdc-text-field">
                <a href="http://www.nchu.edu.cn/" class="brand-logo">
                    <img src="images/schoolLog.png" alt="logo" style="height: 50px">
                </a>
                    </div>
          </span>
            </section>
            <!--用户信息及当前时间-->
            <section class="mdc-toolbar__section mdc-toolbar__section--align-end" role="toolbar">
                <font size="3x" face="KaiTi" style="color: white">欢迎你，${ sessionScope.userName} &nbsp&nbsp&nbsp<span
                        id="mytime"></span></font>
            </section>
        </div>
    </header>
    <div class="page-wrapper mdc-toolbar-fixed-adjust">
        <main class="content-wrapper">
            <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop">
                <div style="text-align: center;height: 40px;font-size:30px;letter-spacing:8px;line-height:60px">
                    <span>注册实训信息</span>
                </div>
                <form action="#" method="post">
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop" style="margin: 30px 240px 0px 240px;">
                        <div class="template-demo">
                            <div id="demo-tf-box-wrapper">
                                <div id="tf-box-example" class="mdc-text-field mdc-text-field--box w-100">
                                    <input required pattern=".{1,}" type="text" id="tf-box" class="mdc-text-field__input" name="major" aria-controls="name-validation-message" placeholder="如：2018-1019学年">
                                    <label for="tf-box" class="mdc-text-field__label">学年</label>
                                    <div class="mdc-text-field__bottom-line"></div>
                                </div>
                                <p class="mdc-text-field-helper-text mdc-text-field-helper-text--validation-msg" id="name-validation-msg">
                                    学年不能为空
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop" style="margin: 30px 240px 0px 240px;">
                        <div class="template-demo">
                            <a href="#" class="mdc-button mdc-button--stroked secondary-stroked-button">
                                导入实习教师信息
                            </a><font color="#999999">选择excel表，内有实习老师工号</font>
                        </div>
                    </div>
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop" style="margin: 30px 240px 0px 240px;">
                        <div class="template-demo">
                            <div id="demo-tf-box-wrapper1">
                                <div id="tf-box-example1" class="mdc-text-field mdc-text-field--box w-100">
                                    <input required pattern=".{1,}" type="date" id="tf-box1" class="mdc-text-field__input"name="shixiBeginTime" aria-controls="name-validation-message">
                                    <label for="tf-box1" class="mdc-text-field__label">实习开始时间</label>
                                    <div class="mdc-text-field__bottom-line"></div>
                                </div>
                                <p class="mdc-text-field-helper-text mdc-text-field-helper-text--validation-msg" id="name-validation-msg1">
                                    实习开始时间不能为空
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop" style="margin: 30px 240px 0px 240px;">
                        <div class="template-demo">
                            <div id="demo-tf-box-wrapper2">
                                <div id="tf-box-example2" class="mdc-text-field mdc-text-field--box w-100">
                                    <input required pattern=".{1,}" type="date" id="tf-box2" class="mdc-text-field__input" name="shixiEndTime" aria-controls="name-validation-message">
                                    <label for="tf-box2" class="mdc-text-field__label">实习结束时间</label>
                                    <div class="mdc-text-field__bottom-line"></div>
                                </div>
                                <p class="mdc-text-field-helper-text mdc-text-field-helper-text--validation-msg" id="name-validation-msg2">
                                    实习结束时间不能为空
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop" style="margin: 30px 240px 0px 240px;">
                        <div class="template-demo">
                            <a href="#" class="mdc-button mdc-button--stroked secondary-stroked-button">
                                导入实训教师信息
                            </a><font color="#999999">选择excel表，内有实训老师工号</font>
                        </div>
                    </div>
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop" style="margin: 30px 240px 0px 240px;">
                        <div class="template-demo">
                            <div id="demo-tf-box-wrapper3">
                                <div id="tf-box-example3" class="mdc-text-field mdc-text-field--box w-100">
                                    <input required pattern=".{1,}" type="date" id="tf-box3" class="mdc-text-field__input"name="shixunBeginTime" aria-controls="name-validation-message">
                                    <label for="tf-box3" class="mdc-text-field__label">实训开始时间</label>
                                    <div class="mdc-text-field__bottom-line"></div>
                                </div>
                                <p class="mdc-text-field-helper-text mdc-text-field-helper-text--validation-msg" id="name-validation-msg3">
                                    实训开始时间不能为空
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop" style="margin: 30px 240px 0px 240px;">
                        <div class="template-demo">
                            <div id="demo-tf-box-wrapper4">
                                <div id="tf-box-example4" class="mdc-text-field mdc-text-field--box w-100">
                                    <input required pattern=".{1,}" type="date" id="tf-box4" class="mdc-text-field__input" name="shixunEndTime" aria-controls="name-validation-message">
                                    <label for="tf-box4" class="mdc-text-field__label">实训结束时间</label>
                                    <div class="mdc-text-field__bottom-line"></div>
                                </div>
                                <p class="mdc-text-field-helper-text mdc-text-field-helper-text--validation-msg" id="name-validation-msg4">
                                    实训结束时间不能为空
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop" style="margin: 30px 240px 0px 240px;">
                        <div class="template-demo">
                            <a href="#" class="mdc-button mdc-button--stroked secondary-stroked-button">
                                导入实践教师信息
                            </a><font color="#999999">选择excel表，内有实践老师工号</font>
                        </div>
                    </div>
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop" style="margin: 30px 240px 0px 240px;">
                        <div class="template-demo">
                            <div id="demo-tf-box-wrapper5">
                                <div id="tf-box-example5" class="mdc-text-field mdc-text-field--box w-100">
                                    <input required pattern=".{1,}" type="date" id="tf-box5" class="mdc-text-field__input"name="shijianBeginTime" aria-controls="name-validation-message">
                                    <label for="tf-box5" class="mdc-text-field__label">实践开始时间</label>
                                    <div class="mdc-text-field__bottom-line"></div>
                                </div>
                                <p class="mdc-text-field-helper-text mdc-text-field-helper-text--validation-msg" id="name-validation-msg5">
                                    实践开始时间不能为空
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop" style="margin: 30px 240px 0px 240px;">
                        <div class="template-demo">
                            <div id="demo-tf-box-wrapper6">
                                <div id="tf-box-example6" class="mdc-text-field mdc-text-field--box w-100">
                                    <input required pattern=".{1,}" type="date" id="tf-box6" class="mdc-text-field__input" name="shijianEndTime" aria-controls="name-validation-message">
                                    <label for="tf-box6" class="mdc-text-field__label">实践结束时间</label>
                                    <div class="mdc-text-field__bottom-line"></div>
                                </div>
                                <p class="mdc-text-field-helper-text mdc-text-field-helper-text--validation-msg" id="name-validation-msg6">
                                    实践结束时间不能为空
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="mdc-layout-grid__cell mdc-layout-grid__cell--span-4-desktop" style="margin: 30px 240px 0px 240px;">
                        <div class="template-demo">
                            <a href="#" class="mdc-button mdc-button--stroked secondary-stroked-button">
                                导入实训学生信息
                            </a><font color="#999999">选择excel表，内有学生学号</font>
                        </div>
                    </div>
                    <br>
                    <!--下侧按钮-->
                    <div class="mdc-list-item mdc-drawer-item purchase-link" >
                        <button class="mdc-button mdc-button--raised" data-mdc-auto-init="MDCRipple" style="margin: 0 auto" >
                            确认
                        </button>
                    </div>
                </form>
            </div>
        </main>
    </div>
</div>
<script src="node_modules/material-components-web/dist/material-components-web.min.js"></script>
<script src="node_modules/jquery/dist/jquery.min.js"></script>
<script src="node_modules/chart.js/dist/Chart.min.js"></script>
<script src="node_modules/progressbar.js/dist/progressbar.min.js"></script>
<script src="js/misc.js"></script>
<script src="js/text_Field.js"></script>
<script src="js/dashboard.js"></script>
</body>

</html>

