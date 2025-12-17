TARGET = thesis-template-3-pz
TEX_FILE = $(TARGET).tex
PDF_FILE = $(TARGET).pdf

.PHONY: pdf clean

# Собирает PDF из .tex файла
pdf: $(PDF_FILE)

$(PDF_FILE): $(TEX_FILE)
	# Запускаем pdflatex дважды, чтобы все ссылки (если они появятся) correctly обновились
	xelatex $(TEX_FILE)
	xelatex $(TEX_FILE)

# Очищает рабочую директорию от временных файлов и сгенерированного PDF
clean:
	rm -f *.aux *.log *.out $(PDF_FILE)
