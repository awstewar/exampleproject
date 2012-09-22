package org.exampleproject

import org.compass.core.engine.SearchEngineQueryParseException;
import org.springframework.security.access.annotation.Secured;

class UserController {

	def springSecurityService
	
    def index() { 
	}
	
	@Secured(['IS_AUTHENTICATED_FULLY'])
	def findUsers() {
		if (!params.q?.trim()) {
			return [:]
		}
		try {
			return [searchResults: User.search(params.q, params)]
		} catch (SearchEngineQueryParseException ex) {
			return [parseException: true]
		}
	}
	
	private currentUser() {
		springSecurityService.getCurrentUser()
	}
}
