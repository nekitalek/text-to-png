static:
	$(MAKE) -C app static

dynamic:
	$(MAKE) -C app dynamic
	
blob: 
	$(MAKE) -C app blob
		
clean:
	$(MAKE) -C app clean 

all: 
	$(MAKE) -C app all