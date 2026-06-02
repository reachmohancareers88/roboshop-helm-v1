install:
	@helm upgrade --install $(component_name) ./ -f values/$(component_name).yml

all:
	@for component_name in cart catalogue frontend orders payment ratings shipping user; do  helm upgrade --install $$component_name ./ -f values/$$component_name.yml ; done

