datatype tree = empty | node of int * tree * tree;

fun insert empty x = node (x, empty, empty)
	|insert (node(d, l, r)) x = if x < d then node(d, insert l x, r)
					else if x > d then node(d, l, insert r x)
					else node(d, l, r);

fun member(x, empty) = false
	|member(x, node(d, l, r)) = if d = x then true
					else if d > x then member (x, l)
					else member(x, r);
 
