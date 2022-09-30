$(document).ready(function () {
    listStock();
});
//<"d-flex mb-4" f><"nowrap table-responsive" t><"d-flex justify-content-between" ip>
function listStock()
{
    var table = $('#example').DataTable({
        processing: true,
        language: {
            url: "https://cdn.datatables.net/plug-ins/1.10.21/i18n/Portuguese.json",
            paginate: {
                previous: '<i class="ri-arrow-left-s-line center-icon m-0"></i>',
                next: '<i class="ri-arrow-right-s-line center-icon m-0"></i>'
            },
            searchPanes: {
                clearMessage: 'Limpar Filtro',
                title: {
                    _: 'Filtros selecionados - %d',
                    0: 'Nenhum filtro selecionado',
                    1: 'Um filtro selecionado',
                }
            }
        },
        bFilter: true,
        filter: true,
        ordering: false,
        displayStart: 20,
        lengthChange: false,
        buttons: [
            `
            <button type="button" class="btn btn-secondary ms-3 btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
                <i class="ri-filter-line"></i>
            </button> 
            `
        ],
        dom: `P <"d-flex mb-4" f B> <"nowrap table-responsive" t><"d-flex justify-content-between" ip>`,
        searching: true,
        searchPanes:{
            clear: true,
            cascadePanes: true,
            initCollapsed: true,
            layout: 'columns-5',
            collapse: false,
            targets: [10],
        },
        columnDefs:[
            {
                searchPanes:{
                    show: true,
                },
                targets: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
            },
            {
                searchPanes:{
                    show: false,
                },
                targets: [11]
            }
        ],
        responsive: true,
        ajax: url+'/aplication/stock/find',
        deferRender: true,
        createdRow: function(row, data, dataIndex) {
            let id = data.id_vehicle;
            $(row).prop('id', id).data('id', id);
        },
        rowCallback: function(row, data, index) {
            if (data.format_status == "Ativo") {
              $("td:eq(10)", row).addClass("text-success fw-bold");
            } else if(data.format_status == "Inativo"){
                $("td:eq(10)", row).addClass("text-danger fw-bold");
            } else {
                $("td:eq(10)", row).addClass("text-primary fw-bold");
            }
            $("td:eq(4)", row).addClass("text-capitalize");
            $("td:eq(7)", row).addClass("text-capitalize");
            $("td:eq(0)", row).html(`<span class="fw-medium">#${data.id_vehicle}</span>`);
        },
        
        columns: [
            { data: 'id_vehicle' },
            { data: 'brand_vehicle' },
            { data: 'model_vehicle' },
            { data: 'board_vehicle' },
            { data: 'type_vehicle' },
            { data: 'format_price_vehicle' },
            { data: 'format_date_create'},
            { data: 'category_vehicle'},
            { data: 'city_vehicle'},
            { data: 'state_vehicle'},
            { 
                data: 'format_status',
                class:'statusCell',
            },
            {
                data: null,
                render: function (data, type, row) {
                  var status = data.status_vehicle;
                  var dataInfo = JSON.stringify(data);

                  table.searchPanes()
                  $("div.dtsp-verticalPanes").append(table.searchPanes.container());
                  
                  var editar = `<a class="dropdown-item" href="${url}/aplication/vehicle/edit/${data.id_vehicle}"><i class="ri-edit-line"></i> Editar</a>`;
                  var excluir = `<a class="dropdown-item text-danger"><i class="ri-delete-bin-7-line"></i> Excluir</a>`;
                  var toview = `<a style="cursor: pointer;" class="dropdown-item" data-bs-toggle="modal" data-bs-target="#toviewModal"  onclick='toView(${dataInfo})'><i class="ri-eye-line"></i> Visualizar</a>`;
                  var vender = status == 'disabled' ? '' : status == 'active' ? `<li><a class="dropdown-item"><i class="ri-shopping-bag-line"></i> Vender</a></li>` : '';

                  var dropdownButton = `
                  <div class="dropdown">
                    <button type="button" class="btn btn-light rounded-circle" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="ri-more-2-fill"></i>
                    </button>
                        <ul class="dropdown-menu border-0 shadow">
                            <li>
                                ${editar}
                                </li>
                            <li>
                                ${excluir}
                            </li>
                            <li>
                                ${toview}
                            </li>
                            ${vender}
                        </ul>
                    </div>
                  `;
                  var buttons = dropdownButton;
                  tippy('.tippy-left', {
                    placement: 'left-end'
                  });
                  tippy('.tippy-right', {
                    placement: 'right-end'
                  });
                  tippy('.tippy-bottom', {
                    placement: 'bottom'
                  });
                  return buttons;
                }
            }
        ],
    });
}

