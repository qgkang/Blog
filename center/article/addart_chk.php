<?php
session_start();
//接收数据，将信息添加到数据库，如果成功返回1
header('Content-Type:text/html;charset=gb2312');
include '../conn/conn.php';
//url = "article/addart_chk.php?act=add&title="+$('#txt_title').value+"&arttype="+$('articletype').value+"&cont="+$('#file').value;
$title = $_GET['title'];
$typename = $_GET['arttype'];
$author=$_SESSION['name'];
$content=$_GET['cont'];
//返回变量
$reback = '0';
$sql = "INSERT INTO tb_article (typename,title,content,author) VALUES ('".$typename."','".$title."','".$content."','".$author."')";
//影响的记录数
$num = $conne->uidRst($sql);
if($num == 1){
    $selectsql = "select upfile from tb_member where name = '".$author."'";
    //获得文章上传数量
    $artnum = $conne->getFields($selectsql,0);
    //更新上传文章数量到数据库
    $upsql = "update tb_member set upfile = ".(++$artnum)." where name = '".$author."'";
    $num = $conne->uidRst($upsql);
    $reback = '1';
}else {
    $reback = '2';
}
echo $reback;
?>