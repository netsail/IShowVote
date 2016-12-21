<?php
date_default_timezone_set ( 'Asia/Shanghai' );
// error_reporting(0);
error_reporting ( E_ALL ^ E_NOTICE ^ E_STRICT ^ E_WARNING );
define ( 'DS', DIRECTORY_SEPARATOR );
define ( 'PS', PATH_SEPARATOR );
defined ( 'APPLICATION_PATH' ) || define ( 'APPLICATION_PATH', realpath ( dirname ( __FILE__ ) ) );
defined ( 'APPLICATION_INDEX_DIR' ) || define ( 'APPLICATION_INDEX_DIR', dirname ( __FILE__ ) );
function __autoload($classname) {
    require_once 'controller' . DS . $classname . '.php';
}

if (isset ( $_REQUEST ['c'] )) {
    // $replacement=strtoupper(substr($_REQUEST ['c'], 0,1));
    // substr_replace($_REQUEST ['c'], $replacement, 0,1);
    $cls = $_REQUEST ['c'] . "Controller";
    $obj = new $cls ();
    $m = $_REQUEST ['m'];
    echo $obj->$m ();
}

?>