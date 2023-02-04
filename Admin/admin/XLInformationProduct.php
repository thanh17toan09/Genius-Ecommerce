
<?php
    include_once("DataProvider.php");
    $rs= Data::ExecuteQuery("SELECT * FROM `thongtin_sanpham` WHERE `ID` = '{$_REQUEST["id"]}'");
    $row = mysqli_fetch_array($rs);
    $chuoi = <<<EOD
    <form class="user"  action="XLUpdateProduct.php" method="post" enctype="multipart/form-data">
          <div class="form-group">
            <input type="text" class="form-control form-control-user" name="ID" id="ID" value="{$row['ID']}" required style="width:0%;height:0%;visibility: hidden;">
          </div>
          <div class="form-group">
              <input type="text" class="form-control form-control-user" name="TenSP" id="TenSP" value="{$row['TenSP']}" placeholder="Tên sản phẩm"  required>
          </div>
          <div class="form-group">
          <select class="form-control form-control-user" name="Nhanhieu" id="Nhanhieu">
          <option value="" >Nhãn Hiệu</option>
          
EOD;
        $rs2= Data::ExecuteQuery("SELECT * FROM `nhanhieu`");
        while ($row2 = mysqli_fetch_array($rs2)){
            if($row2['ID'] == $row['Nhanhieu'])
        $chuoi .= <<<EOD
        <option value="{$row2['ID']}" selected>{$row2['TenNH']}</option>
EOD;
            else
            $chuoi .= <<<EOD
        <option value="{$row2['ID']}" >{$row2['TenNH']}</option>
EOD;
        }
        $chuoi .= <<<EOD
        </select>
        </div>
          <div class="form-group">
          <input type="text" class="form-control form-control-user" name="GiaNY" id="GiaNY" value="{$row['GiaNY']}" placeholder="Giá niêm yết"  required>
          </div>
          <div class="form-group">
          <input type="text" class="form-control form-control-user" name="GiaBan" id="GiaBan" value="{$row['GiaBan']}" placeholder="Giá bán"  required>
          </div>
          <div class="form-group">
          <input type="text" class="form-control form-control-user" name="KhuyenMai" id="KhuyenMai" value="{$row['KhuyenMai']}" placeholder="Khuyến mãi"  required>
          </div>
          <div class="form-group">
          <input type="text" class="form-control form-control-user" name="Ngaynhap" id="Ngaynhap" value="{$row['Ngaynhap']}" placeholder="Ngày nhập"  required>
          </div>
          <div class="form-group">
          <input type="text" class="form-control form-control-user" name="SoLuong" id="SoLuong" value="{$row['SoLuong']}" placeholder="Số lượng"  required>
          </div>
          <div class="form-group">
          Hình ảnh                     <input type="file" name="Hinh" required class="form-control" />

          </div>
          <div class="row">
                <div class="col-12 text-center">
                    <button class="btn btn-primary"   style="width: 30%">
                        Thêm
                    </button>
                    <button class="btn btn-warning" type="submit" style="width: 30%" >
                        Xác nhận
                    </button>
                    <button class="btn btn-danger" type="reset"  style="width: 30%">
                        Nhập lại
                    </button>
                </div>
                </div>
        </form>
EOD;
    echo $chuoi;
?>