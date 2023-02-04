<?php require_once __DIR__. "/./layout_header.php"; ?> 
     <div id="content-wrapper">

      <div class="container-fluid">

         <!-- Breadcrumbs -->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">
            <a href="#">QUẢN LÝ TÀI KHOẢN</a>
          </li>
        </ol>
        <div class="text-center">
                    <h1 class="h4 text-gray-900 mb-4">Cập nhật tài khoản</h1>
                </div>
                <div id="thongtin">
                  <form class="user"  action="" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                      <input type="text" class="form-control form-control-user" name="ID" id="ID" required style="width:0%;height:0%;visibility: hidden;">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control form-control-user" name="Name" id="Name" placeholder="Tên tài khoản"  required>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control form-control-user" id="Password" name="Password" placeholder="Mật khẩu"  required>
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control form-control-user" id="Email" name="Email" placeholder="youremail@gmail.com"  required>
                    </div>

                    <div class="form-group">
                        <input id="Level" name="Level" type="radio" value="Admin" checked="checked" />Admin
                        <input id="Level" name="Level" type="radio" value="Member" />Member
                    </div>

                    <div class="form-group row">
                      <div class="col-sm-6 mb-3 mb-sm-0">
                          <button class="btn btn-primary form-control" type="submit">
                              Xác nhận
                          </button>
                      </div>
                      <div class="col-sm-6">
                        <button class="btn btn-danger form-control" type="reset">
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
                        <th><img scr="{$row['Hinh']}"/></th>
                        <th>$GiaNY VND</th>
                        <th>$GiaBan VND</th>
                        <th>{$row['KhuyenMai']}</th>
                        <th>{$row['Ngaynhap']}</th>
                        <th>{$row['SoLuong']}</th>
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

  <!-- Scroll to Top Button-->
    <?php require_once __DIR__. "/./layout_footer.php"; ?> 