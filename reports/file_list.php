<?php

session_start();

include('../odm-load.php');

if (!isset($_SESSION['uid']))
{
    redirect_visitor('../index.php?redirection=reports/file_list.php');
}

// Cek koneksi ke database
$user_obj = new User($_SESSION['uid'], $GLOBALS['connection'], DB_NAME);
// Cek jika user adalah admin
if(!$user_obj->isAdmin())
{
    header('Location:../error.php?ec=4');
    exit;
}

function cleanExcelData(&$str)
{    
    if (strstr($str, '"')) {
        $str = '"' . str_replace('"', '""', $str) . '"';
    }
    $str = mb_convert_encoding($str, 'UTF-16LE', 'UTF-8');
}

// nama file untuk di download
$filename = "file_report_" . date('Ymd') . ".csv";
header("Content-Disposition: attachment; filename=\"$filename\"");
header("Content-Type: text/csv; charset=UTF-16LE");
$out = fopen("php://output", 'w');
$flag = false;
$query = "SELECT 
            {$GLOBALS['CONFIG']['db_prefix']}data.realname,
            {$GLOBALS['CONFIG']['db_prefix']}data.description,
            {$GLOBALS['CONFIG']['db_prefix']}data.publishable,
            {$GLOBALS['CONFIG']['db_prefix']}data.status,    
            {$GLOBALS['CONFIG']['db_prefix']}data.id,
            {$GLOBALS['CONFIG']['db_prefix']}user.username,
            {$GLOBALS['CONFIG']['db_prefix']}log.revision,
            CASE {$GLOBALS['CONFIG']['db_prefix']}data.publishable
                WHEN -1 THEN 'Rejected'
                WHEN 0 THEN 'Un-approved'
                WHEN 1 THEN 'Active'
                WHEN 2 THEN 'Archived'
                WHEN -2 THEN 'Deleted'
            END AS 'Publishing Status',
            CASE {$GLOBALS['CONFIG']['db_prefix']}data.status
                WHEN 1 THEN 'Checked Out'
                WHEN 0 THEN 'Not Checked Out'
            END AS 'Check-Out Status'
          FROM 
            {$GLOBALS['CONFIG']['db_prefix']}data 
          LEFT JOIN {$GLOBALS['CONFIG']['db_prefix']}user
            ON {$GLOBALS['CONFIG']['db_prefix']}user.id = {$GLOBALS['CONFIG']['db_prefix']}data.owner
          LEFT JOIN {$GLOBALS['CONFIG']['db_prefix']}log
              ON {$GLOBALS['CONFIG']['db_prefix']}log.id = {$GLOBALS['CONFIG']['db_prefix']}data.id
          ORDER BY id
          ";             

$result = mysql_query($query) or die("Error in querying: $query" .mysql_error());
           
while (false !== ($row = mysql_fetch_assoc($result))) {

    if (!$flag) {

        fputcsv($out, array_keys($row), ',', '"');
        $flag = true;
    }
 
    array_walk($row, 'cleanExcelData');
    fputcsv($out, array_values($row), ',', '"');
}

fclose($out);
exit;
