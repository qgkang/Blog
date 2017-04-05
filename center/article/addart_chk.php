<?php
    session_start();
    header('Content-Type:html/text;charset=gb2312');
    include "../conn/conn.php";
    //xml传输表单数据
    $title = $_GET['title'];
    $typename  = $_GET['arttype'];
    $author = $_SESSION['name'];
    $content = $_GET['cont'];
    $reback = '0';
    //添加文章
    $sql = "insert into tb_article (typename,title,content,author) values ('".$typename."','".$title."','".$content."','".$author."')";
    $num = $conne->uidRst($sql);
    if($num == 1){
        //获取上传文章的数量
        $selectsql = "select upfile from tb_member where name = '".$author."'";
        $artnum = $conne->getFields($selectsql,0);
        $upsql = "update tb_member set upfile = ".(++$artnum)." where name = '".$author."'";
        $num = $conne->uidRst($upsql);
        $reback = '1';
    }else{
        $reback = '2';
    }
    echo $reback;

?>