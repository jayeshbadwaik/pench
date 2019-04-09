MAINFILE={{{TITLE}}}
BUILD_DIR=tmp/build
ifndef VERBOSE
.SILENT:
endif

all:	${MAINFILE}.tex
	echo "Rendering ${MAINFILE}"
	latexmk -lualatex -interaction=nonstopmode \
		-logfilewarnings- -quiet \
		-outdir=${BUILD_DIR} \
		-auxdir=${BUILD_DIR} \
		${MAINFILE}.tex > /dev/null 2> /dev/null
	cp ${BUILD_DIR}/${MAINFILE}.pdf ${MAINFILE}.pdf
	echo "${MAINFILE} Rendered..."

debug:	${MAINFILE}.tex
	echo "Rendering ${MAINFILE}..."
	latexmk -lualatex -interaction=nonstopmode \
		-logfilewarnings- -quiet \
		-outdir=${BUILD_DIR} -gg -cd \
		-auxdir=${BUILD_DIR} \
		${MAINFILE}.tex
	cp ${BUILD_DIR}/${MAINFILE}.pdf ${MAINFILE}.pdf
	echo "${MAINFILE} Rendered..."
