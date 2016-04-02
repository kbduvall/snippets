/**
	Scribe.swift
 
	**Illustrating some buggy behavior in the Scribe Xcode plugin**

	Scribe seems to have some bugs parsing arguments in static or class methods
 
	- seealso: [Scribe Plugin Website](https://scribeplugin.com/)
 
 
 */
public class TestClass {
	/**
	Scribe did this correctly
	
	- parameter param: String
	*/
	func works(param: String) {
		/// Do something
	}
	
	/**
	Scribe misses
	*/
	class func classMethod(param: String) {
		/// Do Something
	}
	
	/**
	Scribe misses
	*/
	static func staticMethod(param: String) {
		/// Do something
	}
	
	/**
	Scribe got this one
	
	- parameter param: String
	*/
	public func methodWithAccessDecleration(param: String) {
		/// Do something
	}
	
	/**
	Scribe got this one
	
	 - parameter param: String
	*/
	internal func internalMethod(param: String) {
		/// Do something
	}
	
	/**
	Scribe got this one
	
	 - parameter param: <#param description#>
	*/
	private func privateMethod(param: String) {
		/// Do something
	}
	
	/**
	Scribe misses
	*/
	public class func publicClassMethod(param: String) {
		/// Do something
	}
	
	/**
	Scribe misses
	*/
	class public func anotherPublicClassMethod(param: String) {
		/// Do something
	}
	
	/**
	Scribe misses
	*/
	public static func publicStaticMethod(param: String) {
		/// Do something
	}
	
	/**
	Scribe misses
	*/
	static public func anotherPublicStaticMethod(param: String) {
		/// Do something
	}
}
