data NestedList a = Elem a | List [NestedList a]

flatten (List []) = []
flatten (Elem a) = [a]
flatten (List (x:xs)) = flatten x ++ flatten (List xs)