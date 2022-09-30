<div class="bg-white vh-100 position-fixed" style="left:0; top:0; width: 80px;">
    <div>
        <ul class="list-style-none">
            <li class="d-flex align-items-center justify-content-center mt-4 mb-4">
                 <img src="<?=url()?>/img/logo/logo_vision.png" width="60px">   
            </li>
        </ul>
        <ul class="list-style-none mt-5 vh-100" 
            id="list_items"
            page="#<?=$page?>">
            <li class="text-center">
                <a href="<?=url('aplication/dashboard')?>" id="dashboard"  class="text-decoration-none text-dark links" data-tippy-content="Dashboard">
                    <i class="ri-dashboard-line" style="font-size: 1.5rem"></i>
                </a>
            </li>
            <li class="text-center mt-3">
                <a href="<?=url('aplication/stock')?>" id="estoque" class="text-decoration-none text-dark links" data-tippy-content="Estoque">
                    <i class="ri-roadster-line" style="font-size: 1.5rem"></i>
                </a>
            </li>
            <li class="text-center mt-3">
                <a href="#" id="usuarios" class="text-decoration-none text-dark links" data-tippy-content="Usuários">
                    <i class="ri-user-2-line" style="font-size: 1.5rem"></i>
                </a>
            </li>
            <li class="text-center mt-3">
                <a href="#" id="financeiro" class="text-decoration-none text-dark links"  data-tippy-content="Financeiro">
                    <i class="ri-coins-line" style="font-size: 1.5rem"></i>
                </a>
            </li>
            <li class="text-center mt-3">
                <a href="#" id="relatorios" class="text-decoration-none text-dark links" data-tippy-content="Relatórios">
                    <i class="ri-funds-box-line" style="font-size: 1.5rem"></i>
                </a>
            </li>
            <li class="text-center mt-3">
                <a href="#" id="documentos" class="text-decoration-none text-dark links" data-tippy-content="Documentos">
                    <i class="ri-folder-5-line" style="font-size: 1.5rem"></i>
                </a>
            </li>
            <li class="text-center mt-3">
                <a href="#" id="sms" class="text-decoration-none text-dark links" data-tippy-content="SMS">
                    <i class="ri-smartphone-line" style="font-size: 1.5rem"></i>
                </a>
            </li>
            <li class="text-center mt-3">
                <a href="#" id="suporte" class="text-decoration-none text-dark links" data-tippy-content="Suporte">
                    <i class="ri-customer-service-2-line" style="font-size: 1.5rem"></i>
                </a>
            </li>
            <li class="text-center mt-3">
                <a href="#" id="configuracao" class="text-decoration-none text-dark links" data-tippy-content="Configuração">
                    <i class="ri-settings-4-line" style="font-size: 1.5rem"></i>
                </a>
            </li>
        </ul>
    </div>
</div>
