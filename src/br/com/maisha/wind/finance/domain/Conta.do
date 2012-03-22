package br.com.maisha.wind.finance.domain

domain_object Lancamento "Lancamento"{

	String nome "Nome"{
		x: 1
		y: 1
		colspan: 2
		required:true
		width: 340
	}
	
	String tipo "Tipo"{
		x: 1
		y: 2
		presentation_type: combo
		validValues: ["Credito", "Debito"]
		width: 120
	}
	
	Double saldo "Saldo"{
		x: 1
		y: 3
		required: true
		width: 120
		mask: "#,###.#0"
	}
	
	operation groovy SaveLancamento "Salvar"{
		file: br/com/maisha/wind/finance/rule/SaveConta.groovy
	}

}