<?php require_once __DIR__. "/./layout_header.php"; ?> 
     <div id="content-wrapper">

      <div class="container-fluid">

         <!-- Breadcrumbs -->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">QUẢN LÝ SẢN PHẨM</a>
          </li>
        </ol>
          <div class="text-center">
            <h1 class="h4 text-gray-900 mb-4">Cập nhật sản phẩm</h1>
          </div>
          <div id="thongtin" style="margin-bottom: 50px">
          <form class="user"  action="AddProduct.php" method="post" enctype="multipart/form-data">
          
          <div class="form-group">
              <input type="text" class="form-control form-control-user" name="TenSP" id="TenSP" placeholder="Tên sản phẩm"  required>
          </div>
          <div class="form-group">
          <select class="form-control form-control-user" name="Nhanhieu" id="Nhanhieu">
          <option value="" selected>Nhãn Hiệu</option>
          <?php
          include_once("DataProvider.php");
          $rs= Data::ExecuteQuery("SELECT * FROM `nhanhieu`");
          while ($row = mysqli_fetch_array($rs)){
          $chuoi = <<<EOD
          <option value="{$row['ID']}">{$row['TenNH']}</option>
EOD;
            echo $chuoi;
        }
          ?>
          </select>
          </div>
          <div class="form-group">
          <input type="text" class="form-control form-control-user" name="GiaNY" id="GiaNY" placeholder="Giá niêm yết"  required>
          </div>
          <div class="form-group">
          <input type="text" class="form-control form-control-user" name="GiaBan" id="GiaBan" placeholder="Giá bán"  required>
          </div>
          <div class="form-group">
          <input type="text" class="form-control form-control-user" name="KhuyenMai" id="KhuyenMai" placeholder="Khuyến mãi"  required>
          </div>
          <div class="form-group">
          <input type="text" class="form-control form-control-user" name="Ngaynhap" id="Ngaynhap" placeholder="Ngày nhập"  required>
          </div>
          <div class="form-group">
          <input type="text" class="form-control form-control-user" name="SoLuong" id="SoLuong" placeholder="Số lượng"  required>
          </div>
          <div class="form-group">
          Hình ảnh <input type="file" name="Hinh" required class="form-control" />

          </div>
          <div class="row">
                <div class="col-12 text-center">
                    <button class="btn btn-primary" type="submit"  style="width: 30%">
                        Thêm
                    </button>
                    <button class="btn btn-warning" style="width: 30%" >
                        Xác nhận
                    </button>
                    <button class="btn btn-danger" type="reset"  style="width: 30%">
                        Nhập lại
                    </button>
                </div>
                </div>
        </form>
        </div>
        <!-- DataTables Example -->
        <div class="card mb-3">
          <div class="card-header">
            <i class="fas fa-table"></i> Danh sách tài khoản
            </div>
          <div class="card-body">
            <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên sản phẩm</th>
                        <th>Nhãn hiệu</th>
                        <th>Hình ảnh</th>
                        <th>Giá niêm yết</th>
                        <th>Giá bán</th>
                        <th>Khuyến mãi</th>
                        <th>Ngày nhập</th>
                        <th>Số lượng</th>
                        <th>Thao tác</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                include_once("DataProvider.php");
                $sql_sp = "SELECT * FROM `thongtin_sanpham`";
                $chuoi_sp = Data::ExecuteQuery($sql_sp);
                while ($row = mysqli_fetch_array($chuoi_sp)){
                    $GiaBan = number_format($row['GiaBan']);
                    if($row['GiaNY']==NULL)
                    $GiaNY = number_format($row['GiaBan']);
                    else
                    $GiaNY = number_format($row['GiaNY']);
                    $chuoi = <<<EOD
                    <tr>
                        <th>{$row['ID']}</th>
                        <th>{$row['TenSP']}</th>
EOD;
                    echo $chuoi;
                    $sql_nh = "SELECT * FROM `nhanhieu` WHERE ID = {$row['Nhanhieu']}";
                    $nh = Data::ExecuteQuery($sql_nh);
                    $rownh = mysqli_fetch_array($nh);
                    $chuoi = <<<EOD
                        <th>{$rownh['TenNH']}</th>
EOD;
                    echo $chuoi;
                    $chuoi = <<<EOD
                        <th><img style="width: 100px" src="../img/list_product/{$row['Hinh']}"></th>
                        <th>$GiaNY VND</th>
                        <th>$GiaBan VND</th>
                        <th>{$row['KhuyenMai']}</th>
                        <th>{$row['Ngaynhap']}</th>
                        <th>{$row['SoLuong']}</th>
                        <th>
               <button style="margin: 20px" type="button" class="btn btn-danger remove-user" data-id="{$row['ID']}">Xóa</button>
               <button style="margin: 20px" type="button" class="btn btn-warning update-user" data-id="{$row['ID']}">Sửa</button>
               </th>
                    </tr>
EOD;
                    echo $chuoi;
                }
                ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>Tên sản phẩm</th>
                        <th>Nhãn hiệu</th>
                        <th>Hình ảnh</th>
                        <th>Giá niêm yết</th>
                        <th>Giá bán</th>
                        <th>Khuyến mãi</th>
                        <th>Ngày nhập</th>
                        <th>Số lượng</th>
                        <th>Thao tác</th>
                        
                    </tr>
                </tfoot>
                <tbody>
                </tbody>
              </table>
            </div>
          </div>
          <div class="card-footer small text-muted">Updated at <?php echo date("d-m-Y H:i:s") ?></div>
        </div>

      </div>
      <!-- /.container-fluid-->

      <!-- Sticky Footer -->
      <footer class="sticky-footer">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>© 2020 Copyright: TripleTWeb</span>
          </div>
        </div>
      </footer>


    </div>

    
    <!-- /.content-wrapper -->
<!--  -->

  </div>
  <!-- /#wrapper -->
  <!-- SCRIPTS -->
  <!-- JQuery -->  
  <script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="../js/jquery/jquery-3.5.0.js"></script>  
  <script>
  $(function(){
    $(".remove-user").click(function(){
      if (confirm('Bạn chắc chắn muốn xóa?')) {
        $.ajax({
        url: "XLDeleteProduct.php",
        data:{ 
            "id": $(this).data("id"),
        },
        success: function(data){
          alert(data);
          window.location="Quanly_sanpham.php";
        }
      });
      } 
      else {
          return 0;
      }
    });
    $(".update-user").click(function(){
        $.ajax({
        url: "XLInformationProduct.php",
        data:{ 
            "id": $(this).data("id"),
        },
        success: function(data){
          $("#thongtin").html(data);
        }
      });
    });
    
  });
  </script>

  <!-- Scroll to Top Button-->
    <?php require_once __DIR__. "/./layout_footer.php"; ?> 