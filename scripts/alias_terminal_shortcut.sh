#!/usr/bin/env bash

HEADER='\033[0;31m'
BODY='\033[0;37m'

echo -e "${HEADER}\tShortcut:\t\tDescription:"
echo -e "${HEADER}\t=========\t\t============"
echo -e "${BODY}\tCtrl + l\t\tClear the screen"
echo -e "${BODY}\tCtrl + a\t\tGo to the beginning of the line (Home)"
echo -e "${BODY}\tCtrl + e\t\tGo to the End of the line (End)"
echo -e "${BODY}\tCtrl + e\t\tGo to the End of the line (End)"
echo -e "${BODY}\tCtrl + u\t\tCut the line before the cursor position."
echo -e "${BODY}\tCtrl + y\t\tPaste the line or text in the clipboard that was cut by Ctrl + u"
echo -e "${BODY}\tCtrl + k\t\tCut the line after the cursor position."
echo -e "${BODY}\tCtrl + w\t\tCut the Word before the cursor."
echo -e "${BODY}\tCtrl + t\t\tSwap the last two characters before the cursor."
echo -e "${BODY}\tAlt + t\t\t\tSwap the last two words before the cursor."
echo -e "${BODY}\tAlt + b\t\t\tMove backward one word (Esc + B)"
echo -e "${BODY}\tAlt + f\t\t\tMove forward one word (Esc + F)"
echo -e "${BODY}\tAlt + q\t\t\tClose tab"
echo -e "${BODY}\tAlt + t\t\t\tNew tab"
echo -e "${BODY}\tAlt + n\t\t\tOpen New terminal"
echo -e "${BODY}\tAlt + 1\t\t\tSwitch to tab 1"
echo -e "${BODY}\tAlt + 2\t\t\tSwitch to tab 2"
