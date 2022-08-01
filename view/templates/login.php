<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<?=url();?>/css/bootstrap.css">
    <link rel="stylesheet" href="<?=url();?>/css/style.css?v<?=time()?>">
    <title>VisionCar</title>
    <link rel="stylesheet" href="<?=url();?>/node_modules/bootstrap-icons/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<?=url();?>/node_modules/remixicon/fonts/remixicon.css">
    <link rel="stylesheet" href="<?=url();?>/node_modules/jquery-confirm/dist/jquery-confirm.min.css">
</head>
<body class="bg-light2 w-100 vh-100 d-flex justify-content-center align-items-center">    
    <div class="card border-0 shadow">
        <div class="card-body pt-5 pb-5">
           <div class="row row-cols-2">
                <div class="col p-4 d-flex justify-content-center align-items-center border-1 border-end">
                    <img src="<?=url('img/logo')?>/logo.png" class="w-75">
                </div>
                <div class="col p-4">
                    <form id="formLogin" action="<?=$router->route('login.action')?>">
                        <div class="form-floating mb-4">
                            <input type="email" name="email" class="form-control" id="email" placeholder="email@exemplo.com">
                            <label for="email">E-mail</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="password" name="password" class="form-control" id="password" placeholder="Sua senha">
                            <label for="password">Senha</label>
                        </div>
                        <div class="mb-5">
                            <button class="btn btn-primary text-white p-3 w-100">Entrar</button>
                        </div>
                        <div>
                            Não tem uma conta? <a href="#">Cadastrar</a>
                        </div>
                    </form>
                </div>
           </div>
        </div>
        </div>

        <script src="<?=url()?>/node_modules/jquery/dist/jquery.min.js"></script>
        <script src="<?=url()?>/node_modules/bootstrap/dist/js/bootstrap.js"></script>
        <script src="<?=url()?>/node_modules/@popperjs/core/dist/umd/popper.min.js"></script>
        <script src="<?=url()?>/node_modules/bootstrap/dist/js/bootstrap.bundle.js"></script>
        <script src="<?=url()?>/node_modules/tippy.js/dist/tippy-bundle.umd.js"></script>
        <script src="<?=url()?>/node_modules/jquery-confirm/dist/jquery-confirm.min.js"></script>
        <script src="<?=url()?>/js/app/appLogin.js"></script>
</body>
</html>
