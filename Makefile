obj-m :=task.o

KDIR :=/lib/modules/$(shell uname -r)/build
PWD :=$(shell pwd)
EXTRA_CFLAGS := -I/usr/lib/realtime/include -I/usr/include/ -ffast-math -mhard-float
default:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules

clean:
	rm -f *.o *.ko *~
