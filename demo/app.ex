include std/map.e
include mvc/app.e
include mvc/template.e
include mvc/server.e
include mvc/utils.e

constant SERVER_ADDR = getenv( "SERVER_ADDR", AS_STRING, "127.0.0.1" )
constant SERVER_PORT = getenv( "SERVER_PORT", AS_INTEGER, 5000 )

function index( object request )

	object response = map:new()
	map:nested_put( response, {"content","title"}, "Congratulations!" )
	map:nested_put( response, {"content","message"}, "If you can read this your Euphoria MVC application is running in Docker." )

	return render_template( "index.html", response )
end function
app:route( "/", "index" )

server:start( SERVER_ADDR, SERVER_PORT )
