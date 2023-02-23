.PHONY: echo
echo:
	go build ./cmd/maelstrom-echo
	cd maelstrom && ./maelstrom test -w echo --bin ${PWD}/maelstrom-echo --node-count 1 --time-limit 10

.PHONY: unique-ids
unique-ids:
	go build ./cmd/maelstrom-unique-ids
	cd maelstrom && ./maelstrom test -w unique-ids --bin ${PWD}/maelstrom-unique-ids --time-limit 30 --rate 1000 --node-count 3 --availability total --nemesis partition
