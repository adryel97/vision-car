<nav class="position-fixed bg-white side_bar shadow-sm rounded">
    <div class="nav__br--daddy">
        <ul class="navbar-nav d-flex flex-column mb-3 ul__nav" href="#">
            <li class="nav-item mb-2">
                <span href="#" class="d-flex flex-row flex-nowrap align-items-center">
                    <i class="ri-dashboard-2-fill center-icon text-gray icon__navbar"></i>
                    <span class="list_description ms-2 text-gray fw-semibold">Dashboard</span>
                </span>
            </li>
            <li class="nav-item mb-2">
                <a href="#" class="d-flex flex-row flex-nowrap collapse__nav align-items-center" 
                data-collapse="#financeiro">
                    <i class="ri-coins-fill center-icon text-gray icon__navbar"></i>
                    <span class="list_description ms-2 text-gray fw-semibold">
                        Financeiro
                    </span>
                    <i class="ri-arrow-down-s-line float-right arrow__collapse" id="financeiro-arrow"></i>
                </a>
                <ul class="list__collapse mt-2" id="financeiro" style="display: none;">
                    <li class="mb-2">
                        <a href="#" class="list_description text-gray" style="font-size: 0.8rem">Contas</a>
                    </li>
                    <li class="mb-2">
                        <a href="#" class="list_description text-gray" style="font-size: 0.8rem">Contas a pagar</a>
                    </li>
                    <li class="mb-2">
                        <a href="#" class="list_description text-gray" style="font-size: 0.8rem">Contas a pagas</a>
                    </li>
                    <li class="mb-2">
                        <a href="#" class="list_description text-gray" style="font-size: 0.8rem">Fluxo de caixa</a>
                    </li>
                    <li class="mb-2">
                        <a href="#" class="list_description text-gray" style="font-size: 0.8rem">Lançamentos</a>
                    </li>
                </ul>
                
            </li>
            <li class="nav-item mb-2">
                <a href="#" class="d-flex flex-row flex-nowrap collapse__nav align-items-center" 
                data-collapse="#relatorios">
                    <i class="ri-pie-chart-2-fill center-icon text-gray icon__navbar"></i>
                    <span class="list_description ms-2 text-gray fw-semibold">
                        Relatórios
                    </span>
                    <i class="ri-arrow-down-s-line float-right arrow__collapse" id="relatorios-arrow"></i>
                </a>
                <ul class="list__collapse mt-2" id="relatorios" style="display: none;">
                    <li class="mb-2">
                        <a href="#" class="list_description text-gray" style="font-size: 0.8rem">Vendas</a>
                    </li>
                    <li class="mb-2">
                        <a href="#" class="list_description text-gray" style="font-size: 0.8rem">Compradores</a>
                    </li>
                    <li class="mb-2">
                        <a href="#" class="list_description text-gray" style="font-size: 0.8rem">Relatório Geral</a>
                    </li>
                    <li class="mb-2">
                        <a href="#" class="list_description text-gray" style="font-size: 0.8rem">Relatório de Contas</a>
                    </li>
                    <li class="mb-2">
                        <a href="#" class="list_description text-gray" style="font-size: 0.8rem">Minhas Vendas</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item mb-2">
                <a href="#" class="d-flex flex-row flex-nowrap align-items-center">
                    <i class="ri-roadster-fill center-icon text-gray icon__navbar"></i>
                    <span class="list_description ms-2 text-gray fw-semibold">
                        Veículos
                    </span>
                </a>
            </li>
        </ul>       
    </div>
</nav>