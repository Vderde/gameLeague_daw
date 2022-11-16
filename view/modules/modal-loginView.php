<div class="modal fade" id="modal-login" tabindex="-1" role="dialog" aria-labelledby="modal-loginTitle" aria-hidden="true">
    <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-body">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-3 mx-auto"><div id="log-gif"><img src="view/resources/login.gif"></div></div>
                    </div>
                    <div class="row justify-content-center text-center">
                        <div class="col-6"><h2>Login to Your Account</h2></div>
                        <input class="col-8 my-2" placeholder="Username" id="username"  pattern="[A-Za-z0-9]{1,15}">
                        <input type="password" class="col-8 my-2" placeholder="Password" id="password"   pattern="[A-Za-z0-9]{1,15}">
                        <div class="col-5">
                            <input type="checkbox" id="remember"><label class="px-2" for="remember"> Remember me</label>
                        </div>
                        <div class="col-4"><a href="#">Forgot Password?</a></div>
                    </div>
                    <div class="row justify-content-center text-center">
                        <button type="button" class=" col-8 my-2 btn btn-success" id="login">Login</button>
                    </div>

                </div>
            </div>
            <div class="modal-footer">
                <div>Don't have an account? <a href="index.php?ctrl=sign"> Sign up</a></div>
            </div>
        </div>
    </div>
</div>
