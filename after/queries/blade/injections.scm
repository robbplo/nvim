((text) @injection.content
    (#set! injection.language "php")
    (#set! injection.combined))
((php_only) @injection.content
   (#set! injection.language php_only))
((parameter) @injection.content
    (#set! injection.language php_only))

