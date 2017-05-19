//  Write some awesome Swift code, or import libraries like "Foundation",
//  "Dispatch", or "Glibc"

struct Busket<T>{
	var fruit:[T]
}

extension Busket: SequenceType{
	typealias Generator=AnyGenerator<T>
	
	func generate() -> AnyGenerator<T> {
		var i=0
		return anyGenerator{
			return i >= self.fruit.count ? nil : self.fruit[i++]
		}
	}
	
}

struct Fruit{
	var name: String
	var id:Int
}

var busket=Busket(fruit:[Fruit(name:"banana", id: 1), Fruit(name: "pear", id: 2), Fruit(name: "apple", id: 3)])


for fru in busket{
	print("Name: \(fru.name), id: \(fru.id)")
}