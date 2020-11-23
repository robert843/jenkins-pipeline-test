# Git Changelog changelog1

Changelog of Git Changelog.
{{#issues}}
   {{#hasTitle}}
     {{#hasLink}}
#### [{{issue}}]({{link}}) {{title}}
     {{/hasLink}}
   {{/hasTitle}}

   {{#hasTitle}}
     {{^hasLink}}
#### {{title}}
     {{/hasLink}}
   {{/hasTitle}}

   {{^hasTitle}}
    {{^hasIssue}}
These commits has no issue.
    {{/hasIssue}}
   {{/hasTitle}}
  
  
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
{{/issues}}
