NAMESPACE=cedvan
CONTAINER=mysql

# MENU
all: help
help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "    -- Latest"
	@echo "    1.  make build     - Build $(CONTAINER) container latest"
	@echo "    2.  make test      - Start $(CONTAINER) container latest"
	@echo ""

build:
	@echo "Building $(CONTAINER) latest"
	@docker build --tag=$(NAMESPACE)/$(CONTAINER):latest .

test:
	@echo "Test $(CONTAINER) latest"
	@docker run --name $(NAMESPACE)-$(CONTAINER) -d $(NAMESPACE)/$(CONTAINER):latest