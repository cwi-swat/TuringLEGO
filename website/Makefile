STYLUS_BIN=node_modules/.bin/stylus
COFFEE_BIN=node_modules/.bin/coffee
JADE_BIN=node_modules/.bin/jade
MARKDOWN_JS=node_modules/markdown-js/README.md
JADE=node_modules/jade/jade.md
PACKAGES=$(MARKDOWN_JS) $(JADE) 

#PAGES= about.jade home.jade professional.jade publications.jade research.jade
PAGES=

#site:  index.html styles/main.css scripts/main.js
site:  index.html styles/main.css

index.html: $(PAGES) index.jade $(PACKAGES) $(JADE_BIN)
	$(JADE_BIN) index.jade	

%.css: %.styl $(STYLUS_BIN)
	$(STYLUS_BIN) $<

%.js: %.coffee $(COFFEE_BIN)
	$(COFFEE_BIN) -c $<

$(STYLUS_BIN):
	npm install stylus
	
$(COFFEE_BIN):
	npm install coffee-script

$(JADE_BIN): $(JADE)

$(JADE):
	npm install jade

$(MARKDOWN_JS):
	npm install markdown-js

deploy: site
	rsync -rv --include-from=rsync.includes . rascal-site:www.legoturingmachine.org/
# DO NOT DELETE
