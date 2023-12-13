<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- HTML5文档-->
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <!-- 指定字符集 -->
    <meta charset="utf-8">
    <!-- 使用Edge最新的浏览器的渲染方式 -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- viewport视口：网页可以根据设置的宽度自动进行适配，在浏览器的内部虚拟一个容器，容器的宽度与设备的宽度相同。
    width: 默认宽度与设备的宽度相同
    initial-scale: 初始的缩放比，为1:1 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>点餐主页面</title>

    <!-- 1. 导入CSS的全局样式 -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./layui/css/layui.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pure.css">
    <!-- 2. jQuery导入，建议使用1.9以上的版本 -->
    <script src="js/jquery-2.1.0.min.js"></script>
    <!-- 3. 导入bootstrap的js文件 -->
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
        td, th {
            text-align: center;
        }

    </style>
    <script language="JavaScript" type="text/javascript">
     //    var daizi = []
     // function add(menuname) {
     //     console.log(type)
     //        let str = daizi;
     //     if(str.includes(menuname)) {
     //         window.alert("不可重复选择")
     //     }else{
     //         console.log(menuname)
     //
     //         daizi.push(menuname);
     //     }
     //
     //     $("#msg").html(daizi);
     // }

        function add (id) {
            if (confirm("是否加入购物车")){
                location.href="${pageContext.request.contextPath}/AddServlet?id=" + id;
            }

        }

    </script>

</head>
<%--<body>--%>
<%--<ul class="layui-nav">--%>
<%--    <li class="layui-nav-item"><a href="FindmyorderServlet"><img src="imgs/order.png" style="height: 20px;width:20px;margin-right: 5px;">我的订单</a></li>--%>
<%--    <li class="layui-nav-item"><a href="${pageContext.request.contextPath}/grydtjServlet"><img src="imgs/yueduorder.png" style="height: 20px;width:20px;margin-right: 5px;">个人月度订单</a></li>--%>
<%--    <li class="layui-nav-item"><a href="findgrxx?username=${User.username}"><img src="imgs/update.png" style="height: 20px;width:20px;margin-right: 5px;">修改个人信息</a></li>--%>
<%--</ul>--%>

<%--<div style="width: 100%;height: 40px;display: flex;flex-direction: row;justify-content: space-between;background-color: rgb(57,61,73);color: white">--%>
<%--    <div style="display: flex;flex-direction: row;padding: 5px">--%>
<%--    <div style="padding: 0 5px">登录账户：${User.username}</div>--%>
<%--    <div style="padding: 0 5px">姓名：${User.name}</div>--%>
<%--    <div style="padding: 0 5px">部门：${User.status}</div>--%>
<%--    <div style="padding: 0 5px">身份：${User.wisdom}</div>--%>
<%--    </div>--%>
<%--    <div style="display: flex;flex-direction: row">--%>
<%--    <a href="index.jsp" style="color: white">前往后台系统</a>--%>
<%--    <form  action="outServlet" method="post">--%>
<%--        <input type="submit" style="color: red" value="退出登录">--%>
<%--    </form>--%>
<%--    </div>--%>
<%--</div>--%>

<%--<div style="display: flex;justify-content: space-between;width: 1400px;flex-direction: row;">--%>

<%--    <form action="" method="post" >--%>



<%--        <table class="pure-table pure-table-bordered" style="width: 900px">--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--                <th>序号</th>--%>
<%--                <th>名字</th>--%>
<%--                <th>图片</th>--%>
<%--                <th>单价</th>--%>
<%--                <th>操作</th>--%>
<%--            </tr>--%>
<%--            </thead>--%>

<%--            <tbody>--%>
<%--             <c:forEach items="${caidanlist}" var = "caidanlist" varStatus="s">--%>
<%--            <tr>--%>
<%--                <td>${s.count}</td>--%>
<%--                <td>${caidanlist.menuname}</td>--%>
<%--                <td><img src="${pageContext.request.contextPath}/${caidanlist.menupicture}" style="width: 100px;height: 100px"></td>--%>
<%--                <td>价格${caidanlist.money}</td>--%>
<%--                <td><a href="javascript:add('${caidanlist.id}');" style="color: red">加入购物车</a></td>--%>
<%--            </tr>--%>
<%--            </c:forEach>--%>

<%--            </tbody>--%>
<%--        </table>--%>



<%--    </form>--%>

<%--<div style="background-color: rgb(245,246,247);width: 500px;height: 100%">--%>
<%--    <div style="margin: 10px 30px;"><img src="imgs/gouwuche.png" style="height: 20px;width:20px;margin-right: 5px;">购物车预览</div>--%>
<%--    <c:choose>--%>
<%--        <c:when test="${foodlist2 == null || foodlist2.size()==0}">--%>
<%--            <div style="margin: 80px auto;display: flex;justify-content: center;flex-wrap: wrap">--%>
<%--                <p style="display: flex;justify-content: center;width: 100%"><img src="imgs/null.png" style="width: 80px;height: 80px;"></p>--%>
<%--                <p style="width: 100%;text-align: center;color: #8a8a8a">您购物车为空~</p>--%>
<%--            </div>--%>
<%--        </c:when>--%>
<%--        <c:otherwise>--%>
<%--            <form style="margin: 30px" action="xiadanservlet" method="post">--%>

<%--                <table class="pure-table pure-table-bordered">--%>
<%--                    <thead>--%>
<%--                    <tr>--%>
<%--                        <th>菜谱编号</th>--%>
<%--                        <th>菜谱名字</th>--%>
<%--                        <th>菜谱种类</th>--%>
<%--                        <th>单位</th>--%>
<%--                        <th>单位价格</th>--%>
<%--                        <th>数量</th>--%>
<%--                        <th>操作</th>--%>
<%--                    </tr>--%>
<%--                    </thead>--%>

<%--                    <tbody>--%>

<%--                    <c:forEach items="${foodlist2}" var = "food" varStatus="a">--%>
<%--                        <tr>--%>
<%--                            <td>${food.menunumber}</td>--%>
<%--                            <td>${food.menuname}</td>--%>
<%--                            <td>${food.kind}</td>--%>
<%--                            <td>${food.unit}</td>--%>
<%--                            <td>${food.money}</td>--%>
<%--                            <td><input type="number" value="${food.number}" min="1" id="number" name="number"> </td>--%>
<%--                            <td >--%>

<%--                                <a  href="DelServlet?menunumber=${food.menunumber}">删除</a>--%>
<%--                            </td>--%>
<%--                        </tr>--%>
<%--                    </c:forEach>--%>


<%--                    </tbody>--%>
<%--                </table>--%>

<%--                <div style="margin-top: 20px;display: flex;justify-content: center">--%>
<%--                    <button type="submit" class="button-success pure-button">确认下单</button>--%>
<%--                </div>--%>

<%--            </form>--%>
<%--        </c:otherwise>--%>
<%--    </c:choose>--%>





<%--</div>--%>
<%--</div>--%>
</body>
</html>
