resume-en.pdf: resume-en.yaml venv 
	source venv/bin/activate && rendercv render $< -pdf $@

venv:
	python3 -m venv venv
	source venv/bin/activate && pip install -r requirements.txt

clean:
	rm -f resume-en.pdf

dist-clean: clean
	rm -rf venv classic markdown rendercv_output

.PHONY: clean dist-clean