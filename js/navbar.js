$('.collapse__nav').click(function (e) { 
    e.preventDefault();
    var idCollapse = $(this).attr('data-collapse');
    $(idCollapse).slideToggle();
    $(`${idCollapse}-arrow`).toggleClass('upArrow');
});