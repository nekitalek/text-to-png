FLAGS_BLOB=-fno-stack-protector -fno-exceptions -nostdlib -pie -fPIE -fPIC -w -e main -D_BLOB_
SOURCES_LOADER=../elfloader/elf_loader.c ../elfloader/main.c ../elfloader/wheelc/list.c
BINS=../app-static ../app-dynamic ../app-blob ../blob.bin

static:
	gcc -c -Wall -O -I../libpng -I../freetype/include Main.c
	gcc -static -Wall Main.o \
	../libpng/libpng.a ../zlib/libz.a ../freetype/install/lib/libfreetype.a \
	-lm -o ../app-static

dynamic:
	gcc -I../freetype/include -I../libpng -D_DYNAMIC_ Main.c -lm -ldl -o ../app-dynamic

blob: 
	gcc $(SOURCES_LOADER) -lm -ldl -o ../app-blob
	gcc Main.c -I../freetype/include -I../libpng ../freetype/libfreetype.a ../libpng/libpng.a ../zlib/libz.a -lm $(FLAGS_BLOB) -o ../blob.bin	

clean:
	rm -f *.o
	rm -f $(BINS)

all: clean static dynamic blob
