NAMESPACE  ?= default
REPOSITORY ?= quay.io/steigr/jira-operator
PREFIX     ?= jira

all: release
	@true
release:
	./generate-and-install-operator.sh "$(NAMESPACE)" "$(REPOSITORY)" "$(PREFIX)"

logo:
	curl -L https://wac-cdn.atlassian.com/dam/jcr:e0cedee5-a180-40ad-b7c3-a66d6e60f483/jira-app-adg3.svg -o logo.svg
	qlmanage -t -s 40 -o . logo.svg
	base64 -b0 < logo.svg.png > logo.png.b64
	rm logo.svg logo.svg.png
