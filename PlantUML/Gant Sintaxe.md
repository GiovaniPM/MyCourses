**closed:**

![closed](diagram/closed.svg)

```
closed   ::= ( 'YYYY/MM/DD' ( to 'YYYY/MM/DD' )? is | 'dayofweek' are ) closed
```

referenced by:

* closed

**colored:**

![colored](diagram/colored.svg)

```
colored  ::= 'YYYY/MM/DD' ( to 'YYYY/MM/DD' are | is ) colored in 'color'
```

referenced by:

* colored
* task
* watching

**deleted:**

![deleted](diagram/deleted.svg)

```
deleted  ::= '[' 'taskname' ']' is deleted
```

referenced by:

* deleted

**divider:**

![divider](diagram/divider.svg)

```
divider  ::= '--' 'phasename' '--'
```

**flow:**

![flow](diagram/flow.svg)

```
flow     ::= '[' 'taskname' ']' starts at '[' 'taskname' "]'s" end with 'color' bold? link
```

**milestone:**

![milestone](diagram/milestone.svg)

```
milestone
         ::= '[' 'milestonename' ']' ( happens at '[' 'taskname' "]'s" end | displays on same row as '[' 'milestonename' ']' )
```

**task:**

![task](diagram/task.svg)

```
task     ::= '[' 'taskname' ']' ( ( on '{' 'resourcename' ':' 'percent' '}' )? ( lasts 'nn' days | starts 'YYYY/MM/DD' ) | ends 'YYYY/MM/DD' | links to '[[' 'link' ']]' | pauses on 'dayofweek' | is ( 'nn%' completed | colored in 'color' ) )
```

**watching:**

![watching](diagram/watching.svg)

```
watching ::= today is ( ( 'YYYY/MM/DD' | 'nn' days after starts ) and is )? colored in 'color'
```

**end:**

![end](diagram/end.svg)

```
end      ::=
```

referenced by:

* flow
* milestone

## 
![rr-2.1](diagram/rr-2.1.svg) <sup>generated by [RR - Railroad Diagram Generator][RR]</sup>

[RR]: https://www.bottlecaps.de/rr/ui