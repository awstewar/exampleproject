package org.exampleproject

class Friendship {

	Boolean accepted
	Date dateCreated
	
	static belongsTo = [user: User, friend: User]
	
    static constraints = {
    }
}
