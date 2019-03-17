WAST_ROOT = ./spec/test/core
GEN_ROOT = ./generated
WAST_FILES = $(wildcard $(WAST_ROOT)/*.wast)
JSON_FILES = $(WAST_FILES:$(WAST_ROOT)/%.wast=$(GEN_ROOT)/%.json)

.PHONY: generate
generate: $(JSON_FILES)

$(GEN_ROOT)/%.json: $(WAST_ROOT)/%.wast
	echo $^ -> $@
	wast2json $^ -o $@
