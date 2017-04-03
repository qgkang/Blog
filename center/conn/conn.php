<?php
class opmysqli{
    private $host = '127.0.0.1';
    private $name = 'root';
    private $pwd = 'root';
    private $db = 'db_blog';
    //数据库链接资源
    private $conn = '';
    //结果集
    private $result = '';
    //返回结果
    private $msg = '';
    //返回字段
    private $fields = '';
    //返回字段数
    private $fieldsNum = 0;
    //返回结果数
    private $rowsNum = 0;
    //返回字段数组
    private $filesArray = array();
    //返回结果数组
    private $rowsArray = array();

    //初始化类
    function __construct($host='',$name='',$pwd='',$db=''){
        if($host != ''){
            $this->host = $host;
        }
        if($name != ''){
            $this->name = $name;
        }
        if($pwd != ''){
            $this->pwd = $pwd;
        }
        if($db != ''){
            $this->db = $db;
        }
        $this->init_conn();
    }

    //链接数据库
    function init_conn(){
        $this->conn = mysqli_connect($this->host,$this->name,$this->pwd,$this->db);
        mysqli_query($this->conn,"set names gb2312");
    }
    //查询结果
    function mysqli_query_rst($sql){
        if($this->conn == ''){
            $this->init_conn();
        }
        $this->result = mysqli_query($this->conn,$sql);
    }
    //取得字段数
    function getFieldsNum($sql){
        $this->mysqli_query_rst($sql);
        $this->fieldsNum = mysqli_num_fields($this->result);
    }

    //取得查询结果数
    function getRowsNum($sql){
        $this->mysqli_query_rst($sql);
        $this->rowsNum = mysqli_num_rows($this->result);
        return $this->rowsNum;
    }
    //取得记录数组
    function getRowsArray($sql){
        $this->mysqli_query_rst($sql);
        while ($row = mysqli_fetch_array($this->result,MYSQL_ASSOC)){
            $this->rowsArray[] = $row;
        }
        return $this->rowsArray;
    }
    //更新，添加，删除记录数
    function update_add_del_affected_rows($sql){
        if($this->conn == ''){
            $this->init_conn();
        }
        @mysqli_query($this->conn,$sql);
        $this->rowsNum = mysqli_affected_rows($this->conn);
        return $this->rowsNum;
    }
    //获得对应的字段值
    function getFields($sql,$fields){
        $this->mysqli_query_rst($sql);
        if(mysqli_num_rows($this->result > 0)){
            $tmpfld = mysqli_fetch_row($this->result);
            $this->fields = $tmpfld[$fields];
        }
        return $this->fields;
    }
    //错误信息
    function msg_error(){
        if(mysqli_errno() != 0){
            $this->msg = mysqli_errno();
        }
        return $this->msg;
    }

    //释放结果集
    function close_rst(){
        $this->msg = '';
        $this->fieldsNum = 0;
        $this->rowsNum = 0;
        $this->filesArray = '';
        $this->rowsArray = '';
    }

    //关闭数据库
    function close_conn(){
        $this->close_rst();
        mysqli_close($this->conn);
        $this->conn;
    }
}
$conne = new opmysqli();
?>