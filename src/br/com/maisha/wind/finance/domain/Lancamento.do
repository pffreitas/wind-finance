package br.com.maisha.wind.finance.domain

import br.com.maisha.wind.finance.domain.Conta

domain_object Lancamento "Lancamento"{

	String descricao "Descricao"{
		x: 1
		y: 1
		colspan: 2
		required:true
		width: 340
	}
	
	String tag "Tag"{
		x: 1
		y: 2
		required: true
		width: 120
	}
	
	Double valor "Valor"{
		x: 1
		y: 3
		required: true
		width: 120
		mask: "#,###.#0"
	}
	
	Date dataRealizacao "Data"{
		x: 2
		y: 3
		required: true
		width: 120
		presentation_type: date
	}
	

	
	Conta conta "Conta"{
		x:1
		y:4
		presentation_type: related using ["nome"]
		width: 100
		colspan: 2
		manytoone: fk_conta
		content: LoadConta
	}
	
	Date dataLancamento "Data Lancamento"{
		visibleInEdition: false
		visibleInGrid: false
		value: ${currDate}
	}
	
	operation groovy LoadConta "LoadConta"{
		file: br.com.maisha.wind.finance.rule.LoadConta
		validate: false
		visible: false
	}
	
	operation groovy SaveLancamento "Salvar"{
		file: br.com.maisha.wind.finance.rule.SaveLancamento
	}

}