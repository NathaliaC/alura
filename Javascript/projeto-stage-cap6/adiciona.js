
var botao = document.querySelector("#adicionar-paciente"); 

botao.addEventListener("click", function(){

	event.preventDefault();

	var campoNome = document.querySelector("#campo-nome");
	var campoSobrenome = document.querySelector("#campo-sobrenome");
	var campoPeso = document.querySelector("#campo-peso");
	var campoAltura = document.querySelector("#campo-altura");


	var novoPaciente = "<tr class='paciente'>"+
            "<td class='info-nome'>" + campoNome.value + "</td>"+
            "<td class='info-nome'>" + campoSobrenome.value + "</td>"+
            "<td class='info-peso'>" + campoPeso.value + "</td>"+
            "<td class='info-altura'>" + campoAltura.value + "</td>"+
            "<td class='info-imc'></td>"+
         "</tr>";

	var todosPacientes = document.querySelector("table");

	todosPacientes.innerHTML += novoPaciente;

	limpaCamposPaciente();	


});

function limpaCamposPaciente(){

	var tdsForm = document.getElementsByTagName("fieldSet"); 

	for(var i = 0; i <= tdsForm.length - 1; i ++ ){
			
		tdsForm[i].querySelector('input').value = "";

	}
}


