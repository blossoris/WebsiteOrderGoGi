<?php
include '../include/database.php';

if (isset($_POST['update_status']) && isset($_POST['status'])) {
    // Lặp qua các món ăn và cập nhật trạng thái
    foreach ($_POST['status'] as $id_bill_info => $status) {
        // Cập nhật trạng thái cho mỗi món ăn
        $sql = "UPDATE tbl_bill_info SET status = ? WHERE id_bill_info = ?";
        $stmt = $conn->prepare($sql);
        $stmt->bind_param("ii", $status, $id_bill_info);

        if ($stmt->execute()) {
            echo "Cập nhật trạng thái thành công!";
        } else {
            echo "Lỗi khi cập nhật trạng thái!";
        }

        $stmt->close();
    }
}

$conn->close();
?>
