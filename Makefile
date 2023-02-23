.PHONY: echo
echo:
	go build ./cmd/maelstrom-echo
	cd maelstrom && ./maelstrom test -w echo --bin ${PWD}/maelstrom-echo --node-count 1 --time-limit 10
