/**
	Scribe.swift
 
	**Illustrating some buggy behavior in the Scribe Xcode plugin**

	Scribe seems to have some bugs parsing arguments that take closures
 
	- seealso: [Scribe Plugin Website](https://scribeplugin.com/)
 
 
 */
class TestClass {
	/**
	Scribe totally missed this argument
	*/
	func testFunc(block: () -> Void) {
		
	}
	
	/**
	 Caught `param` but missed `callback`
 
	 - parameter param: param description
	*/
	func anotherTestFunc(param: String, callback: () -> Void = {}) {
		
	}
	
	/**
	Got `param` but skipped `callback` and instead parsed `callback`'s `error` argument
	
	 - parameter param: param description
	 - parameter error: error description
	*/
	func errCallback(param: String, callback: (error: ErrorType) -> Void) {
		
	}
}
