<?php
    //返回文件夹下的文件列表
    function show_file($f_name){
        //打开指定目录
        $d_open = opendir($f_name);
        $num = 0;
        //循环输出目录下的文件
        while($file = readdir($d_open)){
            $filename[$num] = $file;
            $num++;
        }
        //关闭目录
        closedir($d_open);
        //返回数组文件
        return $filename;
    }

    /*
     * 判断文件后缀
     * $f_type:允许文件的后缀类型
     * $f_upfiles:上传文件名
     */
    function f_postfix($f_type,$f_upfiles){
        $is_pass = false;
        //后缀字符串分割成数组
        $tmp_upfiles = split(".",$f_upfiles);
        //获取数组大小
        $tmp_num = count($tmp_upfiles);
        //上传的后缀是否在允许的范围内
        if(in_array(strtolower($tmp_upfiles[$tmp_num - 1]),$f_type)){
            $is_pass = $tmp_upfiles[$tmp_num - 1];
        }
        return $is_pass;
    }




?>




