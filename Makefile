test-n3:
	eye --nope --quiet --pass lib-rdfs.n3 t/data.ttl t/*.n3

test-n3s:
	eye --blogic --quiet lib-rdfs.n3 t/data.ttl t/*.n3s