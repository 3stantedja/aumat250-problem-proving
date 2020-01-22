# Scratch work for Write-up 3
Statement: there exists a function _f_ such that for all functions _g_ the derivative of _f_ is _g_.
```latex
\((\exists f)(\forall g) P(f,g) \)
```

## Non-negated version
Assume a function _f(x)_ (say x^2). Then let's find an example where the statement fails.

One of the solution for the derivative of _f(x)_ would be _2x_, and that would be in the set of functions _g(x)_. However that is only one of the functions in the set, not _all_ functions. Therefore there's at least one function in _g_ that does not fit the description.

Say... _3x_. This is not a derivative of _f_, therefore the predicate (thereby the statement) is false.

## Negated version
```latex
\((\forall f) (\exists g) \neg P(f,g)\)
```

Translated statement: for all functions in _f_ there exists a function _g_ that is not the derivative of the function in _f_.

Assume _f_ is a non-specific function that is continuous. Now, the property of being differentiable is dependent on the domain of the function, as functions such as `|x^2|` will be continuous but non-differentiable at _x_ = 0. 