[
 
 { "keys": ["enter"], "command": "noop", "context":
  [
   { "key": "auto_complete_visible" },
   { "key": "setting.auto_complete_commit_on_tab", "operand": false }
  ]
 },
 {
  "keys": ["tab"],
  "command": "move",
  "args": {"by": "lines", "forward": true},
  "context": [{"key": "auto_complete_visible"}]
 },
 {
  "keys": ["shift+tab"],
  "command": "move",
  "args": {"by": "lines", "forward": false},
  "context": [{"key": "auto_complete_visible"}]
 },
 { 
  "keys": ["tab"], "command": "noop", "args": {"mini": true, "default": "\t"},
  "context":
  [
   { "key": "auto_complete_visible", "operand": false },
   { "key": "selection_empty", "operator": "equal", "operand": true, "match_all": true },
   { "key": "setting.tab_completion", "operator": "equal", "operand": true },
   { "key": "preceding_text", "operator": "regex_match", "operand": ".*\\w", "match_all": true },
  ]
 },
 { "keys": ["tab"], "command": "indent" },
 { "keys": ["shift+tab"], "command": "unindent" },

 {
  "keys": ["ctrl"],
  "command": "emmet_expand_abbreviation",
  "context": [{ "key": "selector",
   "operator": "equal", 
  "operand": "source.html, source.htm" }]
 },
 { "keys": ["ctrl"], 
  "command": "commit_completion", 
  "context": [
   { "key": "auto_complete_visible" },
   { "key": "setting.auto_complete_commit_on_tab", "operand": false },
   { "key": "selector",
    "operator": "not_equal", 
   "operand": "source.html, source.htm" },
  ]
 },
 { 
  "keys": ["ctrl+shift"],
  "command": "beautify_ruby", 
  "context": { "key": "selector",
   "operator": "equal", 
  "operand": "source.rb, source.ruby" }

 },
 {
  "keys": ["ctrl+shift"],
  "command": "reindent", 
  "args": {
   "single_line": false
  },
  "context": { "key": "selector",
   "operator": "not_equal", 
  "operand": "source.rb, source.ruby" }
 },
]
