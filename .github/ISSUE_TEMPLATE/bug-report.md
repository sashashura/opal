---
name: Bug report
about: Create a report to help us improve
title: 'Bug: '
labels: bug
assignees: ''

---

**Describe the bug**
<!-- A clear and concise description of what the bug is.
Please clarify if it's a missing feature. -->

Opal version: …


**To Reproduce**

<!--
Steps to reproduce the behavior. 

You can contrasting it to Ruby's behavior:

```
$ opal -v -e "puts 123"
123
```

```
$ruby -v -e "puts 123"
```

or show an error in the compiled code:

```
$ opal -v -e "puts 123" -cEO
…
/* Generated by Opal 1.1.1 */
(function(Opal) {
  var self = Opal.top, $nesting = [], nil = Opal.nil, $$$ = Opal.$$$, $$ = Opal.$$;

  Opal.add_stubs(['$puts']);
  return self.$puts(123)
})(Opal);
…
```
-->