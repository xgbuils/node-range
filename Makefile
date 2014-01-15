test: fizzbuzz.js
	-node fizzbuzz.js &
	-sleep 2
	-curl http://localhost:8124
	-lsof -i tcp:8124 | awk 'NR!=1 {print $$2}' | xargs kill
