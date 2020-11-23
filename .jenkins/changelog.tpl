# Git Changelog changelog

Changelog of Git Changelog.
{{#tags}}
## {{name}}
 {{#issues}}
  {{#hasLink}}
### {{name}} [{{issue}}]({{link}}) {{title}}
  {{/hasLink}}
  {{^hasLink}}
### {{name}} {{title}}
  {{/hasLink}}
  {{#authors}}
* {{authorName}}
   {{#commits}}
[{{hash}}](https://server/{{hash}}) *{{commitTime}}*
{{{message}}}

   {{/commits}}

  {{/authors}}
 {{/issues}}
{{/tags}}
