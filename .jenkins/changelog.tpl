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
#### [{{issue}}]({{link}}) {{title}} {{name}} || {{description}}
hasLinkedIssues: {{hasLinkedIssues}}
isGitHub: {{isGitHub}}
isGitLab: {{isGitLab}}
isJira: {{isJira}}
isCustom: {{isCustom}}
isNoIssue: {{isNoIssue}}

## commits:
 {{#commits}}
### {{authorName}} - {{commitTime}}
[{{hash}}](https://server/{{hash}})

{{{message}}}

 {{/commits}}
 {{/isJira}}
{{/issues}}
