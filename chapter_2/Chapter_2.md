%Modules
%Creating our first super simple useless module
-module(pointless). 
-export([add/2, Goodbye/0, fuck_off_and_add_2/1]). 
```
add(A,B) ->
  A = B.   
```
% io:format/1 is standard text output function
```
Goodbye() ->
  io:format("Fuck off world~n").
```
```
fuck_off_and_add_two(X) ->
  Goodbye()
  add(X,2).
```
 
 %You can request info about a module with the module_info(). function
 ```
 pointless:module_info(). 
```
