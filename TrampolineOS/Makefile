PROJ_PATH="./projects"
TEMPLATE_PATH="./project_template"

name=$(shell date | tr -d '[:space:]')
new_project:
	@echo "Creating new project in $(PROJ_PATH)/$(name)"
	@mkdir $(PROJ_PATH)/$(name)

	@echo "Copying content from $(TEMPLATE_PATH) into $(PROJ_PATH)/$(name)"
	@cp -r $(TEMPLATE_PATH)/* $(PROJ_PATH)/$(name)/
	@cp -r $(TEMPLATE_PATH)/.vscode/ $(PROJ_PATH)/$(name)/
	@echo "Done."

test:
	@echo "$(name)"