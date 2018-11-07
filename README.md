                                            Information Retrieval and Organisation
                                                        Dell Zhang
                                            
## Edit Distance
The (minimum) edit distance between two strings s1 and s2 is the **minimum** number of basic **operations** to convert s1 to s2.

# Levenshtein-Distance
􏰀 Levenshtein distance: the admissible basic operations are: insert, delete, and replace
􏰀 Levenshtein distance dog→do: 1 (**deletion**)
􏰀 Levenshtein distance cat→cart: 1 (**insertion**)
􏰀 Levenshtein distance cat→cut: 1 (**replacement**)
􏰀 Levenshtein distance cat→act: 2
(2 replacements or 1 insertion and 1 deletion)
### Computing Distance
![Image of Levenshtein's final Matrix](http://www.georgestragand.com/images/ed4.jpg)
[Image Source!](http://www.georgestragand.com/levenshtein.html)

 **Each cell will contain**
 
     the (cheapest) cost of getting
     from the string on the left-hand side to the string on the right-hand side
     
􏰀**We know the costs for**
 ##### the uppermost row and the leftmost column:
􏰀        we have to get from “” to **GEORDIE** by inserting characters

􏰀        we have to get from **GEORGE** to “” by deleting characters

![Image of Levenshtein's initial matrix](http://www.georgestragand.com/images/ed1.jpg)

(C) | (B)
--- | ---
(A) | *

__For other cells, take the minimum of costs__

􏰀 **Coming from (A):**
􏰀 add 1 to cost in (A) — (insertion)

􏰀 **Coming from (B):**
􏰀 add 1 to cost in (B) — (deletion)

􏰀 **Coming from (C):**
􏰀 if characters in row and column are equal, copy cost from (c)
􏰀 otherwise,
 add 1 to cost in (C) — (replacement)
 
 
