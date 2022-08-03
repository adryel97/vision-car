<script src="<?=url()?>/node_modules/jquery/dist/jquery.min.js"></script>
<script src="<?=url()?>/node_modules/bootstrap/dist/js/bootstrap.js"></script>
<script src="<?=url()?>/node_modules/@popperjs/core/dist/umd/popper.min.js"></script>
<script src="<?=url()?>/node_modules/bootstrap/dist/js/bootstrap.bundle.js"></script>
<script src="<?=url()?>/node_modules/tippy.js/dist/tippy-bundle.umd.js"></script>
<script src="<?=url();?>/node_modules/overlayscrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="<?=url()?>/js/navbar.js"></script>
<script>
tippy('.links', {
  placement: 'right-end'
});
$(document).ready(function () {
  var page = $('#list_items').attr('page');
    $(page).removeClass('text-dark');
    $(page).addClass('text-primary');
});
</script>