package br.com.maisha.wind.finance.rule;

import org.springframework.orm.hibernate3.HibernateTemplate;

import br.com.maisha.terra.lang.ModelReference
import br.com.maisha.wind.controller.model.ExecutionContext



class LoadConta{

	def hibernateTemplate
	
	def execute = { ExecutionContext ctx ->
		def list = hibernateTemplate.find("from Conta c ")	
		ctx.setGridData(list);
		ctx
	}	
}