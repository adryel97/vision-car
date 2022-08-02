<div style="height: auto; width: 100%; padding-left: 100px" class="bg-white pb-2 pt-2">
    <div class="row">
        <div class="col-6 ps-5">
        </div>
        <div class="col-6 pe-5">
            <div class="d-flex justify-content-end align-items-center">
                <div class="me-3">
                <img src="https://avatars.dicebear.com/api/initials/:<?=$avatar?>.svg" style="width: 40px; border-radius: 50%;" alt="<?=$avatar?>">
                </div>
                <div class="dropdown" style="cursor: pointer">
                    <div  data-bs-toggle="dropdown" aria-expanded="false">
                        <p class="m-0 fw-semibold"><?=$nameUser?> <span><i class="ri-arrow-drop-down-line center-icon" style="font-size: 1.3rem"></i></span></p>
                        <p class="text-gray m-0" style="font-size: 0.80rem">Loja 2</p>
                    </div>
                    <ul class="dropdown-menu border-0 shadow animate__bounceIn animate__animated animate__faster mt-5">
                        <li><a class="dropdown-item" href="#"><i class="ri-user-settings-line center-icon" style="font-size: 1.0rem"></i> Perfil</a></li>
                        <li><a class="dropdown-item" href="<?=$router->route('logout.action')?>"><i class="ri-shut-down-line center-icon" style="font-size: 1.0rem"></i> Sair</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>