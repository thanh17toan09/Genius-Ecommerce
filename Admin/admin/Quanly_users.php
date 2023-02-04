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
       <div id="thongtin" style="margin-bottom: 50px">
         <form class="user"  action="AddUser.php" method="post" enctype="multipart/form-data">
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
           <th>Name</th>
           <th>Password</th>
           <th>Email</th>
           <th>Level</th>
           <th>Ngày tạo</th>
           <th>Thao tác</th>
         </tr>
       </thead>
       <tbody>
       <?php
       include_once("DataProvider.php");
       $sql_user = "SELECT * FROM `users`";
       $chuoi_user = Data::ExecuteQuery($sql_user);
       while ($row = mysqli_fetch_array($chuoi_user)){
           $chuoi = <<<EOD
           <tr>
               <th>{$row['ID']}</th>
               <th>{$row['Name']}</th>
               <th>{$row['Password']}</th>
               <th>{$row['Email']}</th>
               <th>{$row['Level']}</th>
               <th>{$row['created_at']}</th>
               <th>
               <button type="button" class="btn btn-danger remove-user" data-id="{$row['ID']}">Xóa</button>
               <button type="button" class="btn btn-warning update-user" data-id="{$row['ID']}">Sửa</button>
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
           <th>Name</th>
           <th>Password</th>
           <th>Email</th>

           <th>Level</th>
           <th>Ngày tạo</th>
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
        url: "XLDeleteUser.php",
        data:{ 
            "id": $(this).data("id"),
        },
        success: function(data){
          alert(data);
          window.location="Quanly_users.php";
        }
      });
      } 
      else {
          return 0;
      }
    });
    $(".update-user").click(function(){
        $.ajax({
        url: "XLInformationUser.php",
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