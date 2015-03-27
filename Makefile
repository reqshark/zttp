.PHONY: clean check perf bench full

ALL:
	npm i

check:
	npm t

clean:
	rm -fr build && rm -rf node_modules

#perf:
#	node perf/local_lat.js tcp://127.0.0.1:5555 1 100000& node perf/remote_lat.js tcp://127.0.0.1:5555 1 100000 && wait
#	node perf/local_thr.js tcp://127.0.0.1:5556 1 100000& node perf/remote_thr.js tcp://127.0.0.1:5556 1 100000 && wait

#bench:
#	node perf/local_lat.js tcp://127.0.0.1:5555 10 1000& node perf/remote_lat.js tcp://127.0.0.1:5555 10 1000 && wait
#	node perf/local_thr.js tcp://127.0.0.1:5556 10 100000& node perf/remote_thr.js tcp://127.0.0.1:5556 10 100000 && wait

full:
	npm i && npm t
