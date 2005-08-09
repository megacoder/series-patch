PREFIX	=/opt
BINDIR	=${PREFIX}/bin

all:	series-patch

install: series-patch
	install -d ${BINDIR}
	install -c -m 0755 series-patch ${BINDIR}/

uninstall:
	${RM} ${BINDIR}/series-patch

check:	series-patch series
	./series-patch -n ${PWD}/series
