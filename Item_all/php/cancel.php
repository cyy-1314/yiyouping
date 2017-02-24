<?php
session_start();
//对session进行操作的时候如果是赋值这种的会立刻能够显现
//而如果是销毁这种的在当前页面是无法生效的，必须要刷新或者跳转到新的页面才能生效
session_destroy();
echo '{"name":"登录","ecode":"0"}';
?>

