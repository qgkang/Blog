<?php
    //服务器目录
    define('PATH',$_SERVER['DOCUMENT_ROOT']);
    //博客目录
    define('ROOT','/TM/blog/');
    //后台目录
    define('ADMIN','admin/');
    //上传图片目录
    define('PIC','center/pics/image/');
    //备份目录
    define('BAK','sqlbak/');
    //头像目录
    define('HEADGIF','headgif/');
    //mysqli执行文件路径
    define('mysqliPATH','D:\\phpEnv\\mysql\\mysql-5.7.14-winx64\\bin');
    //mysqli服务器ip
    define('mysqliHOST','localhost');
    //mysqli数据库
    define('mysqliDATA','db_blog');
    //mysqli账号
    define('mysqliUSER','root');
    //mysqli密码
    define('mysqliPWD','111');
    //允许上传的图片后缀
    $picpostfix = array('image/gif','image/pjpeg','image/bmp');
    //允许上传的图片的最大字节数
    define('MAXSIZEPIC',500000);
?>