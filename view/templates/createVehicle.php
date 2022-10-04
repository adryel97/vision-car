<?php
$this->layout('_template');
?>
<h1 class="mb-5">Cadastrar veículo</h1>
<div class="cadastroVehicle">
    <div class="card border-0 border-top border-primary border-3">
        <div class="card-body p-5">
            <form class="row row-cols-2">
                <section class="col">
                    <div class="form-floating mb-4">
                        <select class="form-select" name="type" id="type" aria-label="Type label">
                            <option id-type="1" value="carro" attr-en="car">Carro</option>
                            <option id-type="2" value="moto" attr-en="motorcycle">Moto</option>
                            <option id-type="3" value="caminhao" attr-en="truck">Caminhão</option>
                        </select>
                        <label for="type">Selecione o tipo</label>
                    </div>
                    <div class="form-floating mb-4">
                        <select  class="form-select" name="brand" id="brand" aria-label="Floating label select example">
                            <option selected="selected">Marcas</option>
                            <?php
                            foreach ($brands as $brand):
                                ?>
                                <option value="<?=$brand['brand']?>" id-type="<?=$brand['id_type']?>" attr-id="<?=$brand['id_brand_fipe']?>"><?=$brand['brand']?></option>
                            <?php
                            endforeach;
?>
                        </select>
                        <label for="brands">Selecione a marca</label>
                    </div>
                    <div class="form-floating mb-4">
                        <select  class="form-select" disabled="disabled" name="model" id="model" aria-label="Floating label select example">
                            <option selected="selected">Modelos</option>
                        </select>
                        <label for="model">Selecione o modelo</label>
                    </div>
                    <div class="row row-cols-2">
                        <div class="col">
                            <div class="form-floating mb-4">
                                <select  class="form-select" name="engine" id="engine" aria-label="Floating label select example">
                                    <option selected="selected">Motores</option>
                                    <?php
                                    foreach ($engines as $engine):
                                        ?>
                                        <option value="<?=$engine['engine']?>" ><?=$engine['engine']?></option>
                                    <?php
                                    endforeach;
?>
                                </select>
                                <label for="model">Selecione o motor</label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" id="board" placeholder="board">
                                <label for="board">Placa do veículo</label>
                            </div>
                        </div>
                    </div>
                    <div class="row row-cols-2">
                        <div class="col">
                            <div class="form-floating mb-4">
                                <select class="form-select" name="anoModel" id="anoModel" aria-label="Ano model label">
                                    <option selected="selected">Ano modelo</option>
                                    <?php
                                        $ano = date('Y') + 1;
for ($i=1980; $i <= $ano; $i++) {?>
                                        <option value="<?=$i?>"><?=$i?></option>
                                        <?php } ?>
                                </select>
                                <label for="anoModel">Selecione o ano do modelo</label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-floating mb-4">
                                <select class="form-select" name="anoVersion" id="anoVersion" aria-label="Ano versao label">
                                    <option selected="selected">Ano Versão</option>
                                    <?php
                                        $ano = date('Y') + 1;
for ($i=1980; $i <= $ano; $i++) {?>
                                        <option value="<?=$i?>"><?=$i?></option>
                                        <?php } ?>
                                </select>
                                <label for="anoVersion">Selecione o ano da versão</label>
                            </div>
                        </div>
                    </div>
                        <div class="form-floating mb-4">
                            <select class="form-select" name="category" id="category" aria-label="category model label">
                                <option selected="selected">Categoria</option>
                                <option value="hatch">Hatch</option>
                                <option value="sedan">Sedan</option>
                                <option value="crossover">Crossover</option>
                                <option value="suv">Suv</option>
                                <option value="station wagons">Station Wagons</option>
                                <option value="picape">Picape</option>
                                <option value="subcompacto">Subcompacto</option>
                                <option value="furgão">Furgão</option>
                                <option value="conversivel">Conversivel</option>
                                <option value="esportivo">Esportivo</option>
                                <option value="coupe">Coupe</option>
                            </select>
                            <label for="category">Selecione o ano do modelo</label>
                        </div>
                        </div>
                        <div class="priceFipe">
                        <div class="card border-0 border-top border-bottom border-info border-3 shadow">
                            <div class="card-body">
                                <h5 class="card-title fw-semibold">Preço Fipe - <span class="modelcar"></span></h5> 
                                <div class="row row-cols-2 mt-4 contentFipe">

                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </section>
            </form>
        </div>
    </div>
</div>
<?php $this->start('js')?>
    <script src="<?=url();?>/js/app/appCreateVehicle.js?v=<?=time()?>"></script>
    <script>
        $(document).ready(function(){
            $("#board").inputmask({
                mask: "AAA9*99",
                definitions: {
                    '*': {
                        validator: "[0-9A-Za-z]",
                        casing: "upper"
                    }
                }
            });
        });
    </script>
<?php $this->end('js')?>