# Build the static files.
build: node_modules index.html index.css $(shell find src)
	@node --harmony bin/build

# Install node modules with npm.
node_modules: package.json
	@npm install
	@touch node_modules

# Start the server.
serve: node_modules
	@node --harmony bin/serve

# Phony targets.
.PHONY: deploy
.PHONY: serve