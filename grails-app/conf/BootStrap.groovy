import org.exampleproject.SecUser;
import org.exampleproject.SecUserSecRole;
import org.exampleproject.SecRole;
import org.exampleproject.User;
import org.exampleproject.Friendship;


class BootStrap {

	def springSecurityService
	
    def init = { servletContext ->
		createUserData();
    }
	
    def destroy = {
    }
	
	private def createUserData() 
	{
		def userRole = new SecRole(authority: 'ROLE_USER').save()
		def andy = new User(realName:"Andrew Stewart", username:'awstewar@gmail.com', password: "password", enabled:true).save(failOnError:true)
		
		SecUserSecRole.create( andy, userRole, true)
		
		def mark = new User(realName:"Mark Fylling", username:"mf@gmail.com", password:"password", enabled:true).save(failOnError:true)
		SecUserSecRole.create( mark, userRole, true)

		def matt = new User(realName:"Matt Hofheimer", username:"mh@gmail.com", password:"password", enabled:true).save(failOnError:true)
		SecUserSecRole.create( matt, userRole, true)

		//def friendship = new Friendship(user:andy, friend:mark, accepted:true).save();

		andy.addToFriendships(friend:mark, accepted:true).save();


		/*
		[jeff: 'Jeff Brown', graeme: 'Graeme Rocher', burt: 'Burt Beckwith', peter: 'Peter Ledbrook'].each { userName, realName ->
			def user = new SecUser(username: userName, realName: realName, password: password, enabled: true).save()
			SecUserSecRole.create user, userRole, true
		}
		
		
		
		log.error "UserCount: " + SecUser.count()
		*/
	}
}
