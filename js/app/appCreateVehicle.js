

$(document).ready(function () {
    $('.priceFipe').hide()
    getType();
    getModels();
    getPriceFipe();
    selectState();
    /* It's a function that gets the year of the selected model. */
});

/**
 * It gets the value of the selected option in the select element with the id of type and then passes
 * that value to the getBrands function.
 */
    function getType()
    {
      $('#type').change(function (e) { 
          e.preventDefault();
          var type = $(this).find('option:selected').attr('attr-en');
          getBrands(type);
      });
    }
    
/* It's a function that gets the brands of the selected type. */
    function getBrands(type)
    {
      $.ajax({
        type: "GET",
        url: url+`/aplication/fipe/brand/${type}`,
        dataType: "json",
        success: function (data) {
          htmlMontageBrand(data)
        }
      });
    }

/**
 * It's a function that gets the models of the selected brand.
 */
    function getModels()
    {
      $('#brand').change(function (e) { 
        e.preventDefault();
        var type = $(this).find('option:selected').attr('id-type');
        var brandid = $(this).find('option:selected').attr('attr-id');
        var removeDisabled = $('#model').removeAttr('disabled');
        $.ajax({
          type: "GET",
          url: `${url}/aplication/fipe/models/${type}/${brandid}`,
          dataType: "json",
          success: function (data) {
            htmlMontageModel(data)
          }
        });
      });
    }

/**
 * It receives a JSON object, iterates through it, and appends the data to a select element
 * @param data - is the data that comes from the server
 */
    function htmlMontageBrand(data)
    {
        var brandSelector = $('#brand')
        brandSelector.empty();
        brandSelector.html(`<option selected="selected">Marcas</option>`);
        $.each(data, function (index, brands) { 
          brandSelector.append(`
        <option value="${brands.brand}" id-type="${brands.id_type}" attr-id="${brands.id_brand_fipe}">${brands.brand}</option>
        `);
      });
    }

/**
 * It takes the data from the AJAX call and populates the model dropdown with the data
 * @param data - the data returned from the server
 */
    function htmlMontageModel(data)
    {
        var modelSelector = $('#model')
        modelSelector.empty();
        modelSelector.html(`<option selected="selected">Modelos</option>`);
        $.each(data, function (index, models) { 
          modelSelector.append(`
        <option value="${models.modelo}" attr-id="${models.fipe_cod}">${models.modelo}</option>
        `);
      });
    }

function getPriceFipe()
{
  $('#model').change(function (e) { 
    e.preventDefault();
    var year = $(this).val();
    var codFipe = $('#model').find('option:selected').attr('attr-id');
    $('#codeFipe').val(codFipe);
    $.ajax({
      type: "GET",
      url: "https://brasilapi.com.br/api/fipe/preco/v1/"+codFipe,
      dataType: "json",
      success: function (data) {
        if(data){
          $('#anoModel').change(function () {
            var yearSelect = $(this).val();
            const vehicleFipe = data.filter((arr) => {
              return arr.anoModelo == yearSelect;
            });
            console.log('RESULT:')
            //console.log(vehicleFipe);
            var priceFipe = vehicleFipe[0].valor.replace(/[^0-9,]*/g, '').replace(',', '.');
            var yearFipe = vehicleFipe[0].anoModelo;
            console.log(priceFipe); 
            //console.log(currency(priceFipe)); 
            $('#codeFipe').val(codFipe);
            $('#priceFipe').val(priceFipe);
            $('#yearFipe').val(yearFipe);
          });

          $('.contentFipe').empty();
          $('.priceFipe').show()
          $('.modelcar').text(data[0].modelo);
          $.each(data, function (index, value) {
            $('.contentFipe').append(`
            <div class="col pb-3 pt-3 border-bottom border-2 lines">
               <p class="card-text fw-medium mb-0">
               <span class="text-muted">Ano Modelo:</span> 
               ${value.anoModelo == 32000 ? 'Novo/0Km' : value.anoModelo}
               </p>
               <p class="card-text fw-medium">
               <span class="text-muted">Preço:</span> ${value.valor}
               </p>
           </div>
            `);
         });

         var par = false
         var countLines = $('.lines').length;
          if(countLines % 2 === 0) {
              par = true;
          }
          if(par == true){
              $('.lines:nth-last-child(-n+2)').removeClass('border-bottom border-2')
          } else {
              $('.lines:last-child').removeClass('border-bottom border-2')
          }
        } else {
          $('.priceFipe').hide()
        }
      }
    });
  });
}

function selectState(){
  $('#state').change(function (e) { 
    e.preventDefault();
    var state = $(this).val();
    listCity(state);
  });
}

function listCity(state)
{
  $.ajax({
    type: "GET",
    url: `https://brasilapi.com.br/api/ibge/municipios/v1/${state}?providers=dados-abertos-br,gov,wikipedia`,
    dataType: "json",
    success: function (data) {
      $('#city').empty();
      $('#city').removeAttr("disabled");
      $('#city').html(`<option>Cidades</option>`);
      $.each(data, function (index, value) { 
        $('#city').append(`
          <option value="${value.nome}">${value.nome}</option>
        `); 
      });
    }
  });
}


function createInput(btnFile) 
{
      var fileCount = btnFile.files.length;
      var quantCard = $('.card--photos').length;
      console.log(quantCard);
      if(fileCount > 0){
        $('.painel--photos').append(`
          <div class="card--photos border border-2 rounded position-relative">
            <label class="w-100 h-100">
                <input type="file" name="file_${quantCard + 1}" id="file_${quantCard + 1}" hidden class="photos" onChange="createInput(this)">
            </label>
            <span style="
            position: absolute;
            right: 5px;
            top: 0px;" 
            onClick="removeInput(this)" 
            class="text-danger">
            <i class="ri-close-circle-fill" style="font-size: 1.3rem;"></i>
            </span>
          </div>
        `);
      }
}

function removeInput(selector)
{
  $(selector).closest('div').remove()
}