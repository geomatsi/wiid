#
#
#


CWIID_STATIC_LIB = ${HOME}/code/cwiid/libcwiid/libcwiid.a
CWIID_INCLUDE = ${HOME}/code/cwiid/libcwiid

LIB=-lbluetooth -lpthread -lrt

all: wiid test_acc

wiid: wiid.o wii_input.o wii_acc.o ${CWIID_STATIC_LIB}
	${CC} -o $@ $^ ${LIB}

test_acc: test_acc.o
	${CC} -o $@ $^

%.o: %.c
	${CC} -c -o $@ $^ -I . -I ${CWIID_INCLUDE}

clean:
	rm -rf *.o wiid test_acc
