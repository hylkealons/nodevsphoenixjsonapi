# Comparison NODE vs Elixir
Testing a JSON API implementation Node vs Elixir in the simplest way: returning a string.

# Installation
Install elixir, phoenix, nodejs

`npm -i` in both folders

# Start Testing
Install siege (mac) or ab (linux)

Start nodejs app: `node server.js`
Start phoenix app: `MIX_ENV=prod mix compile && MIX_ENV=prod PORT=4001 mix phoenix.server` (Ignore the postgress error)

`siege http://localhost:4000/api -c 200 -t 20S # node expess` 

`siege http://localhost:4001/api -c 200 -t 20S # elixir phoenix`
