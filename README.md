# lib-rdfs

# Synopsis

```(turtle)
@prefix : <https://example.org/ns#> .
@prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .

:Alice :loves :Bob .

:loves rdfs:subPropertyOf :likes .
:likes 
    rdfs:domain :Person ;
    rdfs:range :Person .

:Person rdfs:subClassOf :Human .
```

entails

```
:Alice a :Person .
:Bob a :Person .
:Alice a :Human .
:Bob a :Human .
:Alice :likes :Bob .
```

# Usage

Add the `lib-rdfs.n3` to your N3 project and run the eye reasoner. E.g.

```
eye --nope --quiet --pass lib-rdfs.n3 your-file.n3
```

# Vocabulary

- [rdfs:domain](https://www.w3.org/TR/rdf-schema/#ch_domain)
- [rdfs:range](https://www.w3.org/TR/rdf-schema/#ch_range)
- [rdfs:subClassOf](https://www.w3.org/TR/rdf-schema/#ch_subclassof)
- [rdfs:subPropertyOf](https://www.w3.org/TR/rdf-schema/#ch_subpropertyof)

# Dependencies

NONE