PLUGIN_PATH=/usr/lib/rhythmbox/plugins/microblogger
DATA_PATH=/usr/share/rhythmbox/plugins/microblogger
install: upschema
	mkdir -p $(PLUGIN_PATH)
	mkdir -p $(DATA_PATH)
	cp microblogger.* oauth2/ $(PLUGIN_PATH) -Rf
	cp microblogger-prefs.ui $(DATA_PATH) -Rf
	
uninstall:
	rm -Rf $(PLUGIN_PATH) $(DATA_PATH) /usr/share/glib-2.0/schemas/ir.aliva.microblogger.gschema.xml
	glib-compile-schemas /usr/share/glib-2.0/schemas
	
upschema:
	cp ir.aliva.microblogger.gschema.xml /usr/share/glib-2.0/schemas 
	glib-compile-schemas /usr/share/glib-2.0/schemas 
