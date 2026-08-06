.PHONY: smoke docs-check
docs-check:
	@test -f README.md && test -f LICENSE
	@test -f ARCHITECTURE.md && test -f THIRD_PARTY.md && test -f SECURITY.md && test -f CONTRACTS.md
	@test -f docs/linear-map.md
	@echo docs-check ok
smoke: docs-check
	@test -d components -o -f index.html
	@echo 'tailwind-component-pack smoke ok'
