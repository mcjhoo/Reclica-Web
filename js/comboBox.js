/*
 * Essa função permite reutilização de código AJAX - apenas requisições GET
 */
function Ajax(url, destino) {
    /*
     * cria o objeto XMLHttpRequest, responsável pelas requisições assíncronas
     * referência: https://developer.mozilla.org/pt-BR/docs/Web/API/XMLHTTPRequest
     */
    var ajax = new XMLHttpRequest();

    // informa o endereço ao qual a requisição deve consultar
    ajax.open(url);

    // configura o objeto para completar o "destino" quando a requisição finalizar (em caso de sucesso) ou alertar erro na tela
    ajax.onreadystatechange = function() {
	if (this.status == 200 && this.readyState == 4) {

	    // só faz algum processamento se houver uma responsta não nula
	    if (this.responseText) {
		
		// recebe uma resposta no formato JSON. Processa-a
		var json=JSON.parse(this.responseText);
		
		// para cada valor no JSON, adiciona um option ao destino
		json.forEach(function(linha) {
		    var option=document.createElement('option');
		    option.value=linha.id;
		    option.innerText=linha.descr;
		destino.appendChild(option);
		});
		
	    } else {
		// alerta o usuário caso a opção de combobox não tenha nada
		alert("Não há resultado para essa consulta");
	    }
	} else {
	    alert('Houve um erro na requisição Ajax');
	}
    }

    // envia a requisição
    ajax.send();
}

/*
 * Essa função elimina opções de um combobox
 */
function limpaCombobox(combobox) {
    while (combobox.firstChild)
	combobox.removeChild(combobox.firstChild);
}

/*
 * Essa função é quem requisita um ajax para obter os dados necessários para completar os combobox
 */
function completaCombobox(comboboxAlterado, comboboxDestino, arg) {
    // obtem o elemento do combobox de destino dos dados
    var c=document.getElementById(comboboxDestino);

    // limpa-o
    limpaCombobox(c);

    // envia a requisição ajax
    Ajax('combobox.php'+arg+comboboxAlterado.value, c);
}

/*
 * Essa função controla o submit da página: impede o usuário de clicar em "pesquisar" caso ele não tenha selecionado cidade, bairro e empresa
 */
function processaCombobox() {
    var f = document.forms['UF_Cidade'];
    if (!f.CmbCidade.value || !f.CmbBairro.value || !f.CmbEmpresa.value) {
	alert("Você precisa selecionar uma cidade, um bairro e uma empresa para continuar");
	return false;
    } else
	return true;
}
