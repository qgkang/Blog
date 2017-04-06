<?php
	header('Content-Type:text/html;charset=gb2312');
	include_once '../config.php';
	include_once 'conn/conn.php';
	$num="";
	for($i=0;$i<4;$i++){
		$num .= dechex(rand(0,15));
	}
?>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<script language="javascript" src="js/login.js"></script>
<script language="javascript" src="js/xmlhttprequest.js"></script>
<style type="text/css">

</style>
<table align="center">
<tr>
    <td>用户名：
        <input id="lgname" name="lgname" type="text" class="txt" style="width:100px;" />
    </td>
</tr>
<tr>
    <td>密&nbsp;&nbsp;&nbsp;码：
        <input id="lgpwd" name="lgpwd" type="password" class="txt" style="width:100px;" />
    </td>
</tr>
<tr>
      <td>验证码：
          <input id="lgchk" name="lgchk" type="text" style=" width:100px;" />
      </td>
  <td style="float: right; clear: none;">
      <img src="inc/valcode.php?num=<?php echo $num; ?>" width="55" height="18" />
  </td>
</tr>
<tr>
    <td>
    <input id="chknm" name="chknm" type="hidden" value="<?php echo $num; ?>"  />
    <input id="lgbtn" name="lgbtn" type="button" class="btn" value="登录" />&nbsp;忘记密码?&nbsp;<a id="reg">注册</a>
    </td>
</tr>
</table>
