package br.com.maisha.wind.finance.rule;

import br.com.maisha.wind.controller.model.ExecutionContext;

class SaveConta{

	
	
	def execute(ExecutionContext ctx){
		ctx.instance.save()
		"Conta incluida com sucesso".success(ctx)
		
		def list = ctx.instance.list("from Conta c");
		ctx.setGridData(list);
		
		ctx
	}
	
}