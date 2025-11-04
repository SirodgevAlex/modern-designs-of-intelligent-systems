TARGET = course_work_proposal
TEX_FILE = $(TARGET).tex
PDF_FILE = $(TARGET).pdf

.PHONY: pdf clean

# Собирает PDF из .tex файла
pdf: $(PDF_FILE)

$(PDF_FILE): $(TEX_FILE)
	# Запускаем pdflatex дважды, чтобы все ссылки (если они появятся) correctly обновились
	pdflatex $(TEX_FILE)
	pdflatex $(TEX_FILE)

# Очищает рабочую директорию от временных файлов и сгенерированного PDF
clean:
	rm -f *.aux *.log *.out $(PDF_FILE)
