package org.exampleproject

import org.compass.core.engine.SearchEngineQueryParseException;
import org.exampleproject.Box;
import org.exampleproject.SecUser;
import org.exampleproject.User;
import org.springframework.security.access.annotation.Secured;

class BoxController {

	/**
	 * Dependency injection for the springSecurityService.
	 */
	def springSecurityService
	
	@Secured(['IS_AUTHENTICATED_REMEMBERED'])
    def index() {
		def user = lookupPerson();
		def boxes = user.boxes
		[boxes:boxes, userInstance:user]
	}
	
	@Secured(['IS_AUTHENTICATED_REMEMBERED'])
	def list() {
		def user = lookupPerson();
		def boxes = user.boxes
		[boxes:boxes, user:user]
	}
	
	@Secured(['IS_AUTHENTICATED_REMEMBERED'])
	def show(Long id) {
		def user = lookupPerson()
		def box = Box.findByIdAndAuthor(id, user)

		if (!box || box.author != user) {
            flash.message = "Box Not Found with that ID"
            redirect(action: "list")
            return
        }

		[user:user, boxInstance:box]
	}
	
	@Secured(['IS_AUTHENTICATED_FULLY'])
	def findUser(Long id) {
		def user = lookupPerson();
		def box = Box.findByIdAndAuthor(id, user)
		
		def myfriendships = Friendship.findAllByUserOrFriend(user, user)

		def friends_left = myfriendships.friend
		def friends_right = myfriendships.user

		//make the list distinct
		def group = (friends_left + friends_right) as Set

		if(!box){
			return
		}

		[friends: group, user:user]
	}

	@Secured(['IS_AUTHENTICATED_FULLY'])
	def create() {
		def box = new Box(params)
		[boxInstance:box]
	}
	
	@Secured(['IS_AUTHENTICATED_FULLY'])
	def save() {
		def user = lookupPerson()
		def boxInstance = new Box(params)
		
		boxInstance.author = user
		if( !user.addToBoxes(boxInstance).save(flush:true) ){
			 render(view: "create", model: [boxInsance: boxInstance])
            return
		}
		
		flash.message = "Created New Box"
        redirect(action: "show", id: boxInstance.id)
	}
	
	private lookupPerson() {
		springSecurityService.getCurrentUser()
	}
}
