-module(ice_fishing). 
-compile(export_all). 
lake(Temperature) ->
	case Temperature of
		{celsius, N} when N >= -25, N =< -10 ->
			"You should'nt freeze your nipples off, or fall through the ice";
		{kelvin, N} when N >= 248.15, N =< 263.15 ->
			"You shouldn't freeze your glutius maximus off, or fall through the frozen dihydrogen monoxide";
		{farenheit, N} when N >= -13, N =< 14 ->
		        "LETS GET SOME GRENADES AND GO ICE FISHING!";
		_ -> "Lets just go for a rip eh bud?"
	end. 
lakef({celsius, N}) when N >= -25, N =< -10 ->
	"You shouldn't freeze your butt off, or fall through the ice";
lakef({kelvin, N}) when N >= 248.15, N =< 263.15 ->
	"You shouldn't freeze your glutious maximus, or fall through the frozen dihydrogen monoxide";
lakef({farenheit, N}) when N >= -13, N =< 14 ->
	"LETS GET SOME GRENADES AND GO FISHGING!";
lakef(_) ->
	"Lets just go out for a rip eh?".
		
		
		
		
		
		
		
		
		
	
