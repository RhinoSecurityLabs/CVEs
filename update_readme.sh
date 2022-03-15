cat > README.md <<- EOM
# Rhino CVE Proof-of-Concept Exploits
A collection of proof-of-concept exploit scripts written by the team at Rhino Security Labs for various CVEs.
EOM

for i in $(find -name 'README.md' | grep -v '\.\/README\.md' | grep -v '\./template\/README\.md' | sort -r);do 
	echo "* [$(cat $i | grep '^# CVE' | cut -d ' ' -f 2-)]($(echo $i | cut -d '/' -f 2)/)";
done >> README.md