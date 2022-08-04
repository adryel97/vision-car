$(document).ready(function () {
    listStock();
});

function listStock()
{
    var table = $('#example').DataTable({
        processing: true,
        language: {
            url: "https://cdn.datatables.net/plug-ins/1.10.21/i18n/Portuguese.json",
            paginate: {
                previous: '<i class="ri-arrow-left-s-line center-icon m-0"></i>',
                next: '<i class="ri-arrow-right-s-line center-icon m-0"></i>'
            }
        },
        bFilter: true,
        filter: true,
        ordering: false,
        displayStart: 20,
        lengthChange: false,
        dom: '<"d-flex mb-4" f><"nowrap table-responsive" t><"d-flex justify-content-between" ip>',
        ajax: url+'/aplication/stock/find',
        createdRow: function(row, data, dataIndex) {
            let id = data.id_vehicle;
            $(row).prop('id', id).data('id', id); 
        },
        rowCallback: function(row, data, index) {
            if (data.format_status == "Ativo") {
              $("td:eq(7)", row).addClass("text-success");
            } else if(data.format_status == "Inativo"){
                $("td:eq(7)", row).addClass("text-danger");
            } else {
                $("td:eq(7)", row).addClass("text-primary");
            }
            $("td:eq(4)", row).addClass("text-capitalize");
            $("td:eq(0)", row).html(`<span class="fw-medium">#${data.id_vehicle}</span>`);
        },
        
        columns: [
            { data: 'id_vehicle' },
            { data: 'brand_vehicle' },
            { data: 'model_vehicle' },
            { data: 'version_vehicle' },
            { data: 'type_vehicle' },
            { data: 'format_price_vehicle' },
            { data: 'format_date_create'},
            { 
                data: 'format_status',
                class:'statusCell',
            },
            {
                data: null,
                render: function (data, type, row) {
                  var status = data.status_vehicle;
                  var dataInfo = JSON.stringify(data);

                    
                  var editar = `<a class="dropdown-item" href="${url}/aplication/vehicle/edit/${data.id_vehicle}"><i class="ri-edit-line"></i> Editar</a>`;
                  var excluir = `<a class="dropdown-item"><i class="ri-delete-bin-7-line"></i> Excluir</a>`;
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
    var status = '';
    if(data.format_status == 'Ativo'){
        status = `<span class="badge text-bg-success text-white">${data.format_status}</span>`
    } else if(data.format_status == 'Vendido'){
        status = `<span class="badge text-bg-primary text-white">${data.format_status}</span>`
    } else {
        status = `<span class="badge text-bg-danger text-white">${data.format_status}</span>`
    }
    $('#titleView').html(`${data.brand_vehicle} - ${data.model_vehicle} ${data.version_vehicle}`)
    $('#contentView').html(`
        <ul class="list-group list-group-flush">
            <li class="list-group-item">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Tipo:</div>
                    <div class="col text-capitalize">${data.type_vehicle}</div>
                </div>
            </li>
            <li class="list-group-item">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Marca:</div>
                    <div class="col">${data.brand_vehicle}</div>
                </div>
            </li>
            <li class="list-group-item">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Modelo:</div>
                    <div class="col">${data.model_vehicle}</div>
                </div>
            </li>
            <li class="list-group-item">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Versão:</div>
                    <div class="col">${data.version_vehicle}</div>
                </div>
            </li>
            <li class="list-group-item">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Ano:</div>
                    <div class="col">${data.year_vehicle}</div>
                </div>
            </li>
            <li class="list-group-item">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Preço:</div>
                    <div class="col">${data.format_price_vehicle}</div>
                </div>
            </li>
            <li class="list-group-item">
                <div class="row row-cols-2">
                    <div class="col fw-bold">Status:</div>
                    <div class="col">
                        ${status}
                    </div>
                </div>
            </li>
        </ul>
    `)
}