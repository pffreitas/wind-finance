class SaveLancamento{

	def ctx
	def model
	def meta
	
	def execute(){
		model.save()
		"Lançamento realizado com sucesso".success()
		
		def list = model.select("from Lancamento l");
		ctx.setGridData(list);
	}
	
}