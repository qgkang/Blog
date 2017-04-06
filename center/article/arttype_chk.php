<?php
	session_start();
	header('Content-Type:text/html;charset=gb2312');
	include_once '../conn/conn.php';
	$act = $_GET['act'];
    //原类别字符串
	$typestr = $_GET['typestr'];
    //要获取的类别字符串
	$typename = $_GET['typename'];
	$arr = explode(',',$typestr);
	$reback = '0';
	$name = $_SESSION['name'];
    //添加动作
	if($act == 'add'){
	    //名称是否重复
		if(in_array($typename,$arr)){
			$reback = '3';
		}else{
            //将新类别名称添加到原类别后面
            $typestr .= ','.$typename;
			$sql = "update tb_member set arttype= '".$typestr."' where name = '".$name."'";
			$num = $conne->uidRst($sql);
			if($num == 1){
				$reback = '1';
			}else{
				$reback = '2';
			}
		}
	}else if($act == 'del'){
		
		if($typename == '日记'){
			$reback = '3';
		}else{
			$tmpstr = '日记';
			for($i=1;$i<count($arr);$i++){
				if($arr[$i]  != $typename){
					$tmpstr .= ','.$arr[$i];
				}
			}
			$changsql = "update tb_article set typename = '日记'where author = '".$name."' and typename='".$typename."'";
			$num = $conne->uidRst($changsql);
			$sql = "update tb_member set arttype = '".$tmpstr."' where name = '".$name."'";
			$num = $conne->uidRst($sql);
			if($num == 1){
				$reback = '1';
			}else{
				$reback = '2';
			}
		}
	}
	echo $reback;
?>