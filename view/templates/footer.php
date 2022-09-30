
<!--<script src="<?=url()?>/node_modules/bootstrap/dist/js/bootstrap.js"></script>-->
<script src="<?=url()?>/node_modules/@popperjs/core/dist/umd/popper.js"></script>
<script src="<?=url()?>/node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="<?=url()?>/node_modules/tippy.js/dist/tippy-bundle.umd.js"></script>
<script src="<?=url()?>/node_modules/jquery/dist/jquery.min.js"></script>
<script src="<?=url();?>/node_modules/overlayscrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="<?=url();?>/node_modules/inputmask/dist/jquery.inputmask.min.js"></script>
<script src="<?=url()?>/js/navbar.js"></script>
<script>
var url = 'http://'+window.location.host;
tippy('.links', {
  placement: 'right-end'
});
$(document).ready(function () {
  var page = $('#list_items').attr('page');
    $(page).removeClass('text-dark');
    $(page).addClass('text-primary');
});
</script>