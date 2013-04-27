moduleKeywords = ['extended', 'included']

class Module
  @extend: (obj) ->
    for key, value of obj when key not in moduleKeywords
       @[key] = value
      obj.extended?.apply(@)
      this

  @include: (obj) ->
    for key, value of obj when key not in moduleKeywords
       # Assign properties to the prototype
       @::[key] = value
      obj.included?.apply(@)
      this


classProperties = 
	find: (id) ->
	create: (attrs) ->
	
instanceProperties = 
  save: ->


class User extends Module
  @extend classProperties
  @include instanceProperties


#Usage:
user = User.find(1)

user = new User
user.save() 	