$(document).ready(function () {
    login();
});
function login()
{
    $('#formLogin').submit(function (e) { 
        e.preventDefault();
        var data = $(this).serialize();
        var action = $(this).attr('action');
        $.ajax({
            type: "POST",
            url: action,
            data: data,
            dataType: "json",
            success: function (data) {
                if(data.status == 'false'){
                    $.confirm({
                        title: 'Ops!',
                        content: 'E-mail ou senha incorreta.',
                        type: 'red',
                        typeAnimated: true,
                        buttons: {
                            tryAgain: {
                                text: 'Tente novamente',
                                btnClass: 'btn-red',
                                action: function(){
                                }
                            },
                        }
                    });
                } else {
                    window.location.href = data.status;
                }
            }
        });
    });
}