download:
	wget https://raw.github.com/shapedbyregret/actionscript-3-obfuscator/master/obfuscator.py
clean:
	unlink obfuscator.py
obfuscate:
	for file in *.as;do python obfuscator.py $file;done
obfuscate-1:
	for file in */*.as;do python obfuscator.py $file;done
obfuscate-2:
        for file in */*/*.as;do python obfuscator.py $file;done
obfuscate-3:
        for file in */*/*/*.as;do python obfuscator.py $file;done
obfuscate-r: obfuscate obfuscate-1 obfuscate-2 obfuscate-3
all:download obfuscate-r clean
