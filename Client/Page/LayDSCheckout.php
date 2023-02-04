<?php
    session_start();
    if(isset($_SESSION['MyCart'])){
        foreach($_SESSION['MyCart'] as $id => $SoLuong){
            $rs= Data::ExecuteQuery("SELECT * FROM thongtin_sanpham WHERE ID = $id");
            $row = mysqli_fetch_array($rs);
            $sum_soluong += $SoLuong; 
            $sum = number_format($SoLuong * $row['GiaBan']);
            $total += ($SoLuong * $row['GiaBan']);
            $Dongia = number_format($row['GiaBan']);
            $chuoi = <<< EOD
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <h6 class="my-0">{$row['TenSP']}</h6>
              </div>
              <span class="text-muted">{$row['GiaBan']}</span>
            </li>
EOD;
            echo $chuoi;
        }
    }
?>