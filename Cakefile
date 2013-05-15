fs = require 'fs'

{print} = require 'sys'
{exec} = require 'child_process'

build = (callback) ->
	coffee = exec ('coffee -c -o lib src')
	coffee.stderr.on 'data', (data) ->
		process.stderr.write data.toString()
	coffee.stdout.on 'data', (data) ->
		print data.toString()
	coffee.on 'exit', (code) ->
	   callback?() if code is 0	

task 'build', 'Build lib/ from src/', ->
	build()


task 'watch', 'Watch src/ for changes', ->
	coffee = exec ('coffee -w -c -o lib src')
	coffee.stderr.on 'data', (data) ->
		process.stderr.write data.toString()
	coffee.stdout.on 'data', (data) ->
		print data.toString()


task 'open', 'Open index.html', ->
	#First open, then watch
	exec('open index.html')
	invoke 'watch'

option '-o', '--output [DIR]', 'output dir'
task 'build2', 'Build lib/ from src/', ->
	#Now we have access to a 'options' object
	coffee = exec("coffee -c -o #{option.output or 'lib'} src")
	coffee.stderr.on 'data', (data) ->
		process.stderr.write data.toString()
	coffee.stdout.on 'data', (data) ->
		print data.toString()
	coffee.on 'exit', (code) ->
	   callback?() if code is 0	
