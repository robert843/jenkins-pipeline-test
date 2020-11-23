# Git Changelog changelog

Changelog of Git Changelog.
{{#issues}}
  {{#isJira}}
  {{#hasLink}}
## {{name}} [{{issue}}]({{link}}) {{title}}
  {{/hasLink}}
  {{^hasLink}}
## {{name}} {{title}}
  {{/hasLink}}
  
 {{#commits}}
### {{authorName}} - {{commitTime}}
[{{hash}}](https://server/{{hash}})

{{{message}}}

 {{/commits}}
 {{#isJira}}
{{/issues}}
