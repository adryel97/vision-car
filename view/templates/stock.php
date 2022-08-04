<?php
$this->layout('_template');
?>
<?php  $this->start('css'); ?>
    <link rel="stylesheet" href="<?=url();?>/node_modules/datatables.net-bs5/css/dataTables.bootstrap5.min.css">
<?php $this->end('css'); ?>

<h1 class="mb-5">Estoque</h1>

<div class="card p-5 border-0 border-top border-3 shadow border-primary">
    <table id="example" class="table" style="width:100%">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Marca</th>
                    <th>Modelo</th>
                    <th>Versao</th>
                    <th>Tipo</th>
                    <th>Valor</th>
                    <th>Data de entrada</th>
                    <th>Status</th>
                    <th>
                        Ação
                        <span class="info" data-tippy-content="A venda do produto é habilidatada quando o mesmo estiver ATIVO.">
                            <i class="ri-question-line"></i>
                        </span>
                    </th>
                </tr>  
            </thead>
    </table>
</div>
<div class="modal fade" id="toviewModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content border-0 rounded">
      <div class="modal-header  bg-light rounded-top">
        <h5 class="modal-title" id="titleView"></h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body" id="contentView">
        
      </div>
      <div class="modal-footer bg-light rounded-bottom">
        <button type="button" class="btn btn-secondary p-2 text-white" data-bs-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div>

<?php  $this->start('js'); ?>
    <script src="<?=url();?>/node_modules/datatables.net/js/jquery.dataTables.js"></script>
    <script src="<?=url();?>/node_modules/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
    <script src="<?=url();?>/js/app/appStock.js?v=<?=time()?>"></script>
    <script>
        tippy('.info', {
            placement: 'top'
        });
    </script>
<?php $this->end('js'); ?>