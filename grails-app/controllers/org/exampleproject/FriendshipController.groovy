package org.exampleproject

import org.springframework.security.access.annotation.Secured;

class FriendshipController {

	def springSecurityService
	
	@Secured(['IS_AUTHENTICATED_REMEMBERED'])
    def index() { }
	
	@Secured(['IS_AUTHENTICATED_FULLY'])
	def create() {
		[friendshipInstance: new Friendship(params)]
	}

	@Secured(['IS_AUTHENTICATED_FULLY'])	
	def save() {
		currentUser().addToUser(new Friendship(params)).save()
	}
	
	private currentUser() {
		springSecurityService.getCurrentUser()	
	}
}
