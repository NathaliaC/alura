var paciente {

	var tdpaciente = selecionaTdDoPaciente();

	nome : tdpaciente.tdNome.textContent, 
	peso : tdpaciente.tdPeso.textContent, 
	altura : tdpaciente.tdAltura.textContent, 
	diagnostico : tdpaciente.tdDiagnostico,
	imc : tdpaciente.tdImc

	CalculaIMC : function(){
		return this.peso / (this.altura * this.altura);
	}	
}

//Função para selecionar os elementos de um único paciente
function selecionaTdsDoPaciente(){

	var listaDePacientes = document.getElementsByClassName("paciente");

	for(var i=0; i <= listaDePacientes.length - 1; i++){

		var pacienteTRS = listaDePacientes[i]; 

		var tdNome = pacienteTRS.getElementsByClassName("info-nome")[0];
		var tdPeso = pacienteTRS.getElementsByClassName("info-peso")[0];
		var tdAltura = pacienteTRS.getElementsByClassName("info-altura")[0];
		var tdImc = pacienteTRS.getElementsByClassName("info-imc")[0];
		var tdDiagnostico = pacienteTRS.getElementsByClassName("info-diagnostico")[0];
	}

	return pacienteTRS;
}

//Realiza o Cálculo do IMC
function calculaIMC(){

var listaTrsPacientes = selecionaPaciente();

for(var posicaoAtual = 0; posicaoAtual <= listaTrsPacientes.length - 1; posicaoAtual++){

	var paciente = selecionaTdsDoPaciente(posicaoAtual);
	

	if (paciente.altura != 0 ){
		var resultado_imc = paciente.peso / (paciente.altura * paciente.altura);
		paciente.imc.textContent = resultado_imc;

		classificaImc(paciente,resultado_imc);

	}else{
		
		alert("Impossível de calcular seu IMC ");
	}
}

}

//Função para classificar IMC
function classificaImc(paciente, imc){
	
	if(imc < 19.1){

			paciente.diagnostico.textContent = "abaixo do peso";	

		}else if(imc > 19.1 && imc <= 25.8){

			paciente.diagnostico.textContent = "No peso normal";

		}else if(imc > 25.8 && imc <= 27.3){
			
			paciente.diagnostico.textContent = "Marginalmente acima do peso";

		}else if(imc > 27,3 && imc <= 32,3){

			paciente.diagnostico.textContent = "Acima do peso";

		}else{
			
			paciente.diagnostico.textContent = "Obeso, pare de Comer Oxe!!!";
		}

}