#
#
#


CWIID_STATIC_LIB = ${HOME}/code/cwiid/libcwiid/libcwiid.a
CWIID_INCLUDE = ${HOME}/code/cwiid/libcwiid

LIB=-lbluetooth -lpthread -lrt

wiid: wiid.o wii_input.o wii_acc.o ${CWIID_STATIC_LIB}
	${CC} -o $@ $^ ${LIB}

%.o: %.c
	${CC} -c -o $@ $^ -I . -I ${CWIID_INCLUDE}

clean:
	rm -rf *.o wiid
