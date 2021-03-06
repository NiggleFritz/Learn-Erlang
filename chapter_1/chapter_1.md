%Intro
%Variable cant be changed
y = 2
x = y = 3
x = 2 + 3
x = 5

%So this code wlil throw errors
x = 5 + 1
x = x
5 = 6

%That makes functions with the same parameters always returns the same result
x = add_two_to(3) = 5
x = 5

%But in the face of some real world applications
x = today() = 2009/10/22
%Wait a day
x = today() = 2009/10/23
x = x
2009/10/22 = 2009/10/23
%because the date changes daily this equation is mutable. But when real world objects are mutable then we follow that trend.

%Erlang is also a operating system with a power VM
%Check http://erlang.org/doc/ for help!

%Starting out
%Erlang expressions end with a period and whitespace. 
2 + 15. 
49 * 100. 
1892 - 1472. 
5 / 2.
5 div 2. 
5 rem 2. 
$^Mathmatical operators^

%You can use multiple operators in one expression
(50 * 100) - 4999. 
-(50 * 100 - 4999). 
-50 * (100 - 4999). 

%Expressing inteegers in bases besides ten (Base#Value)
2#101010. 
8#0677. 
16#AE. 
%I cant think of anyways to use this :P

$Variables
One. 
%Not bound
One = 1. 
Un = Uno = One = 1. 
Two = One + One. 
Two = Two + 1.
%Error cause Two = 2 and 2 + 1 cant be 2
two = 2. 
%^Variables need Capital letters to start. Without the cap they are atoms.
47 = 45 + 2. 
47 = 45 + 3.  
%When using the = Erlang auto binds the right hand side value to the variable on the left if it isnt assigned or if it matches the value in the variable already.  _ = 14 + 3.  %^This returns 17
% . 
%^This will still hold nothing as _ wont store a value.

$Atoms start with Caps and are essentially consts with the name as a value.
atom. 
atoms_rule. 
atoms_rule@erlang. 
'Atoms can be cheated!'. 
atom = 'atom'. 
%Atoms should have ' around them if they dont start with a cap or if they have anything that isnt alphanumeric
%reserved keywords after, and, andalso, band, begin, bnot, bor, bsl, bsr, bxor, case, catch, cond, div, end, fun, if, let, not, of, or, orelse, query, receive, rem, try, when, xor.
 
%Booleans not gonna go into to much detail, its booleans uygs. True, False, not hard :P
true and false.
%false
false or true. 
%true
true xor false. 
%true
not false. 
%true
not (true and true). 
%false

%Equality operators are still simple just a lil different syntax
5 =:= 5. 
%Equal too.
1 =:= 0.
%false
1 =/= 0. 
%True. Not equal to
5 =:= 5.0. 
5 == 5.0
%True. NOT strict comparison operator
4 < 10. 
%True. Less then
10 > 4. 
%True. Greater than.
3 =< 20
%True.Equal or less than.
3 >= 25
%False Equal or more than
%There are no real boolean values in erlang. True and False are atoms that mean nothing besides  true and false.
0 == false. 
%false
1 < false. 
%true

%Tuple syntax and use
%Populate variable with data
X = 10, Y = 4. 
%4

%Add those variablel to another variable as a tuple
Point = {X,Y}. 
%{10,4}

%use f() to clear variables and another example
%Populate the point variable with a tuple
Point = {4,5}. 

%Assigning the items in the tuple to their own variables.
{X,Y} = Point. 
%X now = 4 and Y = 5

%Using the unbound _
```
{X,_} = Point. 
%{4,5} 
```
```
%for tuples to be unpacked into variables in the manner they must ahve the same amount of elements
{_,_} = {4,5}. 
%{4,5} works fine!
{_,_} = {4,5,6}. 
%Will throw an error Because there are less wildcard variable then elements to place
```

%Tuples can be used when working with single values with multiple factors.
Temp = 23.213
%But there are many scales for temp. Whats this one? This is an example of a tagged tuple.
PresTemp = {celsius, 23.213}
{kelvin, T} = PresTemp. 
%Will throw and error because the celsius atom doesnt match the kelvin atom. Even though T is unbound. 

$LISTS
$Lists can contain anything and are said to be the most used data structure in Erlang.
[1, 2, 3, {numbers, [4,5,6]}, 5.34, atom]. 
%This list contains, Ints, Floats, and atoms.

%Can someone explain to me how this actaully works?
[97, 98, 99].
%"abc" ? this is what the book says but why? How do those numbers convert to letters

%Using the -- and ++ operators to glue together and remove elements of a list
[1,2,3] ++ [4,5]. 
%[1,2,3,4,5]
[1,2,3,4,5] -- [1,2,3].
%[4,5]
[2,4,2] -- [2,4]. 
%[2]
[2,4,2] -- [2,4,2]. 
[]

%The first element of a list is the head, the rest is the tail. These are BIF's (built in methods) that deal with them
hd([1,2,3,4]). 
%[1]
tl([1,2,3,4]). 
%[2,3,4]

%Adding a head to a string is pretty simple
List = [2,3,4]. 
%[2,3,4]
NewList = [1|List]. 
%[1,2,3,4]

%You can store the tail and head in different variable for easy access later
[Head|Tail] = NewList. 
%[1,2,3,4]
Head. 
%1
Tail. 
%[2,3,4]
[NewHead|NewTail] = Tail. 
%[2,3,4]
NewHead. 
%2

%This is harder to read and write then standard methodsA
[1 | []].
%[1]
[2 | [1 | []]]. 
%[2,1]
[3 | [2 | [1 | []] ] ]. 
%[3,2,1]
