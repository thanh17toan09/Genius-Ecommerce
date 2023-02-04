
<?php
    include_once("DataProvider.php");
    $rs= Data::ExecuteQuery("SELECT * FROM `users` WHERE `ID` = '{$_REQUEST["id"]}'");
    $row = mysqli_fetch_array($rs);
    $chuoi = <<<EOD
    <form class="user" action="XLUpdateUser.php" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <input type="text" class="form-control form-control-user" name="ID" id="ID" value="{$row['ID']}" required style="width:0%;height:0%;visibility: hidden;">
    </div>
    <div class="form-group">
        <input type="text" class="form-control form-control-user" name="Name" id="Name" placeholder="Tên tài khoản" value="{$row['Name']}" required>
    </div>
    <div class="form-group">
        <input type="text" class="form-control form-control-user" id="Password" name="Password" placeholder="Mật khẩu" value="{$row['Password']}" required>
    </div>
    <div class="form-group">
        <input type="email" class="form-control form-control-user" id="Email" name="Email" placeholder="youremail@gmail.com" value="{$row['Email']}"  required>
    </div>
EOD;
        if($row['Level']=='Admin'){
            $chuoi .= <<<EOD
        <div class="form-group">
            <input id="Level" name="Level" type="radio" value="Admin" checked="checked" />Admin
            <input id="Level" name="Level" type="radio" value="Member" />Member
        </div>
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
    </div>
    </form>

EOD;
    }
    else{
        $chuoi .= <<<EOD
    <div class="form-group">
        <input id="Level" name="Level" type="radio" value="Admin"  />Admin
        <input id="Level" name="Level" type="radio" value="Member" checked="checked" />Member
    </div>
    <div class="form-group row">
        <div class="col-sm-6 mb-3 mb-sm-0">
            <button class="btn btn-primary form-control dangki" type="submit">
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

EOD;
    }
    echo $chuoi;
?>