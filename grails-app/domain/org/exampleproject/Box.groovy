package org.exampleproject

class Box {

	String name

	static hasOne = [author: User]

	static belongsTo = User

	static hasMany = [friends: User]

    static constraints = {
		name blank: false
	}
}
