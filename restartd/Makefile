#PREFIX is environment variable, but if it is not set, then set default value
ifeq ($(PREFIX),)
    PREFIX := /usr/local
endif

.PHONY: install
install: 
	install -d $(DESTDIR)$(PREFIX)/bin/
	install -m 755 restartd $(DESTDIR)$(PREFIX)/bin/
	install -m 644 restartd.service /etc/systemd/system/
	systemctl daemon-reload

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/restartd
	rm -f /etc/systemd/system/restartd.service
	systemctl daemon-reload