function toView(data)
{
    console.log(data);
    console.log(data.brand_vehicle);
    var valorFipe = parseInt(data.price_fipe_vehicle);
    var status = '';
    if(data.format_status == 'Ativo'){
        status = `<span class="badge text-bg-success text-white">${data.format_status}</span>`
    } else if(data.format_status == 'Vendido'){
        status = `<span class="badge text-bg-primary text-white">${data.format_status}</span>`
    } else {
        status = `<span class="badge text-bg-danger text-white">${data.format_status}</span>`
    }
    
    $('#titleView').html(`${data.brand_vehicle} - ${data.model_vehicle}`)
    $('#contentView').html(`
        <ul class="list-group list-group-flush">
            <li class="list-group-item list-group-item-primary">
                <div class="row row-cols-1">
                    <div class="col fw-bold text-center">INFORMAÇÕES DO VEÍCULO</div>
                </div>
            </li>
            <li class="list-group-item list-group-item-primary">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Tipo:</div>
                    <div class="col text-capitalize">${data.type_vehicle}</div>
                </div>
            </li>
            <li class="list-group-item list-group-item-primary">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Marca:</div>
                    <div class="col">${data.brand_vehicle}</div>
                </div>
            </li>
            <li class="list-group-item list-group-item-primary">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Modelo:</div>
                    <div class="col">${data.model_vehicle}</div>
                </div>
            </li>
            <li class="list-group-item list-group-item-primary">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Ano:</div>
                    <div class="col">${data.year_vehicle}</div>
                </div>
            </li>
            <li class="list-group-item list-group-item-primary">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Preço:</div>
                    <div class="col">${data.format_price_vehicle}</div>
                </div>
            </li>
            <li class="list-group-item list-group-item-primary">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Status:</div>
                    <div class="col">
                        ${status}
                    </div>
                </div>
            </li>
            <li class="list-group-item list-group-item-primary">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Data de entrada:</div>
                    <div class="col">
                        ${data.format_date_create}
                    </div>
                </div>
            </li>
            <li class="list-group-item list-group-item-primary">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Quem cadastrou:</div>
                    <div class="col">
                        ${data.cod_name_created}
                    </div>
                </div>
            </li>
            <li class="list-group-item list-group-item-info">
                <div class="row row-cols-1">
                    <div class="col fw-bold text-center">TABELA FIPE</div>
                </div>
            </li>
            <li class="list-group-item list-group-item-info">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Modelo FIPE:</div>
                    <div class="col">
                        ${data.model_fipe_vehicle}
                    </div>
                </div>
            </li>
            <li class="list-group-item list-group-item-info">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Codigo FIPE:</div>
                    <div class="col">
                        ${data.code_fipe_vehicle}
                    </div>
                </div>
            </li>
            <li class="list-group-item list-group-item-info">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Ano FIPE:</div>
                    <div class="col">
                        ${data.year_fipe_vehicle}
                    </div>
                </div>
            </li>
            <li class="list-group-item list-group-item-info">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Preço FIPE:</div>
                    <div class="col">
                        ${valorFipe.toLocaleString('pt-br',{style: 'currency', currency: 'BRL'})}
                    </div>
                </div>
            </li>
        </ul>
    `)
}