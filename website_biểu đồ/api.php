<?php
header('Content-Type: application/json');

// kết nối server
$server = "127.0.0.1,1443";
$database = "BTL_python";
$username = "sa";
$password = "123";

try {
    $conn = new PDO("sqlsrv:Server=$server;Database=$database", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // echo "Connected successfully <br>";
} catch(PDOException $e) {
    echo "Connection DB failed: " . $e->getMessage();
}

// Method POST
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if(isset($_POST["action"])) {
        $action = $_POST["action"];
        // code POST here!!!!
        $action = $_POST["action"];
        echo $action;
        echo json_encode(array("action" => $action));
    } else {
        echo json_encode(array("error" => "Missing action parameter"));
    }
    
}

// Method GET
if ($_SERVER["REQUEST_METHOD"] == "GET") {
    // check parameter first
    if(isset($_GET["action"])) {
        // code GET here!!!!
        $action = $_GET["action"];
        if($action=="get_all_ramdom"){
            // Thực thi truy vấn SQL
            $stmt = $conn->query("select * from History");
            // Xử lý kết quả
            $array_kq = [];
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $array_kq[] = $row; // Thêm dòng hiện tại vào mảng
            }
            $json_result = json_encode($array_kq);
            echo $json_result;

        }elseif ($action =="get_1") {
            $date = $_GET["date"];
            $stmt = $conn->query("select * from So_xo where date = '$date' and score = 1");
            // Xử lý kết quả
            $array_kq = [];
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $array_kq[] = $row; // Thêm dòng hiện tại vào mảng
            }
            $json_result = json_encode($array_kq);
            echo $json_result;
        }elseif($action=="get_random"){
            // Thực thi truy vấn SQL
            $stmt = $conn->query("select * from Sensor where sid = 'demo'");
            // Xử lý kết quả
            $array_kq = [];
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
                $array_kq[] = $row; // Thêm dòng hiện tại vào mảng
            }
            $json_result = json_encode($array_kq);
            echo $json_result;
        }
        else{
            echo json_encode(array("action" => $action));
        }

    } else {
        echo json_encode(array("error" => "Missing action parameter"));
    }
}