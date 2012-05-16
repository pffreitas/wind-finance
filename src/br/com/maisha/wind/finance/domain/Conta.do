package br.com.maisha.wind.finance.domain

import br.com.maisha.wind.finance.domain.Lancamento

domain_object Conta "Conta"{

	open_filtering:true

	String nome "Nome"{
		x: 1
		y: 1
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
	
	Lancamento lancamento "Lancamento"{
		x: 1
		y: 5
		visibleInEdition: false
		visibleInGrid: false
		onetomany: conta
	}
	
	operation groovy SaveConta "Salvar"{
		file: br.com.maisha.wind.finance.rule.SaveConta
	}

	operation groovy LoadConta "Filtrar"{
		file: br.com.maisha.wind.finance.rule.LoadConta
		is_filter:true
		validate:false
	}

}