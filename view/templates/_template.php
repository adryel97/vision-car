<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="<?=url();?>/img/logo/visioncar_mini.png"  type="image/png" sizes="15x15" />
    <link rel="stylesheet" href="<?=url();?>/css/bootstrap.css">
    <link rel="stylesheet" href="<?=url();?>/css/style.css?v<?=time()?>">
    <title><?=$title?></title>
    <link rel="stylesheet" href="<?=url();?>/node_modules/bootstrap-icons/font/bootstrap-icons.css">
    <link rel="stylesheet" href="<?=url();?>/node_modules/remixicon/fonts/remixicon.css">
    <link rel="stylesheet" href="<?=url();?>/node_modules/overlayscrollbars/css/OverlayScrollbars.min.css">
    <link rel="stylesheet" href="<?=url();?>/node_modules/animate.css/animate.min.css">
    <?=$this->section('css');?>
    <style>
        .loading{
            display: flex;
            justify-content: center;
            align-items: center;
            position: fixed;
            bottom: 0;
            right: 0;
            width: calc(100% - 80px);
            background: #fff;
            height: calc(100vh - 66px);
            z-index: 30;
        }
    </style>
</head>
<body>
    <div class="position-relative">
        <?php require './view/templates/header.php' ?>
        <?php require './view/templates/navbar.php' ?>
        <div style="padding-left: 80px">
            <main class="pb-4 position-relative">
                <div id="curved-corner-bottomleft"></div>
                <div class="pt-5 ps-5 pe-5">
                    <?=$this->section('content');?>
                </div>
            </main>
        </div>
        <div class="loading">
            <div class="spinner-border text-primary" role="status" style="width: 4rem; height: 4rem;">
                <span class="visually-hidden">Loading...</span>
            </div>
        </div>
        <?php require './view/templates/footer.php' ?>
        <?=$this->section("js");?>
        <script>
            $(document).ready(function () {
                $('.loading').show();
                $('body, html').css({
                    'overflow-y': 'hidden',
                })
                $('#list_items').overlayScrollbars({
                    className       : "os-theme-dark",
                    sizeAutoCapable : true,
                    paddingAbsolute : true,
                    scrollbars : {
                        clickScrolling : true
                    }
                }); 
            });

            $(window).on("load", function() {
                setTimeout(function(){
                    $('.loading').remove();
                    $('body, html').css({
                    'overflow-y': 'auto',
                })
                }, 700); 
            });
        </script>
    </div>
</body>
</html>