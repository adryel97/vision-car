<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style.css?v<?=time()?>">
    <title><?=$title?></title>
    <link rel="stylesheet" href="node_modules/bootstrap-icons/font/bootstrap-icons.css">
    <link rel="stylesheet" href="node_modules/remixicon/fonts/remixicon.css">
    <?= $this->section('css') ?>
</head>
<body>    
    <div class="position-relative">
        <?php require './view/templates/header.php' ?>
        <?php require './view/templates/navbar.php' ?>
        <div style="padding-left: 80px">
            <main class="pb-4 position-relative">
                <div id="curved-corner-bottomleft"></div>
                <div class="pt-5 ps-5">
                    <?= $this->section('content');?>
                </div>
            </main>
        </div>
        <?php require './view/templates/footer.php' ?>
        <?= $this->section("js");?>
    </div>
</body>
</html>
