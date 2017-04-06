// JavaScript Document
//全部选择/取消
function alldel(tot){
	for(i=0;i<tot;i++){
		if(!$('#chk['+i+']').checked){
			$('#chk['+i+']').checked = true;
		}
	}
	return false;
}
//反选
function overdel(tot){
	for(i=0;i<tot;i++){
		if(!$('#chk['+i+']').checked){
			$('#chk['+i+']').checked = true;
		}else{
			$('#chk['+i+']').checked = false;
		}
	}
	return false;
}
//删除所选
//先声明一个数组rd,循环判断当前复选框中的状态，将要删除的复选框的value保存到rd中，接着把当前页码和rd传给处理页，最后调用rerst函数，将返回结果显示到指定的区域;
function del(chkurl,tot,curpage) {
	var rd = new Array();
	for(i=0,j=0;i<tot;i++){
		//如果复选框被选中
		if($('#chk['+i+']]').checked){
			rd[j] = $('#chk['+i+']]').value;
			j++;
		}
	}
	if(rd == ''){
		alert('请选取要删除数据!');
		return false;
	}
	//生成url
	url = chkurl+"?act=del&rd="+rd+"&curpage="+curpage;
	xmlhttp.open('get',url,true);
	//调用rerst函数
	xmlhttp.onreadystatechange = rerst;
	xmlhttp.send(null);
	return false;
}

//分页
function pagination(chkurl,curpage){
	url = chkurl+'?act=next&curpage='+curpage;
	xmlhttp.open('get',url,true);
	xmlhttp.onreadystatechange = rerst;
	xmlhttp.send(null);
	return false;
}
//跳转
function jumpmem(chkurl) {
	jumppage = $('#jump').value;
	url = chkurl+'?curpage='+jumppage;
	xmlhttp.open('get',url,true);
	xmlhttp.onreadystatechange = rerst;
	xmlhttp.send(null);
	return false;
}
function rerst(){
	//判断请求是否完成
	if(xmlhttp.readyState == 4){
		if(xmlhttp.status == 200){
			//将返回值显示到指定的区域
			$('#showarticle').innerHTML == xmlhttp.responseText;
		}
	}
}