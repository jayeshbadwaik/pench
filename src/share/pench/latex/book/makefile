include document.mk
TEMPORARY_DIR=tmp
RELEASE_BUILD_DIR=${TEMPORARY_DIR}/release
DEBUG_BUILD_DIR=${TEMPORARY_DIR}/debug
VERBOSE_BUILD_DIR=${TEMPORARY_DIR}/verbose


ifndef VERBOSE
.SILENT:
endif

release:	${MAINFILE}.tex
	echo "Rendering ${MAINFILE}..."
	latexmk -bibtex -lualatex -interaction=nonstopmode \
		-logfilewarnings- -quiet \
		-outdir=${RELEASE_BUILD_DIR} -gg -cd \
		-auxdir=${RELEASE_BUILD_DIR} \
		${MAINFILE}.tex &> /dev/null
	cp ${RELEASE_BUILD_DIR}/${MAINFILE}.pdf ${MAINFILE}.pdf
	echo "${MAINFILE} rendered successfully."

debug:	${MAINFILE}.tex
	echo "Rendering ${MAINFILE}..."
	latexmk -bibtex -lualatex -interaction=nonstopmode \
		-logfilewarnings- -quiet -shell-escape \
		-outdir=${DEBUG_BUILD_DIR} -gg -cd \
		-auxdir=${DEBUG_BUILD_DIR} \
		${MAINFILE}.tex
	cp ${DEBUG_BUILD_DIR}/${MAINFILE}.pdf ${MAINFILE}.pdf
	echo "${MAINFILE} rendered successfully."

verbose:	${MAINFILE}.tex
	echo "Rendering ${MAINFILE}..."
	latexmk -bibtex -lualatex -interaction=nonstopmode \
		-logfilewarnings- -shell-escape -verbose \
		-outdir=${VERBOSE_BUILD_DIR} -gg -cd \
		-auxdir=${VERBOSE_BUILD_DIR} \
		${MAINFILE}.tex
	cp ${VERBOSE_BUILD_DIR}/${MAINFILE}.pdf ${MAINFILE}.pdf
	echo "${MAINFILE} rendered successfully."


clean:
	rm ${MAINFILE}.pdf

