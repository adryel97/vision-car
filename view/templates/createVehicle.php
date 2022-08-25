<?php
$this->layout('_template');
?>
<h1 class="mb-5">Cadastrar veículo</h1>
<div class="cadastroVehicle">
    <div class="card border-0">
        <div class="card-body p-5">
            <form class="row row-cols-2">
                <section class="col">
                    <div class="form-floating mb-4">
                        <select class="form-select" name="category" id="category" aria-label="Category label">
                            <option selected="selected">Categorias</option>
                            <option value="carro" attr-en="cars">Carro</option>
                            <option value="moto" attr-en="motorcycles">Moto</option>
                            <option value="caminhao" attr-en="trucks">Caminhao</option>
                        </select>
                        <label for="category">Selecione a categoria</label>
                    </div>
                    <div class="form-floating mb-4">
                        <select  class="form-select" name="brand" id="floatingSelect" aria-label="Floating label select example">
                            <option selected="selected">Marcas</option>
                            <?php
                            foreach ($brands as $brand):
                            ?>
                                <option value="<?=$brand['marca']?>" attr-id="<?=$brand['marca_id']?>"><?=$brand['marca']?></option>
                            <?php
                            endforeach;
                            ?>
                        </select>
                        <label for="floatingSelect">Selecione a marca</label>
                    </div>
                    <div class="form-floating mb-4">
                        <select  class="form-select" name="brand" id="floatingSelect" aria-label="Floating label select example">
                            <option selected="selected">Modelos</option>
                        </select>
                        <label for="floatingSelect">Selecione a marca</label>
                    </div>
                </section>
            </form>
        </div>
    </div>
</div>
<?php $this->start('js')?>
    <script src="<?=url();?>/js/apis/apiFipe.js?v=<?=time()?>"></script>
    <script src="<?=url();?>/js/app/appCreateVehicle.js?v=<?=time()?>"></script>
<?php $this->end('js')?>