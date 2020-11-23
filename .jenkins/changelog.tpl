{{#issues}}
   {{#hasTitle}}
     {{#hasLink}}
* [{{issue}}]({{link}}) {{title}}
     {{/hasLink}}
   {{/hasTitle}}

   {{#hasTitle}}
     {{^hasLink}}
* {{title}}
     {{/hasLink}}
   {{/hasTitle}}
{{/issues}}
