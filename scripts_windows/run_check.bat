@ECHO OFF
java -version 1>log.txt 2>&1
type log.txt
echo.

IF NOT EXIST ./htx/workflows/text_position_retriever/text_position_retriever_1/l10n/l10nTextPositionRetriever1WorkflowConsole.properties (
    COLOR 0C
    echo The package wasn't extracted properly, so parts of the software won't run. Please use a better unzip program like 7zip (http://www.7-zip.org) in order to avoid the DOS/Windows path limit of 260 characters (also known as "Error 0x80010135: Path too long").
    COLOR 07
    echo.
)

pause
