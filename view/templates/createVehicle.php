<?php
$this->layout('_template');
?>
<h1 class="mb-5">Cadastrar veículo</h1>
<form class="testeForm">
    <textarea rows="5" class="w-100"></textarea>
</form>
<div>
    <p>Mensagem</p>
</div>
<?php $this->start('js')?>
<script>
    $(document).ready(function () {
        conectaWebSocket();
    });

    function conectaWebSocket()
    {
        // Criando uma nova WebSocket.
        var socket = new WebSocket('ws://www.visioncar.local/aplication/create/vehicle');
        // segurando os erros que ocorrerem.
        socket.onerror = function(error) {
        console.log('erros do WebSocket: ' + error);
        };

        // Mostrando a mensagem de Conectado quando o WebSocket for aberto.
        socket.onopen = function(event) {
        console.log('Conectado com: ' + event.currentTarget.URL);
        console.log('open');
        };
    }
</script>
<?php $this->end('js')?>