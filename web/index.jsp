
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>首页</title>
  <link rel="stylesheet" href="./layui/css/layui.css">
  <style>
    .layui-this>a:hover{background-color:rgb(40,43,51);color:#fff;}
  </style>
</head>
<body>
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
