package org.exampleproject

class User extends SecUser {
	
	static searchable = true;
	
	String realName
	
	static hasMany = [friendships: Friendship, boxes: Box]
	static mappedBy = [friendships:'user', boxes:'author']
	
    static constraints = {
    }
}
