package br.com.maisha.wind.finance.rule;

import br.com.maisha.wind.controller.model.ExecutionContext

class SaveLancamento{

	def hibernateTemplate
	
	def execute = { ExecutionContext ctx ->
		ctx.instance.save()
		"Lançamento realizado com sucesso".success(ctx)
		
		def list = hibernateTemplate.find("from Lancamento l");
		ctx.setGridData(list);
		ctx
	}
	
}