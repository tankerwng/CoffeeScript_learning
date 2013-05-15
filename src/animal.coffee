class Animal
  constructor: (name) -> 
  	@name = name
  price: 5

  sell: => 
    console.log("Give me #{@price} shillings") 

  @find: (name) ->



class Parrot extends Animal
  constructor: ->
     super("Parrot")

  dead: ->
    not @alive()


Animal::rip = true

animal = new Animal("Parrot")
animal.sell

console.log("Animal is a #{animal.name}")

parrot = new Parrot "Macaw"

console.log("This parrot is no more") if parrot.rip
