$(document).ready(function () {
    
    getIdBrand();
});

function getIdBrand()
{
    $('[name=brand]').change(function (e) { 
        e.preventDefault();
        const idBrand = $(this).find('option:selected').attr('attr-id');
        
        getModels(idBrand)
    });
}

function getModels(idBrand)
{
  $.ajax({
    type: "GET",
    url: `${conectApiFipe}/cars/brands/${idBrand}/models`,
    dataType: "json",
    success: function (data) {
        
    }
  });
}