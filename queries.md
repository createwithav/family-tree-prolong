# Sample Prolog Queries

Here are sample queries you can run against `family_tree.pl` to test the relationships.

## 1. Basic Parent Queries
**Query:**
```prolog
?- parent(john, X).
```
**Meaning:** Who are the children of John?
**Expected Output:**
```
X = james ;
X = lisa.
```

## 2. Grandparent Relationship
**Query:**
```prolog
?- grandparent(john, X).
```
**Meaning:** Who are the grandchildren of John?
**Expected Output:**
```
X = jade ;
X = jack ;
X = tom.
```

**Query:**
```prolog
?- grandparent(X, jade).
```
**Meaning:** Who are the grandparents of Jade?
**Expected Output:**
```
X = john ;
X = mary.
```

## 3. Sibling Relationship
**Query:**
```prolog
?- sibling(james, lisa).
```
**Meaning:** Are James and Lisa siblings?
**Expected Output:**
```
true.
```

**Query:**
```prolog
?- sibling(james, X).
```
**Meaning:** Who are the siblings of James?
**Expected Output:**
```
X = lisa.
```

## 4. Cousin Relationship
**Query:**
```prolog
?- cousin(jade, tom).
```
**Meaning:** Are Jade and Tom cousins?
**Expected Output:**
```
true.
```

**Query:**
```prolog
?- cousin(jade, X).
```
**Meaning:** Who are the cousins of Jade?
**Expected Output:**
```
X = tom.
```

## 5. Descendant (Recursive) Relationship
**Query:**
```prolog
?- descendant(X, john).
```
**Meaning:** Who are all the descendants of John?
**Expected Output:**
```
X = james ;
X = lisa ;
X = jade ;
X = jack ;
X = tom.
```

**Query:**
```prolog
?- descendant(jade, john).
```
**Meaning:** Is Jade a descendant of John?
**Expected Output:**
```
true.
```
