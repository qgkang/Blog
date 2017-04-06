<?php
	session_start();
	header('content-type:text/html;charset=gb2312');
	include_once '../conn/conn.php';
	if(isset($_GET['act'])){
		$act = $_GET['act'];
	}else{
		$act="";
	}
	//获取当前用户
	$name = $_SESSION['name'] = 'wode';
	$num = 10;								//每页显示记录数
	//获取当前页
	if(isset($_GET['curpage'])){
		$curpage = $_GET['curpage'];
	}else{
		$curpage ="";
	}
	if($act == 'del'){
	    //获得删除的id
		$rd = $_GET['rd'];
		//初始化删除sql语句
		$delsql = "delete from tb_article where id = -1";
		if(!empty($rd)){
		    //转换为数组
			$delarr = explode(',',$rd);
			foreach($delarr as $value){
				$delsql .= "or where id=".$value." ";
			}
			//影响的行数
			$delnum = $conne->uidRst($delsql);
		}
	}
	if(empty($curpage) or is_null($curpage)){
		$curpage = 1;
	}

	$sql = "select id,typename,title,hitnum,renum from tb_article where author = '".$name."' order by id desc";
	$totnum = $conne->getRowsNum($sql);		//记录数
	$totpage = ceil($totnum / $num);		//页数
	//获取上一页的最后记录数
	$tmpsql = $sql." limit ".($num *($curpage-1)).",".$num;
	//获取记录数
	$arr = $conne->getRowsArray($tmpsql);
?>
<script language="javascript" src="../js/choose.js"></script>
<div id = 'showarticle'>
<table width="600" border="1" cellpadding="0" cellspacing="0" align="center">
	<tr>
		<td colspan="4" height="25px" align="center" valign="middle"  style="background-color:#f3fde8;"> 文章列表 </td>
	</tr>
	<tr>
		<td height="25" width="30" align="center" valign="middle">&nbsp;</td>
		<td height="25" width="100" align="center" valign="middle">类别</td>
		<td height="25" width="370" align="center" valign="middle">标题</td>
		<td height="25" width="100" align="center" valign="middle">点击率</td>
	</tr>
<?php
	foreach($arr as $key => $value){
?>
		<tr>
		<td align="center" valign="middle" height="25">
			<input id="chk[<?php echo $key; ?>]" name="chk[]" type="checkbox" value="<?php echo $value['id']; ?>" />
		</td>
		<td align="center" valign="middle" height=25>&nbsp;<?php echo $value['typename']; ?></td>
		<td align="left" valign="middle" height=25>&nbsp;<?php echo $value['title']; ?></td>
		<td align="center" valign="middle" height=25>&nbsp;<?php echo $value['hitnum']; ?></td></tr>
<?php
}
if($totnum > 0){
	?>
		<tr>
			<td colspan="4" height="30" align="right" valign="middle">
                <a href="#" onclick="return alldel('<?php echo count($arr); ?>')">全选</a>
                <a href="#" onclick="return overdel('<?php echo count($arr) ?>')">反选</a>&nbsp;&nbsp;
                <button id="delbtn" name="delbtn" class="btn" onclick="return del('<?php echo $_SERVER['SCRIPT_NAME']; ?>','<?php echo count($arr); ?>',<?php echo $curpage; ?>)">删除选择</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <?php echo ($curpage == 1)?"首页":"<a  onclick='return pagination(\"".$_SERVER['SCRIPT_NAME']."\",1)'>首页</a>"; ?>&nbsp;
                <?php echo ($curpage==1)?"上一页":"<a onclick='return pagination(\"".$_SERVER['SCRIPT_NAME']."\",".($curpage-1).")'>上一页</a>"; ?>&nbsp;
                <?php echo ($curpage == $totpage)?'下一页':"<a onclick='return pagination(\"".$_SERVER['SCRIPT_NAME']."\",".($curpage+1).")'>下一页</a>"; ?>
                <?php echo ($curpage==$totpage)?"尾页":"<a onclick='return pagination(\"".$_SERVER['SCRIPT_NAME']."\",".($totpage).")'>尾页</a>"; ?>
                当前是第<?php echo $curpage; ?>页/共<?php echo $totpage; ?>页<?php echo $totnum; ?>条记录  跳转到：
                <select id="jump" name="jump" onchange="return jumpmem('<?php echo $_SERVER['SCRIPT_NAME']; ?>')">
	
			<?php
				for($i=1;$i<=$totpage;$i++){
					if($i == $curpage)
						echo "<option value=".$i." selected>".$i."</option>";
					else
						echo "<option value=".$i.">".$i."</option>";
				}
			?>
			  </select> 页</td>
		</tr>
	<?php
		}
?>
</table>
</div>