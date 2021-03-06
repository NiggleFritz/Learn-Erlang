-module(what_the_if). 
-compile(export_all).
heh_fine() ->
	if 1 =:= 1 ->
		works
	end,
	if 1 =:= 2; 1 =:= 1 ->
		works
	end,
	if 1 =:= 2, 1 =:= 1 ->
	        fails
	end.	
oh_god(N) ->
	if N =:= 2 -> might_succeed;
	   true -> always_does  %% This is the equivilant of if else in erlang... But not really ;)
        end.
help_me(People) ->
	Talk = if People == liberal -> "Climate change";
		  People == conservative -> "ITS MY GUN!!";
		  People == libretarian -> "Go away";
		  People == greenParty -> "Whats going on?";
		  true -> "Yeah I dont like politics either :P"
	       end,
  	{People, "says " ++ Talk ++ "!"}. 


		  
