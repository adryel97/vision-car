$(document).ready(function () {
    getType();
    getModels();
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