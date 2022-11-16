<?php require "view/modules/headView.php";?>
<?php require "view/modules/headerView.php";?>
    <div class="container rounded-bottom" id="container-sign">
        <div class="row">
            <div class="col-md-6">
                <img src="view/resources/gameLeague-logo.png">
            </div>
            <div class="col-md-5 p-3" id="parent-form">
                <div class="row justify-content-around colo-form">
                    <div class="col-12 text-center">
                        <h2 class="font-weight-bold p-2">Create a GameLeague Account</h2>
                    </div>
                    <div class="col-md-8 p-1">
                        <input class="form-control" placeholder="Username" name='username' require>
                    </div>
                    <div class="col-md-8 p-1">
                        <input class="form-control" placeholder="Password" type='password' name='password' require>
                    </div>
                    <div class="col-md-5 p-1">
                        <input class="form-control" placeholder="Name" name='name' require>
                    </div>
                    <div class="col-md-5 p-1">
                        <input class="form-control" placeholder="Surname" name='surname' require>
                    </div>
                    <div class="col-md-10 p-1">
                        <input class="form-control" type="email" placeholder="Email" name='email' require>
                    </div>
                    <div class="col-md-8 p-1">

                        <label class="px-2" for="birthday">Birthday</label>

                        <img src="view/resources/calendar.png">

                        <input id="birthday" name="birthday" placeholder="Birthday" type="date" name='birthday' require>
                    </div>
                    <div class="col-md-10 p-1">
                        <button class="btn btn-primary float-right mb-2" id='sign'>Sign In</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php require "view/modules/modal-loginView.php";?>
<?php require "view/modules/endView.php";?>