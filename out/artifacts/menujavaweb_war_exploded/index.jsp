
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>后台主页</title>
  <link rel="stylesheet" href="./layui/css/layui.css">
  <style>
    .layui-this>a:hover{background-color:rgb(40,43,51);color:#fff;}
  </style>
</head>
<body>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <div class="layui-logo layui-hide-xs layui-bg-black">
      <img src="imgs/system.png" style="width: 30px;height: 30px;margin-right: 5px">
      网络点餐后台系统
    </div>
    <!-- 头部区域（可配合layui 已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
      <!-- 移动端显示 -->
      <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">
        <i class="layui-icon layui-icon-spread-left"></i>
      </li>

      <li class="layui-nav-item layui-hide-xs"><span id="times"></span></li>

    </ul>
    <ul class="layui-nav layui-layout-right">
      <li class="layui-nav-item layui-hide layui-show-md-inline-block">
        <a href="javascript:;">
          <img src="imgs/user.png" class="layui-nav-img">
          ${User.username}
        </a>
        <dl class="layui-nav-child">
          <dd><a href="javascript:;">姓名：${User.name}</a></dd>
          <dd><a href="javascript:;">部门：${User.status}</a></dd>
          <dd><a href="javascript:;">身份：${User.wisdom}</a></dd>
          <hr>
          <dd style="text-align: center;">    <form class="tuichu" action="outServlet" method="post">
            <input type="submit" value="退出登录">
          </form></dd>
        </dl>
      </li>
      <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
        <a href="javascript:;">
          <i class="layui-icon layui-icon-more-vertical"></i>
        </a>
      </li>
    </ul>
  </div>

  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree" lay-filter="test">
      <li class="layui-nav-item layui-nav-itemed">
        <a href="maincaidanServlet">前往点餐主页面</a>
      </li>
      </ul>
      <ul class="layui-nav layui-nav-tree" lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;"><img src="imgs/mainguanli.png" style="height: 20px;width:20px;margin-right: 5px;">主管理页面</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"
                   data-url="ShowrecipeServlet"
                   data-id="cpgl"
                   data-title="菜谱管理"
                   class="site-demo-active"
                   data-type="tabAdd"
            >菜谱管理</a></dd>
            <dd><a href="javascript:;"
                   data-url="FindCaidanServlet"
                   data-id="cdgl"
                   data-title="菜单管理"
                   class="site-demo-active"
                   data-type="tabAdd"
            >菜单管理</a></dd>
            <dd><a href="javascript:;"
                   data-url="FindOrderServlet"
                   data-id="ddgl"
                   data-title="订单管理"
                   class="site-demo-active"
                   data-type="tabAdd"
            >订单管理</a></dd>
          </dl>
        </li>
      </ul>

      <ul class="layui-nav layui-nav-tree" lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;"><img src="imgs/cfgl.png" style="height: 20px;width:20px;margin-right: 5px;">厨房主管管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"
                   data-url="pcyglmainServlet"
                   data-id="dtcytj"
                   data-title="当天菜肴数量统计"
                   class="site-demo-active"
                   data-type="tabAdd"
            >当天菜肴数量统计</a></dd>
          </dl>

        </li>
      </ul>

      <ul class="layui-nav layui-nav-tree" lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;"><img src="imgs/pcygl.png" style="height: 20px;width:20px;margin-right: 5px;">配餐员管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"
                   data-url="${pageContext.request.contextPath}/pcytodayServlet"
                   data-id="jrdd"
                   data-title="今日批量订单"
                   class="site-demo-active"
                   data-type="tabAdd"
            >今日批量订单</a></dd>
          </dl>

        </li>
      </ul>

      <ul class="layui-nav layui-nav-tree" lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;"><img src="imgs/tjzx.png" style="height: 20px;width:20px;margin-right: 5px;">统计中心</a>

          <dl class="layui-nav-child">


            <dd><a href="javascript:;"
                   data-url="${pageContext.request.contextPath}/jrzkddServlet"
                   data-id="jrzkdd"
                   data-title="今日总括订单"
                   class="site-demo-active"
                   data-type="tabAdd"
            >今日总括订单</a></dd>

            <dd><a href="javascript:;"
                     data-url="${pageContext.request.contextPath}/ydddtjServlet"
                     data-id="ydddtj"
                     data-title="月度订单统计"
                     class="site-demo-active"
                     data-type="tabAdd"
              >月度订单统计</a></dd>
            <dd><a href="javascript:;"
                   data-url="tjzx-maintj.jsp"
                   data-id="cptj"
                   data-title="餐品订单统计"
                   class="site-demo-active"
                   data-type="tabAdd"
            >餐品订单统计</a></dd>
            <dd><a href="javascript:;"
                   data-url="UsertjServlet"
                   data-id="yhtj"
                   data-title="用户统计"
                   class="site-demo-active"
                   data-type="tabAdd"
            >用户统计</a></dd>
          </dl>
        </li>
      </ul>

      <ul class="layui-nav layui-nav-tree" lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a href="javascript:;"><img src="imgs/sz.png" style="height: 20px;width:20px;margin-right: 5px;">设置</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;"
                   data-url="UsershezhiServlet"
                   data-id="yhgl"
                   data-title="用户管理"
                   class="site-demo-active"
                   data-type="tabAdd"
            >用户管理</a></dd>
          </dl>
        </li>
      </ul>
    </div>
  </div>

  <div class="layui-body">
    <!-- 内容主体区域 -->
    <div style="padding: 15px;">


        <div class="layui-row layui-col-space15" style="padding: 0px">
          <div style="width: 99%" >
            <div class="layui-card">
              <div  style="margin: 0;line-height: 24px">
                <div class="layui-tab layui-tab-card layui-tab-brief" lay-allowclose="true" lay-filter="demo" style="width: 100%;height: auto">
                  <ul class="layui-tab-title">
                    <li class="layui-this"><i class="layui-icon layui-icon-home" style="font-size:14px;color: #009688;font-weight: bold"></i>首页</li>
                  </ul>
                  <div class="layui-tab-content" style="height: auto;">
                    <div class="layui-tab-item layui-show" style="text-align: center">
                      <iframe src="welcome.jsp" width="98%" ></iframe>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>



    </div>
  </div>


</div>
<script src="./layui/layui.js"></script>
<script>
  //JS
  layui.use(['element', 'layer', 'util'], function(){
    var element = layui.element
            ,layer = layui.layer
            ,util = layui.util
            ,$ = layui.$;

    //头部事件
    util.event('lay-header-event', {
      //左侧菜单事件
      menuLeft: function(othis){
        layer.msg('展开左侧菜单的操作', {icon: 0});
      }
      ,menuRight: function(){
        layer.open({
          type: 1
          ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
          ,area: ['260px', '100%']
          ,offset: 'rt' //右上角
          ,anim: 5
          ,shadeClose: true
        });
      }
    });

    //时钟定时器
    setInterval(function () {
      let dateStr = "";
      let date = new Date();
      //单独的获取时间
      dateStr += date.getFullYear() + "年";
      dateStr += ((date.getMonth()+1)<10?"0"+(date.getMonth()+1):(date.getMonth()+1))+"月";
      dateStr += (date.getDate()<10?"0"+date.getDate():date.getDate())+"日";
      dateStr += (date.getHours()<10?"0"+date.getHours():date.getHours())+"时";
      dateStr += (date.getMinutes()<10?"0"+date.getMinutes():date.getMinutes())+"分";
      dateStr += (date.getSeconds()<10?"0"+date.getSeconds():date.getSeconds())+"秒";
      let xq = ["日","一","二","三","四","五","六"];
      dateStr += "    星期"+xq[date.getDay()];

      $("#times").text(dateStr);
    },1000);

    //触发事件
    var active = {
      //在这里给active绑定几项事件，后面可通过active调用这些事件
      tabAdd: function (url, id, title) {
        //新增一个Tab项 传入三个参数，分别对应其标题，tab页面的地址，还有一个规定的id，是标签中data-id的属性值
        //关于tabAdd的方法所传入的参数可看layui的开发文档中基础方法部分
        element.tabAdd('demo', {
          title: title,
          content: '<iframe data-frameid="' + id
                  + '" scrolling="auto" frameborder="0" src="'
                  + url + '" style="width:100%;height: 730px"></iframe>',
          id: id
          //规定好的id
        })
        element.render('tab');

      },
      tabChange: function (id) {
        //切换到指定Tab项
        element.tabChange('demo', id); //根据传入的id传入到指定的tab项
      },
      tabDelete: function (id) {
        element.tabDelete("demo", id);//删除
      },
      tabDeleteAll: function (ids) {//删除所有
        $.each(ids, function (i, item) {
          element.tabDelete("demo", item); //ids是一个数组，里面存放了多个id，调用tabDelete方法分别删除
        })
      },
    };

    //当点击有site-demo-active属性的标签时，即左侧菜单栏中内容 ，触发点击事件
    $('.site-demo-active').on(
            'click',
            function () {
              var dataid = $(this);

              //这时会判断右侧.layui-tab-title属性下的有lay-id属性的li的数目，即已经打开的tab项数目
              if ($(".layui-tab-title li[lay-id]").length <= 0) {
                //如果比零小，则直接打开新的tab项
                active
                        .tabAdd(dataid.attr("data-url"), dataid
                                .attr("data-id"), dataid
                                .attr("data-title"));
              } else {
                //否则判断该tab项是否以及存在

                var isData = false; //初始化一个标志，为false说明未打开该tab项 为true则说明已有
                $.each($(".layui-tab-title li[lay-id]"),
                        function () {
                          //如果点击左侧菜单栏所传入的id 在右侧tab项中的lay-id属性可以找到，则说明该tab项已经打开
                          if ($(this).attr("lay-id") == dataid
                                  .attr("data-id")) {
                            isData = true;
                          }
                        })
                if (isData == false) {
                  //标志为false 新增一个tab项
                  active.tabAdd(dataid.attr("data-url"), dataid
                          .attr("data-id"), dataid
                          .attr("data-title"));
                }
              }
              //最后不管是否新增tab，最后都转到要打开的选项页面上
              active.tabChange(dataid.attr("data-id"));
            });

  });
</script>
</body>
</html>
