// ===========================================================================
// Purpose:     wxStyledTextCtrl library
// Author:      J Winwood, John Labenski
// Created:     14/11/2001
// Copyright:   (c) 2001-2002 Lomtick Software. All rights reserved.
// Licence:     wxWidgets licence
// wxWidgets:   Updated to 2.8.12
// ===========================================================================


// NOTE: This file is mostly copied from wxWidget's stc.h header
// to make updating it easier, the comments help diff follow along better.

#include "wx/stc/stc.h"

//----------------------------------------------------------------------
// STC constants generated section {{{

#define wxSTC_INVALID_POSITION

// Define start of Scintilla messages to be greater than all Windows edit (EM_*) messages
// as many EM_ messages can be used although that use is deprecated.
#define wxSTC_START
#define wxSTC_OPTIONAL_START
#define wxSTC_LEXER_START
#define wxSTC_WS_INVISIBLE
#define wxSTC_WS_VISIBLEALWAYS
#define wxSTC_WS_VISIBLEAFTERINDENT
#define wxSTC_EOL_CRLF
#define wxSTC_EOL_CR
#define wxSTC_EOL_LF

// The SC_CP_UTF8 value can be used to enter Unicode mode.
// This is the same value as CP_UTF8 in Windows
#define wxSTC_CP_UTF8

// The SC_CP_DBCS value can be used to indicate a DBCS mode for GTK+.
// #define wxSTC_CP_DBCS - removed in 2.9.5
#define wxSTC_MARKER_MAX
#define wxSTC_MARK_CIRCLE
#define wxSTC_MARK_ROUNDRECT
#define wxSTC_MARK_ARROW
#define wxSTC_MARK_SMALLRECT
#define wxSTC_MARK_SHORTARROW
#define wxSTC_MARK_EMPTY
#define wxSTC_MARK_ARROWDOWN
#define wxSTC_MARK_MINUS
#define wxSTC_MARK_PLUS

// Shapes used for outlining column.
#define wxSTC_MARK_VLINE
#define wxSTC_MARK_LCORNER
#define wxSTC_MARK_TCORNER
#define wxSTC_MARK_BOXPLUS
#define wxSTC_MARK_BOXPLUSCONNECTED
#define wxSTC_MARK_BOXMINUS
#define wxSTC_MARK_BOXMINUSCONNECTED
#define wxSTC_MARK_LCORNERCURVE
#define wxSTC_MARK_TCORNERCURVE
#define wxSTC_MARK_CIRCLEPLUS
#define wxSTC_MARK_CIRCLEPLUSCONNECTED
#define wxSTC_MARK_CIRCLEMINUS
#define wxSTC_MARK_CIRCLEMINUSCONNECTED

// Invisible mark that only sets the line background color.
#define wxSTC_MARK_BACKGROUND
#define wxSTC_MARK_DOTDOTDOT
#define wxSTC_MARK_ARROWS
#define wxSTC_MARK_PIXMAP
#define wxSTC_MARK_FULLRECT
#if %wxchkver_2_9_2
#define wxSTC_MARK_LEFTRECT
#define wxSTC_MARK_AVAILABLE
#define wxSTC_MARK_UNDERLINE
#endif //%wxchkver_2_9_2
%wxchkver_2_9_5 #define wxSTC_MARK_RGBAIMAGE
#define wxSTC_MARK_CHARACTER

// Markers used for outlining column.
#define wxSTC_MARKNUM_FOLDEREND
#define wxSTC_MARKNUM_FOLDEROPENMID
#define wxSTC_MARKNUM_FOLDERMIDTAIL
#define wxSTC_MARKNUM_FOLDERTAIL
#define wxSTC_MARKNUM_FOLDERSUB
#define wxSTC_MARKNUM_FOLDER
#define wxSTC_MARKNUM_FOLDEROPEN
#define wxSTC_MASK_FOLDERS
#define wxSTC_MARGIN_SYMBOL
#define wxSTC_MARGIN_NUMBER
%wxchkver_2_8_12 #define wxSTC_MARGIN_BACK
%wxchkver_2_8_12 #define wxSTC_MARGIN_FORE
%wxchkver_2_9_2  #define wxSTC_MARGIN_TEXT
%wxchkver_2_9_2  #define wxSTC_MARGIN_RTEXT

// Styles in range 32..37 are predefined for parts of the UI and are not used as normal styles.
// Styles 38 and 39 are for future use.
#define wxSTC_STYLE_DEFAULT
#define wxSTC_STYLE_LINENUMBER
#define wxSTC_STYLE_BRACELIGHT
#define wxSTC_STYLE_BRACEBAD
#define wxSTC_STYLE_CONTROLCHAR
#define wxSTC_STYLE_INDENTGUIDE
%wxchkver_2_8_12 #define wxSTC_STYLE_CALLTIP
#define wxSTC_STYLE_LASTPREDEFINED
#define wxSTC_STYLE_MAX

// Character set identifiers are used in StyleSetCharacterSet.
// The values are the same as the Windows *_CHARSET values.
#define wxSTC_CHARSET_ANSI
#define wxSTC_CHARSET_DEFAULT
#define wxSTC_CHARSET_BALTIC
#define wxSTC_CHARSET_CHINESEBIG5
#define wxSTC_CHARSET_EASTEUROPE
#define wxSTC_CHARSET_GB2312
#define wxSTC_CHARSET_GREEK
#define wxSTC_CHARSET_HANGUL
#define wxSTC_CHARSET_MAC
#define wxSTC_CHARSET_OEM
#define wxSTC_CHARSET_RUSSIAN
#define wxSTC_CHARSET_CYRILLIC
#define wxSTC_CHARSET_SHIFTJIS
#define wxSTC_CHARSET_SYMBOL
#define wxSTC_CHARSET_TURKISH
#define wxSTC_CHARSET_JOHAB
#define wxSTC_CHARSET_HEBREW
#define wxSTC_CHARSET_ARABIC
#define wxSTC_CHARSET_VIETNAMESE
#define wxSTC_CHARSET_THAI
#define wxSTC_CHARSET_8859_15
#define wxSTC_CASE_MIXED
#define wxSTC_CASE_UPPER
#define wxSTC_CASE_LOWER
#if %wxchkver_2_9_5
#define wxSTC_FONT_SIZE_MULTIPLIER
#define wxSTC_WEIGHT_NORMAL
#define wxSTC_WEIGHT_SEMIBOLD
#define wxSTC_WEIGHT_BOLD
#endif // %wxchkver_2_9_5

// Indicator style enumeration and some constants
#define wxSTC_INDIC_PLAIN
#define wxSTC_INDIC_SQUIGGLE
#define wxSTC_INDIC_TT
#define wxSTC_INDIC_DIAGONAL
#define wxSTC_INDIC_STRIKE
#define wxSTC_INDIC_HIDDEN
#define wxSTC_INDIC_BOX
%wxchkver_2_8_12 #define wxSTC_INDIC_ROUNDBOX
#if %wxchkver_2_9_5
#define wxSTC_INDIC_STRAIGHTBOX
#define wxSTC_INDIC_DASH
#define wxSTC_INDIC_DOTS
#define wxSTC_INDIC_SQUIGGLELOW
#define wxSTC_INDIC_DOTBOX
#define wxSTC_INDIC_MAX
#define wxSTC_INDIC_CONTAINER
#endif //%wxchkver_2_9_5
#define wxSTC_INDIC0_MASK
#define wxSTC_INDIC1_MASK
#define wxSTC_INDIC2_MASK
#define wxSTC_INDICS_MASK
#if %wxchkver_2_9_5
#define wxSTC_IV_NONE
#define wxSTC_IV_REAL
#define wxSTC_IV_LOOKFORWARD
#define wxSTC_IV_LOOKBOTH
#endif //%wxchkver_2_9_5

// PrintColourMode - use same colours as screen.
#define wxSTC_PRINT_NORMAL

// PrintColourMode - invert the light value of each style for printing.
#define wxSTC_PRINT_INVERTLIGHT

// PrintColourMode - force black text on white background for printing.
#define wxSTC_PRINT_BLACKONWHITE

// PrintColourMode - text stays coloured, but all background is forced to be white for printing.
#define wxSTC_PRINT_COLOURONWHITE

// PrintColourMode - only the default-background is forced to be white for printing.
#define wxSTC_PRINT_COLOURONWHITEDEFAULTBG
#define wxSTC_FIND_WHOLEWORD
#define wxSTC_FIND_MATCHCASE
#define wxSTC_FIND_WORDSTART
#define wxSTC_FIND_REGEXP
#define wxSTC_FIND_POSIX
#define wxSTC_FOLDLEVELBASE
#define wxSTC_FOLDLEVELWHITEFLAG
#define wxSTC_FOLDLEVELHEADERFLAG
!%wxchkver_2_9_2 #define wxSTC_FOLDLEVELBOXHEADERFLAG
!%wxchkver_2_9_2 #define wxSTC_FOLDLEVELBOXFOOTERFLAG
!%wxchkver_2_9_2 #define wxSTC_FOLDLEVELCONTRACTED
!%wxchkver_2_9_2 #define wxSTC_FOLDLEVELUNINDENT
#define wxSTC_FOLDLEVELNUMBERMASK
#define wxSTC_FOLDFLAG_LINEBEFORE_EXPANDED
#define wxSTC_FOLDFLAG_LINEBEFORE_CONTRACTED
#define wxSTC_FOLDFLAG_LINEAFTER_EXPANDED
#define wxSTC_FOLDFLAG_LINEAFTER_CONTRACTED
#define wxSTC_FOLDFLAG_LEVELNUMBERS
!%wxchkver_2_9_2 #define wxSTC_FOLDFLAG_BOX
#define wxSTC_TIME_FOREVER
#define wxSTC_WRAP_NONE
#define wxSTC_WRAP_WORD
#define wxSTC_WRAP_CHAR
#define wxSTC_WRAPVISUALFLAG_NONE
#define wxSTC_WRAPVISUALFLAG_END
#define wxSTC_WRAPVISUALFLAG_START
%wxchkver_2_9_5 #define wxSTC_WRAPVISUALFLAG_MARGIN
#define wxSTC_WRAPVISUALFLAGLOC_DEFAULT
#define wxSTC_WRAPVISUALFLAGLOC_END_BY_TEXT
#define wxSTC_WRAPVISUALFLAGLOC_START_BY_TEXT
%wxchkver_2_9_5 #define wxSTC_WRAPINDENT_FIXED
%wxchkver_2_9_5 #define wxSTC_WRAPINDENT_SAME
%wxchkver_2_9_5 #define wxSTC_WRAPINDENT_INDENT
#define wxSTC_CACHE_NONE
#define wxSTC_CACHE_CARET
#define wxSTC_CACHE_PAGE
#define wxSTC_CACHE_DOCUMENT

// Control font anti-aliasing.
#if %wxchkver_2_9_5
#define wxSTC_EFF_QUALITY_MASK
#define wxSTC_EFF_QUALITY_DEFAULT
#define wxSTC_EFF_QUALITY_NON_ANTIALIASED
#define wxSTC_EFF_QUALITY_ANTIALIASED
#define wxSTC_EFF_QUALITY_LCD_OPTIMIZED
#define wxSTC_MULTIPASTE_ONCE
#define wxSTC_MULTIPASTE_EACH
#endif // %wxchkver_2_9_5
#define wxSTC_EDGE_NONE
#define wxSTC_EDGE_LINE
#define wxSTC_EDGE_BACKGROUND
%wxchkver_2_9_5 #define wxSTC_STATUS_OK
%wxchkver_2_9_5 #define wxSTC_STATUS_FAILURE
%wxchkver_2_9_5 #define wxSTC_STATUS_BADALLOC
#define wxSTC_CURSORNORMAL
%wxchkver_2_9_5 #define wxSTC_CURSORARROW
#define wxSTC_CURSORWAIT
%wxchkver_2_9_5 #define wxSTC_CURSORREVERSEARROW

// Constants for use with SetVisiblePolicy, similar to SetCaretPolicy.
#define wxSTC_VISIBLE_SLOP
#define wxSTC_VISIBLE_STRICT

// Caret policy, used by SetXCaretPolicy and SetYCaretPolicy.
// If CARET_SLOP is set, we can define a slop value: caretSlop.
// This value defines an unwanted zone (UZ) where the caret is... unwanted.
// This zone is defined as a number of pixels near the vertical margins,
// and as a number of lines near the horizontal margins.
// By keeping the caret away from the edges, it is seen within its context,
// so it is likely that the identifier that the caret is on can be completely seen,
// and that the current line is seen with some of the lines following it which are
// often dependent on that line.
#define wxSTC_CARET_SLOP

// If CARET_STRICT is set, the policy is enforced... strictly.
// The caret is centred on the display if slop is not set,
// and cannot go in the UZ if slop is set.
#define wxSTC_CARET_STRICT

// If CARET_JUMPS is set, the display is moved more energetically
// so the caret can move in the same direction longer before the policy is applied again.
#define wxSTC_CARET_JUMPS

// If CARET_EVEN is not set, instead of having symmetrical UZs,
// the left and bottom UZs are extended up to right and top UZs respectively.
// This way, we favour the displaying of useful information: the begining of lines,
// where most code reside, and the lines after the caret, eg. the body of a function.
#define wxSTC_CARET_EVEN

// Selection modes
#define wxSTC_SEL_STREAM
#define wxSTC_SEL_RECTANGLE
#define wxSTC_SEL_LINES
#if %wxchkver_2_9_5
#define wxSTC_SEL_THIN
#define wxSTC_CASEINSENSITIVEBEHAVIOUR_RESPECTCASE
#define wxSTC_CASEINSENSITIVEBEHAVIOUR_IGNORECASE
#define wxSTC_CARETSTICKY_OFF
#define wxSTC_CARETSTICKY_ON
#define wxSTC_CARETSTICKY_WHITESPACE
#endif //%wxchkver_2_9_5
%wxchkver_2_8_12 #define wxSTC_ALPHA_TRANSPARENT
%wxchkver_2_8_12 #define wxSTC_ALPHA_OPAQUE
%wxchkver_2_8_12 #define wxSTC_ALPHA_NOALPHA
#if %wxchkver_2_9_5
#define wxSTC_CARETSTYLE_INVISIBLE
#define wxSTC_CARETSTYLE_LINE
#define wxSTC_CARETSTYLE_BLOCK
#define wxSTC_MARGINOPTION_NONE
#define wxSTC_MARGINOPTION_SUBLINESELECT
#define wxSTC_ANNOTATION_HIDDEN
#define wxSTC_ANNOTATION_STANDARD
#define wxSTC_ANNOTATION_BOXED
#define wxSTC_UNDO_MAY_COALESCE
#define wxSTC_SCVS_NONE
#define wxSTC_SCVS_RECTANGULARSELECTION
#define wxSTC_SCVS_USERACCESSIBLE
#define wxSTC_TECHNOLOGY_DEFAULT
#define wxSTC_TECHNOLOGY_DIRECTWRITE
#endif //%wxchkver_2_9_5

// Maximum value of keywordSet parameter of SetKeyWords.
#define wxSTC_KEYWORDSET_MAX
#if %wxchkver_2_9_5
#define wxSTC_TYPE_BOOLEAN
#define wxSTC_TYPE_INTEGER
#define wxSTC_TYPE_STRING
#endif //%wxchkver_2_9_5

// Notifications
// Type of modification and the action which caused the modification.
// These are defined as a bit mask to make it easy to specify which notifications are wanted.
// One bit is set from each of SC_MOD_* and SC_PERFORMED_*.
#define wxSTC_MOD_INSERTTEXT
#define wxSTC_MOD_DELETETEXT
#define wxSTC_MOD_CHANGESTYLE
#define wxSTC_MOD_CHANGEFOLD
#define wxSTC_PERFORMED_USER
#define wxSTC_PERFORMED_UNDO
#define wxSTC_PERFORMED_REDO
#define wxSTC_MULTISTEPUNDOREDO
#define wxSTC_LASTSTEPINUNDOREDO
#define wxSTC_MOD_CHANGEMARKER
#define wxSTC_MOD_BEFOREINSERT
#define wxSTC_MOD_BEFOREDELETE
#define wxSTC_MULTILINEUNDOREDO
#if %wxchkver_2_9_5
#define wxSTC_STARTACTION
#define wxSTC_MOD_CHANGEINDICATOR
#define wxSTC_MOD_CHANGELINESTATE
#define wxSTC_MOD_CHANGEMARGIN
#define wxSTC_MOD_CHANGEANNOTATION
#define wxSTC_MOD_CONTAINER
#define wxSTC_MOD_LEXERSTATE
#endif //%wxchkver_2_9_5
#define wxSTC_MODEVENTMASKALL
#if %wxchkver_2_9_5
#define wxSTC_UPDATE_CONTENT
#define wxSTC_UPDATE_SELECTION
#define wxSTC_UPDATE_V_SCROLL
#define wxSTC_UPDATE_H_SCROLL
#endif //%wxchkver_2_9_5

// Symbolic key codes and modifier flags.
// ASCII and other printable characters below 256.
// Extended keys above 300.
#define wxSTC_KEY_DOWN
#define wxSTC_KEY_UP
#define wxSTC_KEY_LEFT
#define wxSTC_KEY_RIGHT
#define wxSTC_KEY_HOME
#define wxSTC_KEY_END
#define wxSTC_KEY_PRIOR
#define wxSTC_KEY_NEXT
#define wxSTC_KEY_DELETE
#define wxSTC_KEY_INSERT
#define wxSTC_KEY_ESCAPE
#define wxSTC_KEY_BACK
#define wxSTC_KEY_TAB
#define wxSTC_KEY_RETURN
#define wxSTC_KEY_ADD
#define wxSTC_KEY_SUBTRACT
#define wxSTC_KEY_DIVIDE
%wxchkver_2_9_5 #define wxSTC_KEY_WIN
%wxchkver_2_9_5 #define wxSTC_KEY_RWIN
%wxchkver_2_9_5 #define wxSTC_KEY_MENU
#define wxSTC_SCMOD_NORM
#define wxSTC_SCMOD_SHIFT
#define wxSTC_SCMOD_CTRL
#define wxSTC_SCMOD_ALT
%wxchkver_2_9_5 #define wxSTC_SCMOD_SUPER
%wxchkver_2_9_5 #define wxSTC_SCMOD_META

// For SciLexer.h
#define wxSTC_LEX_CONTAINER
#define wxSTC_LEX_NULL
#define wxSTC_LEX_PYTHON
#define wxSTC_LEX_CPP
#define wxSTC_LEX_HTML
#define wxSTC_LEX_XML
#define wxSTC_LEX_PERL
#define wxSTC_LEX_SQL
#define wxSTC_LEX_VB
#define wxSTC_LEX_PROPERTIES
#define wxSTC_LEX_ERRORLIST
#define wxSTC_LEX_MAKEFILE
#define wxSTC_LEX_BATCH
#define wxSTC_LEX_XCODE
#define wxSTC_LEX_LATEX
#define wxSTC_LEX_LUA
#define wxSTC_LEX_DIFF
#define wxSTC_LEX_CONF
#define wxSTC_LEX_PASCAL
#define wxSTC_LEX_AVE
#define wxSTC_LEX_ADA
#define wxSTC_LEX_LISP
#define wxSTC_LEX_RUBY
#define wxSTC_LEX_EIFFEL
#define wxSTC_LEX_EIFFELKW
#define wxSTC_LEX_TCL
#define wxSTC_LEX_NNCRONTAB
#define wxSTC_LEX_BULLANT
#define wxSTC_LEX_VBSCRIPT
#define wxSTC_LEX_BAAN
#define wxSTC_LEX_MATLAB
#define wxSTC_LEX_SCRIPTOL
#define wxSTC_LEX_ASM
#define wxSTC_LEX_CPPNOCASE
#define wxSTC_LEX_FORTRAN
#define wxSTC_LEX_F77
#define wxSTC_LEX_CSS
#define wxSTC_LEX_POV
#define wxSTC_LEX_LOUT
#define wxSTC_LEX_ESCRIPT
#define wxSTC_LEX_PS
#define wxSTC_LEX_NSIS
#define wxSTC_LEX_MMIXAL
#define wxSTC_LEX_CLW
#define wxSTC_LEX_CLWNOCASE
#define wxSTC_LEX_LOT
#define wxSTC_LEX_YAML
#define wxSTC_LEX_TEX
#define wxSTC_LEX_METAPOST
#define wxSTC_LEX_POWERBASIC
#define wxSTC_LEX_FORTH
#define wxSTC_LEX_ERLANG
#define wxSTC_LEX_OCTAVE
#define wxSTC_LEX_MSSQL
#define wxSTC_LEX_VERILOG
#define wxSTC_LEX_KIX
#define wxSTC_LEX_GUI4CLI
#define wxSTC_LEX_SPECMAN
#define wxSTC_LEX_AU3
#define wxSTC_LEX_APDL
#define wxSTC_LEX_BASH
#define wxSTC_LEX_ASN1
#define wxSTC_LEX_VHDL
#define wxSTC_LEX_CAML
#define wxSTC_LEX_BLITZBASIC
#define wxSTC_LEX_PUREBASIC
#define wxSTC_LEX_HASKELL
#define wxSTC_LEX_PHPSCRIPT
#define wxSTC_LEX_TADS3
#define wxSTC_LEX_REBOL
#define wxSTC_LEX_SMALLTALK
#define wxSTC_LEX_FLAGSHIP
#define wxSTC_LEX_CSOUND
#define wxSTC_LEX_FREEBASIC
%wxchkver_2_8_12 #define wxSTC_LEX_INNOSETUP
%wxchkver_2_8_12 #define wxSTC_LEX_OPAL
%wxchkver_2_8_12 #define wxSTC_LEX_SPICE
#if %wxchkver_2_9_5
#define wxSTC_LEX_OPAL
#define wxSTC_LEX_SPICE
#define wxSTC_LEX_D
#define wxSTC_LEX_CMAKE
#define wxSTC_LEX_GAP
#define wxSTC_LEX_PLM
#define wxSTC_LEX_PROGRESS
#define wxSTC_LEX_ABAQUS
#define wxSTC_LEX_ASYMPTOTE
#define wxSTC_LEX_R
#define wxSTC_LEX_MAGIK
#define wxSTC_LEX_POWERSHELL
#define wxSTC_LEX_MYSQL
#define wxSTC_LEX_PO
#define wxSTC_LEX_TAL
#define wxSTC_LEX_COBOL
#define wxSTC_LEX_TACL
#define wxSTC_LEX_SORCUS
#define wxSTC_LEX_POWERPRO
#define wxSTC_LEX_NIMROD
#define wxSTC_LEX_SML
#define wxSTC_LEX_MARKDOWN
#define wxSTC_LEX_TXT2TAGS
#define wxSTC_LEX_A68K
#define wxSTC_LEX_MODULA
#define wxSTC_LEX_COFFEESCRIPT
#define wxSTC_LEX_TCMD
#define wxSTC_LEX_AVS
#define wxSTC_LEX_ECL
#define wxSTC_LEX_OSCRIPT
#define wxSTC_LEX_VISUALPROLOG
#endif //%wxchkver_2_9_5

// These are deprecated, STC_LEX_HTML should be used instead.
!%wxchkver_2_8 #define wxSTC_LEX_ASP
!%wxchkver_2_8 #define wxSTC_LEX_PHP

// When a lexer specifies its language as SCLEX_AUTOMATIC it receives a
// value assigned in sequence from SCLEX_AUTOMATIC+1.
#define wxSTC_LEX_AUTOMATIC

// Lexical states for SCLEX_PYTHON
#define wxSTC_P_DEFAULT
#define wxSTC_P_COMMENTLINE
#define wxSTC_P_NUMBER
#define wxSTC_P_STRING
#define wxSTC_P_CHARACTER
#define wxSTC_P_WORD
#define wxSTC_P_TRIPLE
#define wxSTC_P_TRIPLEDOUBLE
#define wxSTC_P_CLASSNAME
#define wxSTC_P_DEFNAME
#define wxSTC_P_OPERATOR
#define wxSTC_P_IDENTIFIER
#define wxSTC_P_COMMENTBLOCK
#define wxSTC_P_STRINGEOL
#define wxSTC_P_WORD2
#define wxSTC_P_DECORATOR

// Lexical states for SCLEX_CPP
#define wxSTC_C_DEFAULT
#define wxSTC_C_COMMENT
#define wxSTC_C_COMMENTLINE
#define wxSTC_C_COMMENTDOC
#define wxSTC_C_NUMBER
#define wxSTC_C_WORD
#define wxSTC_C_STRING
#define wxSTC_C_CHARACTER
#define wxSTC_C_UUID
#define wxSTC_C_PREPROCESSOR
#define wxSTC_C_OPERATOR
#define wxSTC_C_IDENTIFIER
#define wxSTC_C_STRINGEOL
#define wxSTC_C_VERBATIM
#define wxSTC_C_REGEX
#define wxSTC_C_COMMENTLINEDOC
#define wxSTC_C_WORD2
#define wxSTC_C_COMMENTDOCKEYWORD
#define wxSTC_C_COMMENTDOCKEYWORDERROR
#define wxSTC_C_GLOBALCLASS
#if %wxchkver_2_9_5
#define wxSTC_C_STRINGRAW
#define wxSTC_C_TRIPLEVERBATIM
#define wxSTC_C_HASHQUOTEDSTRING
#define wxSTC_C_PREPROCESSORCOMMENT
#endif //%wxchkver_2_9_5

#if %wxchkver_2_9_5
// Lexical states for SCLEX_D
#define wxSTC_D_DEFAULT
#define wxSTC_D_COMMENT
#define wxSTC_D_COMMENTLINE
#define wxSTC_D_COMMENTDOC
#define wxSTC_D_COMMENTNESTED
#define wxSTC_D_NUMBER
#define wxSTC_D_WORD
#define wxSTC_D_WORD2
#define wxSTC_D_WORD3
#define wxSTC_D_TYPEDEF
#define wxSTC_D_STRING
#define wxSTC_D_STRINGEOL
#define wxSTC_D_CHARACTER
#define wxSTC_D_OPERATOR
#define wxSTC_D_IDENTIFIER
#define wxSTC_D_COMMENTLINEDOC
#define wxSTC_D_COMMENTDOCKEYWORD
#define wxSTC_D_COMMENTDOCKEYWORDERROR
#define wxSTC_D_STRINGB
#define wxSTC_D_STRINGR
#define wxSTC_D_WORD5
#define wxSTC_D_WORD6
#define wxSTC_D_WORD7
#endif //%wxchkver_2_9_5

// Lexical states for SCLEX_TCL
#if %wxchkver_2_8_12 
#define wxSTC_TCL_DEFAULT
#define wxSTC_TCL_COMMENT
#define wxSTC_TCL_COMMENTLINE
#define wxSTC_TCL_NUMBER
#define wxSTC_TCL_WORD_IN_QUOTE
#define wxSTC_TCL_IN_QUOTE
#define wxSTC_TCL_OPERATOR
#define wxSTC_TCL_IDENTIFIER
#define wxSTC_TCL_SUBSTITUTION
#define wxSTC_TCL_SUB_BRACE
#define wxSTC_TCL_MODIFIER
#define wxSTC_TCL_EXPAND
#define wxSTC_TCL_WORD
#define wxSTC_TCL_WORD2
#define wxSTC_TCL_WORD3
#define wxSTC_TCL_WORD4
#define wxSTC_TCL_WORD5
#define wxSTC_TCL_WORD6
#define wxSTC_TCL_WORD7
#define wxSTC_TCL_WORD8
#define wxSTC_TCL_COMMENT_BOX
#define wxSTC_TCL_BLOCK_COMMENT
#endif //%wxchkver_2_8_12 

// Lexical states for SCLEX_HTML, SCLEX_XML
#define wxSTC_H_DEFAULT
#define wxSTC_H_TAG
#define wxSTC_H_TAGUNKNOWN
#define wxSTC_H_ATTRIBUTE
#define wxSTC_H_ATTRIBUTEUNKNOWN
#define wxSTC_H_NUMBER
#define wxSTC_H_DOUBLESTRING
#define wxSTC_H_SINGLESTRING
#define wxSTC_H_OTHER
#define wxSTC_H_COMMENT
#define wxSTC_H_ENTITY

// XML and ASP
#define wxSTC_H_TAGEND
#define wxSTC_H_XMLSTART
#define wxSTC_H_XMLEND
#define wxSTC_H_SCRIPT
#define wxSTC_H_ASP
#define wxSTC_H_ASPAT
#define wxSTC_H_CDATA
#define wxSTC_H_QUESTION

// More HTML
#define wxSTC_H_VALUE

// X-Code
#define wxSTC_H_XCCOMMENT

// SGML
#define wxSTC_H_SGML_DEFAULT
#define wxSTC_H_SGML_COMMAND
#define wxSTC_H_SGML_1ST_PARAM
#define wxSTC_H_SGML_DOUBLESTRING
#define wxSTC_H_SGML_SIMPLESTRING
#define wxSTC_H_SGML_ERROR
#define wxSTC_H_SGML_SPECIAL
#define wxSTC_H_SGML_ENTITY
#define wxSTC_H_SGML_COMMENT
#define wxSTC_H_SGML_1ST_PARAM_COMMENT
#define wxSTC_H_SGML_BLOCK_DEFAULT

// Embedded Javascript
#define wxSTC_HJ_START
#define wxSTC_HJ_DEFAULT
#define wxSTC_HJ_COMMENT
#define wxSTC_HJ_COMMENTLINE
#define wxSTC_HJ_COMMENTDOC
#define wxSTC_HJ_NUMBER
#define wxSTC_HJ_WORD
#define wxSTC_HJ_KEYWORD
#define wxSTC_HJ_DOUBLESTRING
#define wxSTC_HJ_SINGLESTRING
#define wxSTC_HJ_SYMBOLS
#define wxSTC_HJ_STRINGEOL
#define wxSTC_HJ_REGEX

// ASP Javascript
#define wxSTC_HJA_START
#define wxSTC_HJA_DEFAULT
#define wxSTC_HJA_COMMENT
#define wxSTC_HJA_COMMENTLINE
#define wxSTC_HJA_COMMENTDOC
#define wxSTC_HJA_NUMBER
#define wxSTC_HJA_WORD
#define wxSTC_HJA_KEYWORD
#define wxSTC_HJA_DOUBLESTRING
#define wxSTC_HJA_SINGLESTRING
#define wxSTC_HJA_SYMBOLS
#define wxSTC_HJA_STRINGEOL
#define wxSTC_HJA_REGEX

// Embedded VBScript
#define wxSTC_HB_START
#define wxSTC_HB_DEFAULT
#define wxSTC_HB_COMMENTLINE
#define wxSTC_HB_NUMBER
#define wxSTC_HB_WORD
#define wxSTC_HB_STRING
#define wxSTC_HB_IDENTIFIER
#define wxSTC_HB_STRINGEOL

// ASP VBScript
#define wxSTC_HBA_START
#define wxSTC_HBA_DEFAULT
#define wxSTC_HBA_COMMENTLINE
#define wxSTC_HBA_NUMBER
#define wxSTC_HBA_WORD
#define wxSTC_HBA_STRING
#define wxSTC_HBA_IDENTIFIER
#define wxSTC_HBA_STRINGEOL

// Embedded Python
#define wxSTC_HP_START
#define wxSTC_HP_DEFAULT
#define wxSTC_HP_COMMENTLINE
#define wxSTC_HP_NUMBER
#define wxSTC_HP_STRING
#define wxSTC_HP_CHARACTER
#define wxSTC_HP_WORD
#define wxSTC_HP_TRIPLE
#define wxSTC_HP_TRIPLEDOUBLE
#define wxSTC_HP_CLASSNAME
#define wxSTC_HP_DEFNAME
#define wxSTC_HP_OPERATOR
#define wxSTC_HP_IDENTIFIER

// PHP
#define wxSTC_HPHP_COMPLEX_VARIABLE

// ASP Python
#define wxSTC_HPA_START
#define wxSTC_HPA_DEFAULT
#define wxSTC_HPA_COMMENTLINE
#define wxSTC_HPA_NUMBER
#define wxSTC_HPA_STRING
#define wxSTC_HPA_CHARACTER
#define wxSTC_HPA_WORD
#define wxSTC_HPA_TRIPLE
#define wxSTC_HPA_TRIPLEDOUBLE
#define wxSTC_HPA_CLASSNAME
#define wxSTC_HPA_DEFNAME
#define wxSTC_HPA_OPERATOR
#define wxSTC_HPA_IDENTIFIER

// PHP
#define wxSTC_HPHP_DEFAULT
#define wxSTC_HPHP_HSTRING
#define wxSTC_HPHP_SIMPLESTRING
#define wxSTC_HPHP_WORD
#define wxSTC_HPHP_NUMBER
#define wxSTC_HPHP_VARIABLE
#define wxSTC_HPHP_COMMENT
#define wxSTC_HPHP_COMMENTLINE
#define wxSTC_HPHP_HSTRING_VARIABLE
#define wxSTC_HPHP_OPERATOR

// Lexical states for SCLEX_PERL
#define wxSTC_PL_DEFAULT
#define wxSTC_PL_ERROR
#define wxSTC_PL_COMMENTLINE
#define wxSTC_PL_POD
#define wxSTC_PL_NUMBER
#define wxSTC_PL_WORD
#define wxSTC_PL_STRING
#define wxSTC_PL_CHARACTER
#define wxSTC_PL_PUNCTUATION
#define wxSTC_PL_PREPROCESSOR
#define wxSTC_PL_OPERATOR
#define wxSTC_PL_IDENTIFIER
#define wxSTC_PL_SCALAR
#define wxSTC_PL_ARRAY
#define wxSTC_PL_HASH
#define wxSTC_PL_SYMBOLTABLE
#define wxSTC_PL_VARIABLE_INDEXER
#define wxSTC_PL_REGEX
#define wxSTC_PL_REGSUBST
#define wxSTC_PL_LONGQUOTE
#define wxSTC_PL_BACKTICKS
#define wxSTC_PL_DATASECTION
#define wxSTC_PL_HERE_DELIM
#define wxSTC_PL_HERE_Q
#define wxSTC_PL_HERE_QQ
#define wxSTC_PL_HERE_QX
#define wxSTC_PL_STRING_Q
#define wxSTC_PL_STRING_QQ
#define wxSTC_PL_STRING_QX
#define wxSTC_PL_STRING_QR
#define wxSTC_PL_STRING_QW
#define wxSTC_PL_POD_VERB
#if %wxchkver_2_9_5
#define wxSTC_PL_SUB_PROTOTYPE
#define wxSTC_PL_FORMAT_IDENT
#define wxSTC_PL_FORMAT
#define wxSTC_PL_STRING_VAR
#define wxSTC_PL_XLAT
#define wxSTC_PL_REGEX_VAR
#define wxSTC_PL_REGSUBST_VAR
#define wxSTC_PL_BACKTICKS_VAR
#define wxSTC_PL_HERE_QQ_VAR
#define wxSTC_PL_HERE_QX_VAR
#define wxSTC_PL_STRING_QQ_VAR
#define wxSTC_PL_STRING_QX_VAR
#define wxSTC_PL_STRING_QR_VAR
#endif //%wxchkver_2_9_5

// Lexical states for SCLEX_RUBY
#define wxSTC_RB_DEFAULT
#define wxSTC_RB_ERROR
#define wxSTC_RB_COMMENTLINE
#define wxSTC_RB_POD
#define wxSTC_RB_NUMBER
#define wxSTC_RB_WORD
#define wxSTC_RB_STRING
#define wxSTC_RB_CHARACTER
#define wxSTC_RB_CLASSNAME
#define wxSTC_RB_DEFNAME
#define wxSTC_RB_OPERATOR
#define wxSTC_RB_IDENTIFIER
#define wxSTC_RB_REGEX
#define wxSTC_RB_GLOBAL
#define wxSTC_RB_SYMBOL
#define wxSTC_RB_MODULE_NAME
#define wxSTC_RB_INSTANCE_VAR
#define wxSTC_RB_CLASS_VAR
#define wxSTC_RB_BACKTICKS
#define wxSTC_RB_DATASECTION
#define wxSTC_RB_HERE_DELIM
#define wxSTC_RB_HERE_Q
#define wxSTC_RB_HERE_QQ
#define wxSTC_RB_HERE_QX
#define wxSTC_RB_STRING_Q
#define wxSTC_RB_STRING_QQ
#define wxSTC_RB_STRING_QX
#define wxSTC_RB_STRING_QR
#define wxSTC_RB_STRING_QW
#define wxSTC_RB_WORD_DEMOTED
#define wxSTC_RB_STDIN
#define wxSTC_RB_STDOUT
#define wxSTC_RB_STDERR
#define wxSTC_RB_UPPER_BOUND

// Lexical states for SCLEX_VB, SCLEX_VBSCRIPT, SCLEX_POWERBASIC
#define wxSTC_B_DEFAULT
#define wxSTC_B_COMMENT
#define wxSTC_B_NUMBER
#define wxSTC_B_KEYWORD
#define wxSTC_B_STRING
#define wxSTC_B_PREPROCESSOR
#define wxSTC_B_OPERATOR
#define wxSTC_B_IDENTIFIER
#define wxSTC_B_DATE
#define wxSTC_B_STRINGEOL
#define wxSTC_B_KEYWORD2
#define wxSTC_B_KEYWORD3
#define wxSTC_B_KEYWORD4
#define wxSTC_B_CONSTANT
#define wxSTC_B_ASM
#define wxSTC_B_LABEL
#define wxSTC_B_ERROR
#define wxSTC_B_HEXNUMBER
#define wxSTC_B_BINNUMBER

// Lexical states for SCLEX_PROPERTIES
#define wxSTC_PROPS_DEFAULT
#define wxSTC_PROPS_COMMENT
#define wxSTC_PROPS_SECTION
#define wxSTC_PROPS_ASSIGNMENT
#define wxSTC_PROPS_DEFVAL
%wxchkver_2_8_12 #define wxSTC_PROPS_KEY

// Lexical states for SCLEX_LATEX
#define wxSTC_L_DEFAULT
#define wxSTC_L_COMMAND
#define wxSTC_L_TAG
#define wxSTC_L_MATH
#define wxSTC_L_COMMENT
#if %wxchkver_2_9_5
#define wxSTC_L_TAG2
#define wxSTC_L_MATH2
#define wxSTC_L_COMMENT2
#define wxSTC_L_VERBATIM
#define wxSTC_L_SHORTCMD
#define wxSTC_L_SPECIAL
#define wxSTC_L_CMDOPT
#define wxSTC_L_ERROR
#endif // %wxchkver_2_9_5

// Lexical states for SCLEX_LUA
#define wxSTC_LUA_DEFAULT
#define wxSTC_LUA_COMMENT
#define wxSTC_LUA_COMMENTLINE
#define wxSTC_LUA_COMMENTDOC
#define wxSTC_LUA_NUMBER
#define wxSTC_LUA_WORD
#define wxSTC_LUA_STRING
#define wxSTC_LUA_CHARACTER
#define wxSTC_LUA_LITERALSTRING
#define wxSTC_LUA_PREPROCESSOR
#define wxSTC_LUA_OPERATOR
#define wxSTC_LUA_IDENTIFIER
#define wxSTC_LUA_STRINGEOL
#define wxSTC_LUA_WORD2
#define wxSTC_LUA_WORD3
#define wxSTC_LUA_WORD4
#define wxSTC_LUA_WORD5
#define wxSTC_LUA_WORD6
#define wxSTC_LUA_WORD7
#define wxSTC_LUA_WORD8
%wxchkver_2_9_5 #define wxSTC_LUA_LABEL

// Lexical states for SCLEX_ERRORLIST
#define wxSTC_ERR_DEFAULT
#define wxSTC_ERR_PYTHON
#define wxSTC_ERR_GCC
#define wxSTC_ERR_MS
#define wxSTC_ERR_CMD
#define wxSTC_ERR_BORLAND
#define wxSTC_ERR_PERL
#define wxSTC_ERR_NET
#define wxSTC_ERR_LUA
#define wxSTC_ERR_CTAG
#define wxSTC_ERR_DIFF_CHANGED
#define wxSTC_ERR_DIFF_ADDITION
#define wxSTC_ERR_DIFF_DELETION
#define wxSTC_ERR_DIFF_MESSAGE
#define wxSTC_ERR_PHP
#define wxSTC_ERR_ELF
#define wxSTC_ERR_IFC
#define wxSTC_ERR_IFORT
#define wxSTC_ERR_ABSF
#define wxSTC_ERR_TIDY
#define wxSTC_ERR_JAVA_STACK
%wxchkver_2_9_5 #define wxSTC_ERR_VALUE

// Lexical states for SCLEX_BATCH
#define wxSTC_BAT_DEFAULT
#define wxSTC_BAT_COMMENT
#define wxSTC_BAT_WORD
#define wxSTC_BAT_LABEL
#define wxSTC_BAT_HIDE
#define wxSTC_BAT_COMMAND
#define wxSTC_BAT_IDENTIFIER
#define wxSTC_BAT_OPERATOR

#if %wxchkver_2_9_5
// Lexical states for SCLEX_TCMD
#define wxSTC_TCMD_DEFAULT
#define wxSTC_TCMD_COMMENT
#define wxSTC_TCMD_WORD
#define wxSTC_TCMD_LABEL
#define wxSTC_TCMD_HIDE
#define wxSTC_TCMD_COMMAND
#define wxSTC_TCMD_IDENTIFIER
#define wxSTC_TCMD_OPERATOR
#define wxSTC_TCMD_ENVIRONMENT
#define wxSTC_TCMD_EXPANSION
#define wxSTC_TCMD_CLABEL
#endif //%wxchkver_2_9_5

// Lexical states for SCLEX_MAKEFILE
#define wxSTC_MAKE_DEFAULT
#define wxSTC_MAKE_COMMENT
#define wxSTC_MAKE_PREPROCESSOR
#define wxSTC_MAKE_IDENTIFIER
#define wxSTC_MAKE_OPERATOR
#define wxSTC_MAKE_TARGET
#define wxSTC_MAKE_IDEOL

// Lexical states for SCLEX_DIFF
#define wxSTC_DIFF_DEFAULT
#define wxSTC_DIFF_COMMENT
#define wxSTC_DIFF_COMMAND
#define wxSTC_DIFF_HEADER
#define wxSTC_DIFF_POSITION
#define wxSTC_DIFF_DELETED
#define wxSTC_DIFF_ADDED
%wxchkver_2_9_5 #define wxSTC_DIFF_CHANGED

// Lexical states for SCLEX_CONF (Apache Configuration Files Lexer)
#define wxSTC_CONF_DEFAULT
#define wxSTC_CONF_COMMENT
#define wxSTC_CONF_NUMBER
#define wxSTC_CONF_IDENTIFIER
#define wxSTC_CONF_EXTENSION
#define wxSTC_CONF_PARAMETER
#define wxSTC_CONF_STRING
#define wxSTC_CONF_OPERATOR
#define wxSTC_CONF_IP
#define wxSTC_CONF_DIRECTIVE

// Lexical states for SCLEX_AVE, Avenue
#define wxSTC_AVE_DEFAULT
#define wxSTC_AVE_COMMENT
#define wxSTC_AVE_NUMBER
#define wxSTC_AVE_WORD
#define wxSTC_AVE_STRING
#define wxSTC_AVE_ENUM
#define wxSTC_AVE_STRINGEOL
#define wxSTC_AVE_IDENTIFIER
#define wxSTC_AVE_OPERATOR
#define wxSTC_AVE_WORD1
#define wxSTC_AVE_WORD2
#define wxSTC_AVE_WORD3
#define wxSTC_AVE_WORD4
#define wxSTC_AVE_WORD5
#define wxSTC_AVE_WORD6

// Lexical states for SCLEX_ADA
#define wxSTC_ADA_DEFAULT
#define wxSTC_ADA_WORD
#define wxSTC_ADA_IDENTIFIER
#define wxSTC_ADA_NUMBER
#define wxSTC_ADA_DELIMITER
#define wxSTC_ADA_CHARACTER
#define wxSTC_ADA_CHARACTEREOL
#define wxSTC_ADA_STRING
#define wxSTC_ADA_STRINGEOL
#define wxSTC_ADA_LABEL
#define wxSTC_ADA_COMMENTLINE
#define wxSTC_ADA_ILLEGAL

// Lexical states for SCLEX_BAAN
#define wxSTC_BAAN_DEFAULT
#define wxSTC_BAAN_COMMENT
#define wxSTC_BAAN_COMMENTDOC
#define wxSTC_BAAN_NUMBER
#define wxSTC_BAAN_WORD
#define wxSTC_BAAN_STRING
#define wxSTC_BAAN_PREPROCESSOR
#define wxSTC_BAAN_OPERATOR
#define wxSTC_BAAN_IDENTIFIER
#define wxSTC_BAAN_STRINGEOL
#define wxSTC_BAAN_WORD2

// Lexical states for SCLEX_LISP
#define wxSTC_LISP_DEFAULT
#define wxSTC_LISP_COMMENT
#define wxSTC_LISP_NUMBER
#define wxSTC_LISP_KEYWORD
#define wxSTC_LISP_KEYWORD_KW
#define wxSTC_LISP_SYMBOL
#define wxSTC_LISP_STRING
#define wxSTC_LISP_STRINGEOL
#define wxSTC_LISP_IDENTIFIER
#define wxSTC_LISP_OPERATOR
#define wxSTC_LISP_SPECIAL
#define wxSTC_LISP_MULTI_COMMENT

// Lexical states for SCLEX_EIFFEL and SCLEX_EIFFELKW
#define wxSTC_EIFFEL_DEFAULT
#define wxSTC_EIFFEL_COMMENTLINE
#define wxSTC_EIFFEL_NUMBER
#define wxSTC_EIFFEL_WORD
#define wxSTC_EIFFEL_STRING
#define wxSTC_EIFFEL_CHARACTER
#define wxSTC_EIFFEL_OPERATOR
#define wxSTC_EIFFEL_IDENTIFIER
#define wxSTC_EIFFEL_STRINGEOL

// Lexical states for SCLEX_NNCRONTAB (nnCron crontab Lexer)
#define wxSTC_NNCRONTAB_DEFAULT
#define wxSTC_NNCRONTAB_COMMENT
#define wxSTC_NNCRONTAB_TASK
#define wxSTC_NNCRONTAB_SECTION
#define wxSTC_NNCRONTAB_KEYWORD
#define wxSTC_NNCRONTAB_MODIFIER
#define wxSTC_NNCRONTAB_ASTERISK
#define wxSTC_NNCRONTAB_NUMBER
#define wxSTC_NNCRONTAB_STRING
#define wxSTC_NNCRONTAB_ENVIRONMENT
#define wxSTC_NNCRONTAB_IDENTIFIER

// Lexical states for SCLEX_FORTH (Forth Lexer)
#define wxSTC_FORTH_DEFAULT
#define wxSTC_FORTH_COMMENT
#define wxSTC_FORTH_COMMENT_ML
#define wxSTC_FORTH_IDENTIFIER
#define wxSTC_FORTH_CONTROL
#define wxSTC_FORTH_KEYWORD
#define wxSTC_FORTH_DEFWORD
#define wxSTC_FORTH_PREWORD1
#define wxSTC_FORTH_PREWORD2
#define wxSTC_FORTH_NUMBER
#define wxSTC_FORTH_STRING
#define wxSTC_FORTH_LOCALE

// Lexical states for SCLEX_MATLAB
#define wxSTC_MATLAB_DEFAULT
#define wxSTC_MATLAB_COMMENT
#define wxSTC_MATLAB_COMMAND
#define wxSTC_MATLAB_NUMBER
#define wxSTC_MATLAB_KEYWORD

// single quoted string
#define wxSTC_MATLAB_STRING
#define wxSTC_MATLAB_OPERATOR
#define wxSTC_MATLAB_IDENTIFIER
#define wxSTC_MATLAB_DOUBLEQUOTESTRING

// Lexical states for SCLEX_SCRIPTOL
#define wxSTC_SCRIPTOL_DEFAULT
#define wxSTC_SCRIPTOL_WHITE
#define wxSTC_SCRIPTOL_COMMENTLINE
#define wxSTC_SCRIPTOL_PERSISTENT
#define wxSTC_SCRIPTOL_CSTYLE
#define wxSTC_SCRIPTOL_COMMENTBLOCK
#define wxSTC_SCRIPTOL_NUMBER
#define wxSTC_SCRIPTOL_STRING
#define wxSTC_SCRIPTOL_CHARACTER
#define wxSTC_SCRIPTOL_STRINGEOL
#define wxSTC_SCRIPTOL_KEYWORD
#define wxSTC_SCRIPTOL_OPERATOR
#define wxSTC_SCRIPTOL_IDENTIFIER
#define wxSTC_SCRIPTOL_TRIPLE
#define wxSTC_SCRIPTOL_CLASSNAME
#define wxSTC_SCRIPTOL_PREPROCESSOR

// Lexical states for SCLEX_ASM
#define wxSTC_ASM_DEFAULT
#define wxSTC_ASM_COMMENT
#define wxSTC_ASM_NUMBER
#define wxSTC_ASM_STRING
#define wxSTC_ASM_OPERATOR
#define wxSTC_ASM_IDENTIFIER
#define wxSTC_ASM_CPUINSTRUCTION
#define wxSTC_ASM_MATHINSTRUCTION
#define wxSTC_ASM_REGISTER
#define wxSTC_ASM_DIRECTIVE
#define wxSTC_ASM_DIRECTIVEOPERAND
#define wxSTC_ASM_COMMENTBLOCK
#define wxSTC_ASM_CHARACTER
#define wxSTC_ASM_STRINGEOL
#define wxSTC_ASM_EXTINSTRUCTION
%wxchkver_2_9_5 #define wxSTC_ASM_COMMENTDIRECTIVE

// Lexical states for SCLEX_FORTRAN
#define wxSTC_F_DEFAULT
#define wxSTC_F_COMMENT
#define wxSTC_F_NUMBER
#define wxSTC_F_STRING1
#define wxSTC_F_STRING2
#define wxSTC_F_STRINGEOL
#define wxSTC_F_OPERATOR
#define wxSTC_F_IDENTIFIER
#define wxSTC_F_WORD
#define wxSTC_F_WORD2
#define wxSTC_F_WORD3
#define wxSTC_F_PREPROCESSOR
#define wxSTC_F_OPERATOR2
#define wxSTC_F_LABEL
#define wxSTC_F_CONTINUATION

// Lexical states for SCLEX_CSS
#define wxSTC_CSS_DEFAULT
#define wxSTC_CSS_TAG
#define wxSTC_CSS_CLASS
#define wxSTC_CSS_PSEUDOCLASS
#define wxSTC_CSS_UNKNOWN_PSEUDOCLASS
#define wxSTC_CSS_OPERATOR
#define wxSTC_CSS_IDENTIFIER
#define wxSTC_CSS_UNKNOWN_IDENTIFIER
#define wxSTC_CSS_VALUE
#define wxSTC_CSS_COMMENT
#define wxSTC_CSS_ID
#define wxSTC_CSS_IMPORTANT
#define wxSTC_CSS_DIRECTIVE
#define wxSTC_CSS_DOUBLESTRING
#define wxSTC_CSS_SINGLESTRING
#define wxSTC_CSS_IDENTIFIER2
#define wxSTC_CSS_ATTRIBUTE
#if %wxchkver_2_9_5
#define wxSTC_CSS_IDENTIFIER3
#define wxSTC_CSS_PSEUDOELEMENT
#define wxSTC_CSS_EXTENDED_IDENTIFIER
#define wxSTC_CSS_EXTENDED_PSEUDOCLASS
#define wxSTC_CSS_EXTENDED_PSEUDOELEMENT
#define wxSTC_CSS_MEDIA
#define wxSTC_CSS_VARIABLE
#endif //%wxchkver_2_9_5 

// Lexical states for SCLEX_POV
#define wxSTC_POV_DEFAULT
#define wxSTC_POV_COMMENT
#define wxSTC_POV_COMMENTLINE
#define wxSTC_POV_NUMBER
#define wxSTC_POV_OPERATOR
#define wxSTC_POV_IDENTIFIER
#define wxSTC_POV_STRING
#define wxSTC_POV_STRINGEOL
#define wxSTC_POV_DIRECTIVE
#define wxSTC_POV_BADDIRECTIVE
#define wxSTC_POV_WORD2
#define wxSTC_POV_WORD3
#define wxSTC_POV_WORD4
#define wxSTC_POV_WORD5
#define wxSTC_POV_WORD6
#define wxSTC_POV_WORD7
#define wxSTC_POV_WORD8

// Lexical states for SCLEX_LOUT
#define wxSTC_LOUT_DEFAULT
#define wxSTC_LOUT_COMMENT
#define wxSTC_LOUT_NUMBER
#define wxSTC_LOUT_WORD
#define wxSTC_LOUT_WORD2
#define wxSTC_LOUT_WORD3
#define wxSTC_LOUT_WORD4
#define wxSTC_LOUT_STRING
#define wxSTC_LOUT_OPERATOR
#define wxSTC_LOUT_IDENTIFIER
#define wxSTC_LOUT_STRINGEOL

// Lexical states for SCLEX_ESCRIPT
#define wxSTC_ESCRIPT_DEFAULT
#define wxSTC_ESCRIPT_COMMENT
#define wxSTC_ESCRIPT_COMMENTLINE
#define wxSTC_ESCRIPT_COMMENTDOC
#define wxSTC_ESCRIPT_NUMBER
#define wxSTC_ESCRIPT_WORD
#define wxSTC_ESCRIPT_STRING
#define wxSTC_ESCRIPT_OPERATOR
#define wxSTC_ESCRIPT_IDENTIFIER
#define wxSTC_ESCRIPT_BRACE
#define wxSTC_ESCRIPT_WORD2
#define wxSTC_ESCRIPT_WORD3

// Lexical states for SCLEX_PS
#define wxSTC_PS_DEFAULT
#define wxSTC_PS_COMMENT
#define wxSTC_PS_DSC_COMMENT
#define wxSTC_PS_DSC_VALUE
#define wxSTC_PS_NUMBER
#define wxSTC_PS_NAME
#define wxSTC_PS_KEYWORD
#define wxSTC_PS_LITERAL
#define wxSTC_PS_IMMEVAL
#define wxSTC_PS_PAREN_ARRAY
#define wxSTC_PS_PAREN_DICT
#define wxSTC_PS_PAREN_PROC
#define wxSTC_PS_TEXT
#define wxSTC_PS_HEXSTRING
#define wxSTC_PS_BASE85STRING
#define wxSTC_PS_BADSTRINGCHAR

// Lexical states for SCLEX_NSIS
#define wxSTC_NSIS_DEFAULT
#define wxSTC_NSIS_COMMENT
#define wxSTC_NSIS_STRINGDQ
#define wxSTC_NSIS_STRINGLQ
#define wxSTC_NSIS_STRINGRQ
#define wxSTC_NSIS_FUNCTION
#define wxSTC_NSIS_VARIABLE
#define wxSTC_NSIS_LABEL
#define wxSTC_NSIS_USERDEFINED
#define wxSTC_NSIS_SECTIONDEF
#define wxSTC_NSIS_SUBSECTIONDEF
#define wxSTC_NSIS_IFDEFINEDEF
#define wxSTC_NSIS_MACRODEF
#define wxSTC_NSIS_STRINGVAR
#define wxSTC_NSIS_NUMBER
#define wxSTC_NSIS_SECTIONGROUP
#define wxSTC_NSIS_PAGEEX
#define wxSTC_NSIS_FUNCTIONDEF
#define wxSTC_NSIS_COMMENTBOX

// Lexical states for SCLEX_MMIXAL
#define wxSTC_MMIXAL_LEADWS
#define wxSTC_MMIXAL_COMMENT
#define wxSTC_MMIXAL_LABEL
#define wxSTC_MMIXAL_OPCODE
#define wxSTC_MMIXAL_OPCODE_PRE
#define wxSTC_MMIXAL_OPCODE_VALID
#define wxSTC_MMIXAL_OPCODE_UNKNOWN
#define wxSTC_MMIXAL_OPCODE_POST
#define wxSTC_MMIXAL_OPERANDS
#define wxSTC_MMIXAL_NUMBER
#define wxSTC_MMIXAL_REF
#define wxSTC_MMIXAL_CHAR
#define wxSTC_MMIXAL_STRING
#define wxSTC_MMIXAL_REGISTER
#define wxSTC_MMIXAL_HEX
#define wxSTC_MMIXAL_OPERATOR
#define wxSTC_MMIXAL_SYMBOL
#define wxSTC_MMIXAL_INCLUDE

// Lexical states for SCLEX_CLW
#define wxSTC_CLW_DEFAULT
#define wxSTC_CLW_LABEL
#define wxSTC_CLW_COMMENT
#define wxSTC_CLW_STRING
#define wxSTC_CLW_USER_IDENTIFIER
#define wxSTC_CLW_INTEGER_CONSTANT
#define wxSTC_CLW_REAL_CONSTANT
#define wxSTC_CLW_PICTURE_STRING
#define wxSTC_CLW_KEYWORD
#define wxSTC_CLW_COMPILER_DIRECTIVE
#define wxSTC_CLW_RUNTIME_EXPRESSIONS
#define wxSTC_CLW_BUILTIN_PROCEDURES_FUNCTION
#define wxSTC_CLW_STRUCTURE_DATA_TYPE
#define wxSTC_CLW_ATTRIBUTE
#define wxSTC_CLW_STANDARD_EQUATE
#define wxSTC_CLW_ERROR
#define wxSTC_CLW_DEPRECATED

// Lexical states for SCLEX_LOT
#define wxSTC_LOT_DEFAULT
#define wxSTC_LOT_HEADER
#define wxSTC_LOT_BREAK
#define wxSTC_LOT_SET
#define wxSTC_LOT_PASS
#define wxSTC_LOT_FAIL
#define wxSTC_LOT_ABORT

// Lexical states for SCLEX_YAML
#define wxSTC_YAML_DEFAULT
#define wxSTC_YAML_COMMENT
#define wxSTC_YAML_IDENTIFIER
#define wxSTC_YAML_KEYWORD
#define wxSTC_YAML_NUMBER
#define wxSTC_YAML_REFERENCE
#define wxSTC_YAML_DOCUMENT
#define wxSTC_YAML_TEXT
#define wxSTC_YAML_ERROR
%wxchkver_2_9_5 #define wxSTC_YAML_OPERATOR

// Lexical states for SCLEX_TEX
#define wxSTC_TEX_DEFAULT
#define wxSTC_TEX_SPECIAL
#define wxSTC_TEX_GROUP
#define wxSTC_TEX_SYMBOL
#define wxSTC_TEX_COMMAND
#define wxSTC_TEX_TEXT
#define wxSTC_METAPOST_DEFAULT
#define wxSTC_METAPOST_SPECIAL
#define wxSTC_METAPOST_GROUP
#define wxSTC_METAPOST_SYMBOL
#define wxSTC_METAPOST_COMMAND
#define wxSTC_METAPOST_TEXT
#define wxSTC_METAPOST_EXTRA

// Lexical states for SCLEX_ERLANG
#define wxSTC_ERLANG_DEFAULT
#define wxSTC_ERLANG_COMMENT
#define wxSTC_ERLANG_VARIABLE
#define wxSTC_ERLANG_NUMBER
#define wxSTC_ERLANG_KEYWORD
#define wxSTC_ERLANG_STRING
#define wxSTC_ERLANG_OPERATOR
#define wxSTC_ERLANG_ATOM
#define wxSTC_ERLANG_FUNCTION_NAME
#define wxSTC_ERLANG_CHARACTER
#define wxSTC_ERLANG_MACRO
#define wxSTC_ERLANG_RECORD
!%wxchkver_2_9_2 #define wxSTC_ERLANG_SEPARATOR
#if %wxchkver_2_9_5
#define wxSTC_ERLANG_PREPROC
#define wxSTC_ERLANG_NODE_NAME
#define wxSTC_ERLANG_COMMENT_FUNCTION
#define wxSTC_ERLANG_COMMENT_MODULE
#define wxSTC_ERLANG_COMMENT_DOC
#define wxSTC_ERLANG_COMMENT_DOC_MACRO
#define wxSTC_ERLANG_ATOM_QUOTED
#define wxSTC_ERLANG_MACRO_QUOTED
#define wxSTC_ERLANG_RECORD_QUOTED
#define wxSTC_ERLANG_NODE_NAME_QUOTED
#define wxSTC_ERLANG_BIFS
#define wxSTC_ERLANG_MODULES
#define wxSTC_ERLANG_MODULES_ATT
#endif //%wxchkver_2_9_5
#define wxSTC_ERLANG_UNKNOWN

// Lexical states for SCLEX_OCTAVE are identical to MatLab
// Lexical states for SCLEX_MSSQL
#define wxSTC_MSSQL_DEFAULT
#define wxSTC_MSSQL_COMMENT
#define wxSTC_MSSQL_LINE_COMMENT
#define wxSTC_MSSQL_NUMBER
#define wxSTC_MSSQL_STRING
#define wxSTC_MSSQL_OPERATOR
#define wxSTC_MSSQL_IDENTIFIER
#define wxSTC_MSSQL_VARIABLE
#define wxSTC_MSSQL_COLUMN_NAME
#define wxSTC_MSSQL_STATEMENT
#define wxSTC_MSSQL_DATATYPE
#define wxSTC_MSSQL_SYSTABLE
#define wxSTC_MSSQL_GLOBAL_VARIABLE
#define wxSTC_MSSQL_FUNCTION
#define wxSTC_MSSQL_STORED_PROCEDURE
#define wxSTC_MSSQL_DEFAULT_PREF_DATATYPE
#define wxSTC_MSSQL_COLUMN_NAME_2

// Lexical states for SCLEX_VERILOG
#define wxSTC_V_DEFAULT
#define wxSTC_V_COMMENT
#define wxSTC_V_COMMENTLINE
#define wxSTC_V_COMMENTLINEBANG
#define wxSTC_V_NUMBER
#define wxSTC_V_WORD
#define wxSTC_V_STRING
#define wxSTC_V_WORD2
#define wxSTC_V_WORD3
#define wxSTC_V_PREPROCESSOR
#define wxSTC_V_OPERATOR
#define wxSTC_V_IDENTIFIER
#define wxSTC_V_STRINGEOL
#define wxSTC_V_USER

// Lexical states for SCLEX_KIX
#define wxSTC_KIX_DEFAULT
#define wxSTC_KIX_COMMENT
#define wxSTC_KIX_STRING1
#define wxSTC_KIX_STRING2
#define wxSTC_KIX_NUMBER
#define wxSTC_KIX_VAR
#define wxSTC_KIX_MACRO
#define wxSTC_KIX_KEYWORD
#define wxSTC_KIX_FUNCTIONS
#define wxSTC_KIX_OPERATOR
#define wxSTC_KIX_IDENTIFIER

// Lexical states for SCLEX_GUI4CLI
#define wxSTC_GC_DEFAULT
#define wxSTC_GC_COMMENTLINE
#define wxSTC_GC_COMMENTBLOCK
#define wxSTC_GC_GLOBAL
#define wxSTC_GC_EVENT
#define wxSTC_GC_ATTRIBUTE
#define wxSTC_GC_CONTROL
#define wxSTC_GC_COMMAND
#define wxSTC_GC_STRING
#define wxSTC_GC_OPERATOR

// Lexical states for SCLEX_SPECMAN
#define wxSTC_SN_DEFAULT
#define wxSTC_SN_CODE
#define wxSTC_SN_COMMENTLINE
#define wxSTC_SN_COMMENTLINEBANG
#define wxSTC_SN_NUMBER
#define wxSTC_SN_WORD
#define wxSTC_SN_STRING
#define wxSTC_SN_WORD2
#define wxSTC_SN_WORD3
#define wxSTC_SN_PREPROCESSOR
#define wxSTC_SN_OPERATOR
#define wxSTC_SN_IDENTIFIER
#define wxSTC_SN_STRINGEOL
#define wxSTC_SN_REGEXTAG
#define wxSTC_SN_SIGNAL
#define wxSTC_SN_USER

// Lexical states for SCLEX_AU3
#define wxSTC_AU3_DEFAULT
#define wxSTC_AU3_COMMENT
#define wxSTC_AU3_COMMENTBLOCK
#define wxSTC_AU3_NUMBER
#define wxSTC_AU3_FUNCTION
#define wxSTC_AU3_KEYWORD
#define wxSTC_AU3_MACRO
#define wxSTC_AU3_STRING
#define wxSTC_AU3_OPERATOR
#define wxSTC_AU3_VARIABLE
#define wxSTC_AU3_SENT
#define wxSTC_AU3_PREPROCESSOR
#define wxSTC_AU3_SPECIAL
#define wxSTC_AU3_EXPAND
#define wxSTC_AU3_COMOBJ
%wxchkver_2_8_12 #define wxSTC_AU3_UDF

// Lexical states for SCLEX_APDL
#define wxSTC_APDL_DEFAULT
#define wxSTC_APDL_COMMENT
#define wxSTC_APDL_COMMENTBLOCK
#define wxSTC_APDL_NUMBER
#define wxSTC_APDL_STRING
#define wxSTC_APDL_OPERATOR
#define wxSTC_APDL_WORD
#define wxSTC_APDL_PROCESSOR
#define wxSTC_APDL_COMMAND
#define wxSTC_APDL_SLASHCOMMAND
#define wxSTC_APDL_STARCOMMAND
#define wxSTC_APDL_ARGUMENT
#define wxSTC_APDL_FUNCTION

// Lexical states for SCLEX_BASH
#define wxSTC_SH_DEFAULT
#define wxSTC_SH_ERROR
#define wxSTC_SH_COMMENTLINE
#define wxSTC_SH_NUMBER
#define wxSTC_SH_WORD
#define wxSTC_SH_STRING
#define wxSTC_SH_CHARACTER
#define wxSTC_SH_OPERATOR
#define wxSTC_SH_IDENTIFIER
#define wxSTC_SH_SCALAR
#define wxSTC_SH_PARAM
#define wxSTC_SH_BACKTICKS
#define wxSTC_SH_HERE_DELIM
#define wxSTC_SH_HERE_Q

// Lexical states for SCLEX_ASN1
#define wxSTC_ASN1_DEFAULT
#define wxSTC_ASN1_COMMENT
#define wxSTC_ASN1_IDENTIFIER
#define wxSTC_ASN1_STRING
#define wxSTC_ASN1_OID
#define wxSTC_ASN1_SCALAR
#define wxSTC_ASN1_KEYWORD
#define wxSTC_ASN1_ATTRIBUTE
#define wxSTC_ASN1_DESCRIPTOR
#define wxSTC_ASN1_TYPE
#define wxSTC_ASN1_OPERATOR

// Lexical states for SCLEX_VHDL
#define wxSTC_VHDL_DEFAULT
#define wxSTC_VHDL_COMMENT
#define wxSTC_VHDL_COMMENTLINEBANG
#define wxSTC_VHDL_NUMBER
#define wxSTC_VHDL_STRING
#define wxSTC_VHDL_OPERATOR
#define wxSTC_VHDL_IDENTIFIER
#define wxSTC_VHDL_STRINGEOL
#define wxSTC_VHDL_KEYWORD
#define wxSTC_VHDL_STDOPERATOR
#define wxSTC_VHDL_ATTRIBUTE
#define wxSTC_VHDL_STDFUNCTION
#define wxSTC_VHDL_STDPACKAGE
#define wxSTC_VHDL_STDTYPE
#define wxSTC_VHDL_USERWORD

// Lexical states for SCLEX_CAML
#define wxSTC_CAML_DEFAULT
#define wxSTC_CAML_IDENTIFIER
#define wxSTC_CAML_TAGNAME
#define wxSTC_CAML_KEYWORD
#define wxSTC_CAML_KEYWORD2
#define wxSTC_CAML_KEYWORD3
#define wxSTC_CAML_LINENUM
#define wxSTC_CAML_OPERATOR
#define wxSTC_CAML_NUMBER
#define wxSTC_CAML_CHAR
%wxchkver_2_9_5 #define wxSTC_CAML_WHITE
#define wxSTC_CAML_STRING
#define wxSTC_CAML_COMMENT
#define wxSTC_CAML_COMMENT1
#define wxSTC_CAML_COMMENT2
#define wxSTC_CAML_COMMENT3

// Lexical states for SCLEX_HASKELL
#define wxSTC_HA_DEFAULT
#define wxSTC_HA_IDENTIFIER
#define wxSTC_HA_KEYWORD
#define wxSTC_HA_NUMBER
#define wxSTC_HA_STRING
#define wxSTC_HA_CHARACTER
#define wxSTC_HA_CLASS
#define wxSTC_HA_MODULE
#define wxSTC_HA_CAPITAL
#define wxSTC_HA_DATA
#define wxSTC_HA_IMPORT
#define wxSTC_HA_OPERATOR
#define wxSTC_HA_INSTANCE
#define wxSTC_HA_COMMENTLINE
#define wxSTC_HA_COMMENTBLOCK
#define wxSTC_HA_COMMENTBLOCK2
#define wxSTC_HA_COMMENTBLOCK3

// Lexical states of SCLEX_TADS3
#define wxSTC_T3_DEFAULT
#define wxSTC_T3_X_DEFAULT
#define wxSTC_T3_PREPROCESSOR
#define wxSTC_T3_BLOCK_COMMENT
#define wxSTC_T3_LINE_COMMENT
#define wxSTC_T3_OPERATOR
#define wxSTC_T3_KEYWORD
#define wxSTC_T3_NUMBER
#define wxSTC_T3_IDENTIFIER
#define wxSTC_T3_S_STRING
#define wxSTC_T3_D_STRING
#define wxSTC_T3_X_STRING
#define wxSTC_T3_LIB_DIRECTIVE
#define wxSTC_T3_MSG_PARAM
#define wxSTC_T3_HTML_TAG
#define wxSTC_T3_HTML_DEFAULT
#define wxSTC_T3_HTML_STRING
#define wxSTC_T3_USER1
#define wxSTC_T3_USER2
#define wxSTC_T3_USER3
%wxchkver_2_9_5 #define wxSTC_T3_BRACE

// Lexical states for SCLEX_REBOL
#define wxSTC_REBOL_DEFAULT
#define wxSTC_REBOL_COMMENTLINE
#define wxSTC_REBOL_COMMENTBLOCK
#define wxSTC_REBOL_PREFACE
#define wxSTC_REBOL_OPERATOR
#define wxSTC_REBOL_CHARACTER
#define wxSTC_REBOL_QUOTEDSTRING
#define wxSTC_REBOL_BRACEDSTRING
#define wxSTC_REBOL_NUMBER
#define wxSTC_REBOL_PAIR
#define wxSTC_REBOL_TUPLE
#define wxSTC_REBOL_BINARY
#define wxSTC_REBOL_MONEY
#define wxSTC_REBOL_ISSUE
#define wxSTC_REBOL_TAG
#define wxSTC_REBOL_FILE
#define wxSTC_REBOL_EMAIL
#define wxSTC_REBOL_URL
#define wxSTC_REBOL_DATE
#define wxSTC_REBOL_TIME
#define wxSTC_REBOL_IDENTIFIER
#define wxSTC_REBOL_WORD
#define wxSTC_REBOL_WORD2
#define wxSTC_REBOL_WORD3
#define wxSTC_REBOL_WORD4
#define wxSTC_REBOL_WORD5
#define wxSTC_REBOL_WORD6
#define wxSTC_REBOL_WORD7
#define wxSTC_REBOL_WORD8

// Lexical states for SCLEX_SQL
#define wxSTC_SQL_DEFAULT
#define wxSTC_SQL_COMMENT
#define wxSTC_SQL_COMMENTLINE
#define wxSTC_SQL_COMMENTDOC
#define wxSTC_SQL_NUMBER
#define wxSTC_SQL_WORD
#define wxSTC_SQL_STRING
#define wxSTC_SQL_CHARACTER
#define wxSTC_SQL_SQLPLUS
#define wxSTC_SQL_SQLPLUS_PROMPT
#define wxSTC_SQL_OPERATOR
#define wxSTC_SQL_IDENTIFIER
#define wxSTC_SQL_SQLPLUS_COMMENT
#define wxSTC_SQL_COMMENTLINEDOC
#define wxSTC_SQL_WORD2
#define wxSTC_SQL_COMMENTDOCKEYWORD
#define wxSTC_SQL_COMMENTDOCKEYWORDERROR
#define wxSTC_SQL_USER1
#define wxSTC_SQL_USER2
#define wxSTC_SQL_USER3
#define wxSTC_SQL_USER4
#define wxSTC_SQL_QUOTEDIDENTIFIER

// Lexical states for SCLEX_SMALLTALK
#define wxSTC_ST_DEFAULT
#define wxSTC_ST_STRING
#define wxSTC_ST_NUMBER
#define wxSTC_ST_COMMENT
#define wxSTC_ST_SYMBOL
#define wxSTC_ST_BINARY
#define wxSTC_ST_BOOL
#define wxSTC_ST_SELF
#define wxSTC_ST_SUPER
#define wxSTC_ST_NIL
#define wxSTC_ST_GLOBAL
#define wxSTC_ST_RETURN
#define wxSTC_ST_SPECIAL
#define wxSTC_ST_KWSEND
#define wxSTC_ST_ASSIGN
#define wxSTC_ST_CHARACTER
#define wxSTC_ST_SPEC_SEL

// Lexical states for SCLEX_FLAGSHIP (clipper)
#define wxSTC_FS_DEFAULT
#define wxSTC_FS_COMMENT
#define wxSTC_FS_COMMENTLINE
#define wxSTC_FS_COMMENTDOC
#define wxSTC_FS_COMMENTLINEDOC
#define wxSTC_FS_COMMENTDOCKEYWORD
#define wxSTC_FS_COMMENTDOCKEYWORDERROR
#define wxSTC_FS_KEYWORD
#define wxSTC_FS_KEYWORD2
#define wxSTC_FS_KEYWORD3
#define wxSTC_FS_KEYWORD4
#define wxSTC_FS_NUMBER
#define wxSTC_FS_STRING
#define wxSTC_FS_PREPROCESSOR
#define wxSTC_FS_OPERATOR
#define wxSTC_FS_IDENTIFIER
#define wxSTC_FS_DATE
#define wxSTC_FS_STRINGEOL
#define wxSTC_FS_CONSTANT
#if %wxchkver_2_9_5
#define wxSTC_FS_WORDOPERATOR
#define wxSTC_FS_DISABLEDCODE
#define wxSTC_FS_DEFAULT_C
#define wxSTC_FS_COMMENTDOC_C
#define wxSTC_FS_COMMENTLINEDOC_C
#define wxSTC_FS_KEYWORD_C
#define wxSTC_FS_KEYWORD2_C
#define wxSTC_FS_NUMBER_C
#define wxSTC_FS_STRING_C
#define wxSTC_FS_PREPROCESSOR_C
#define wxSTC_FS_OPERATOR_C
#define wxSTC_FS_IDENTIFIER_C
#define wxSTC_FS_STRINGEOL_C
#endif //%wxchkver_2_9_5
//#define wxSTC_FS_ASM        - Removed in 2.9.5
//#define wxSTC_FS_LABEL      - Removed in 2.9.5
//#define wxSTC_FS_ERROR      - Removed in 2.9.5
//#define wxSTC_FS_HEXNUMBER  - Removed in 2.9.5
//#define wxSTC_FS_BINNUMBER  - Removed in 2.9.5

// Lexical states for SCLEX_CSOUND
#define wxSTC_CSOUND_DEFAULT
#define wxSTC_CSOUND_COMMENT
#define wxSTC_CSOUND_NUMBER
#define wxSTC_CSOUND_OPERATOR
#define wxSTC_CSOUND_INSTR
#define wxSTC_CSOUND_IDENTIFIER
#define wxSTC_CSOUND_OPCODE
#define wxSTC_CSOUND_HEADERSTMT
#define wxSTC_CSOUND_USERKEYWORD
#define wxSTC_CSOUND_COMMENTBLOCK
#define wxSTC_CSOUND_PARAM
#define wxSTC_CSOUND_ARATE_VAR
#define wxSTC_CSOUND_KRATE_VAR
#define wxSTC_CSOUND_IRATE_VAR
#define wxSTC_CSOUND_GLOBAL_VAR
#define wxSTC_CSOUND_STRINGEOL

#if %wxchkver_2_8_12

// Lexical states for SCLEX_INNOSETUP
#define wxSTC_INNO_DEFAULT
#define wxSTC_INNO_COMMENT
#define wxSTC_INNO_KEYWORD
#define wxSTC_INNO_PARAMETER
#define wxSTC_INNO_SECTION
#define wxSTC_INNO_PREPROC
%wxchkver_2_9_5 #define wxSTC_INNO_INLINE_EXPANSION
#define wxSTC_INNO_COMMENT_PASCAL
#define wxSTC_INNO_KEYWORD_PASCAL
#define wxSTC_INNO_KEYWORD_USER
#define wxSTC_INNO_STRING_DOUBLE
#define wxSTC_INNO_STRING_SINGLE
#define wxSTC_INNO_IDENTIFIER

// Lexical states for SCLEX_OPAL
#define wxSTC_OPAL_SPACE
#define wxSTC_OPAL_COMMENT_BLOCK
#define wxSTC_OPAL_COMMENT_LINE
#define wxSTC_OPAL_INTEGER
#define wxSTC_OPAL_KEYWORD
#define wxSTC_OPAL_SORT
#define wxSTC_OPAL_STRING
#define wxSTC_OPAL_PAR
#define wxSTC_OPAL_BOOL_CONST
#define wxSTC_OPAL_DEFAULT

// Lexical states for SCLEX_SPICE
#define wxSTC_SPICE_DEFAULT
#define wxSTC_SPICE_IDENTIFIER
#define wxSTC_SPICE_KEYWORD
#define wxSTC_SPICE_KEYWORD2
#define wxSTC_SPICE_KEYWORD3
#define wxSTC_SPICE_NUMBER
#define wxSTC_SPICE_DELIMITER
#define wxSTC_SPICE_VALUE
#define wxSTC_SPICE_COMMENTLINE

#endif //%wxchkver_2_8_12

#if %wxchkver_2_9_5

// Lexical states for SCLEX_CMAKE
#define wxSTC_CMAKE_DEFAULT
#define wxSTC_CMAKE_COMMENT
#define wxSTC_CMAKE_STRINGDQ
#define wxSTC_CMAKE_STRINGLQ
#define wxSTC_CMAKE_STRINGRQ
#define wxSTC_CMAKE_COMMANDS
#define wxSTC_CMAKE_PARAMETERS
#define wxSTC_CMAKE_VARIABLE
#define wxSTC_CMAKE_USERDEFINED
#define wxSTC_CMAKE_WHILEDEF
#define wxSTC_CMAKE_FOREACHDEF
#define wxSTC_CMAKE_IFDEFINEDEF
#define wxSTC_CMAKE_MACRODEF
#define wxSTC_CMAKE_STRINGVAR
#define wxSTC_CMAKE_NUMBER

// Lexical states for SCLEX_GAP
#define wxSTC_GAP_DEFAULT
#define wxSTC_GAP_IDENTIFIER
#define wxSTC_GAP_KEYWORD
#define wxSTC_GAP_KEYWORD2
#define wxSTC_GAP_KEYWORD3
#define wxSTC_GAP_KEYWORD4
#define wxSTC_GAP_STRING
#define wxSTC_GAP_CHAR
#define wxSTC_GAP_OPERATOR
#define wxSTC_GAP_COMMENT
#define wxSTC_GAP_NUMBER
#define wxSTC_GAP_STRINGEOL

// Lexical state for SCLEX_PLM
#define wxSTC_PLM_DEFAULT
#define wxSTC_PLM_COMMENT
#define wxSTC_PLM_STRING
#define wxSTC_PLM_NUMBER
#define wxSTC_PLM_IDENTIFIER
#define wxSTC_PLM_OPERATOR
#define wxSTC_PLM_CONTROL
#define wxSTC_PLM_KEYWORD

// Lexical state for SCLEX_PROGRESS
#define wxSTC_4GL_DEFAULT
#define wxSTC_4GL_NUMBER
#define wxSTC_4GL_WORD
#define wxSTC_4GL_STRING
#define wxSTC_4GL_CHARACTER
#define wxSTC_4GL_PREPROCESSOR
#define wxSTC_4GL_OPERATOR
#define wxSTC_4GL_IDENTIFIER
#define wxSTC_4GL_BLOCK
#define wxSTC_4GL_END
#define wxSTC_4GL_COMMENT1
#define wxSTC_4GL_COMMENT2
#define wxSTC_4GL_COMMENT3
#define wxSTC_4GL_COMMENT4
#define wxSTC_4GL_COMMENT5
#define wxSTC_4GL_COMMENT6
#define wxSTC_4GL_DEFAULT_
#define wxSTC_4GL_NUMBER_
#define wxSTC_4GL_WORD_
#define wxSTC_4GL_STRING_
#define wxSTC_4GL_CHARACTER_
#define wxSTC_4GL_PREPROCESSOR_
#define wxSTC_4GL_OPERATOR_
#define wxSTC_4GL_IDENTIFIER_
#define wxSTC_4GL_BLOCK_
#define wxSTC_4GL_END_
#define wxSTC_4GL_COMMENT1_
#define wxSTC_4GL_COMMENT2_
#define wxSTC_4GL_COMMENT3_
#define wxSTC_4GL_COMMENT4_
#define wxSTC_4GL_COMMENT5_
#define wxSTC_4GL_COMMENT6_

// Lexical states for SCLEX_ABAQUS
#define wxSTC_ABAQUS_DEFAULT
#define wxSTC_ABAQUS_COMMENT
#define wxSTC_ABAQUS_COMMENTBLOCK
#define wxSTC_ABAQUS_NUMBER
#define wxSTC_ABAQUS_STRING
#define wxSTC_ABAQUS_OPERATOR
#define wxSTC_ABAQUS_WORD
#define wxSTC_ABAQUS_PROCESSOR
#define wxSTC_ABAQUS_COMMAND
#define wxSTC_ABAQUS_SLASHCOMMAND
#define wxSTC_ABAQUS_STARCOMMAND
#define wxSTC_ABAQUS_ARGUMENT
#define wxSTC_ABAQUS_FUNCTION

// Lexical states for SCLEX_ASYMPTOTE
#define wxSTC_ASY_DEFAULT
#define wxSTC_ASY_COMMENT
#define wxSTC_ASY_COMMENTLINE
#define wxSTC_ASY_NUMBER
#define wxSTC_ASY_WORD
#define wxSTC_ASY_STRING
#define wxSTC_ASY_CHARACTER
#define wxSTC_ASY_OPERATOR
#define wxSTC_ASY_IDENTIFIER
#define wxSTC_ASY_STRINGEOL
#define wxSTC_ASY_COMMENTLINEDOC
#define wxSTC_ASY_WORD2

// Lexical states for SCLEX_R
#define wxSTC_R_DEFAULT
#define wxSTC_R_COMMENT
#define wxSTC_R_KWORD
#define wxSTC_R_BASEKWORD
#define wxSTC_R_OTHERKWORD
#define wxSTC_R_NUMBER
#define wxSTC_R_STRING
#define wxSTC_R_STRING2
#define wxSTC_R_OPERATOR
#define wxSTC_R_IDENTIFIER
#define wxSTC_R_INFIX
#define wxSTC_R_INFIXEOL

// Lexical state for SCLEX_MAGIKSF
#define wxSTC_MAGIK_DEFAULT
#define wxSTC_MAGIK_COMMENT
#define wxSTC_MAGIK_HYPER_COMMENT
#define wxSTC_MAGIK_STRING
#define wxSTC_MAGIK_CHARACTER
#define wxSTC_MAGIK_NUMBER
#define wxSTC_MAGIK_IDENTIFIER
#define wxSTC_MAGIK_OPERATOR
#define wxSTC_MAGIK_FLOW
#define wxSTC_MAGIK_CONTAINER
#define wxSTC_MAGIK_BRACKET_BLOCK
#define wxSTC_MAGIK_BRACE_BLOCK
#define wxSTC_MAGIK_SQBRACKET_BLOCK
#define wxSTC_MAGIK_UNKNOWN_KEYWORD
#define wxSTC_MAGIK_KEYWORD
#define wxSTC_MAGIK_PRAGMA
#define wxSTC_MAGIK_SYMBOL

// Lexical state for SCLEX_POWERSHELL
#define wxSTC_POWERSHELL_DEFAULT
#define wxSTC_POWERSHELL_COMMENT
#define wxSTC_POWERSHELL_STRING
#define wxSTC_POWERSHELL_CHARACTER
#define wxSTC_POWERSHELL_NUMBER
#define wxSTC_POWERSHELL_VARIABLE
#define wxSTC_POWERSHELL_OPERATOR
#define wxSTC_POWERSHELL_IDENTIFIER
#define wxSTC_POWERSHELL_KEYWORD
#define wxSTC_POWERSHELL_CMDLET
#define wxSTC_POWERSHELL_ALIAS
#define wxSTC_POWERSHELL_FUNCTION
#define wxSTC_POWERSHELL_USER1
#define wxSTC_POWERSHELL_COMMENTSTREAM

// Lexical state for SCLEX_MYSQL
#define wxSTC_MYSQL_DEFAULT
#define wxSTC_MYSQL_COMMENT
#define wxSTC_MYSQL_COMMENTLINE
#define wxSTC_MYSQL_VARIABLE
#define wxSTC_MYSQL_SYSTEMVARIABLE
#define wxSTC_MYSQL_KNOWNSYSTEMVARIABLE
#define wxSTC_MYSQL_NUMBER
#define wxSTC_MYSQL_MAJORKEYWORD
#define wxSTC_MYSQL_KEYWORD
#define wxSTC_MYSQL_DATABASEOBJECT
#define wxSTC_MYSQL_PROCEDUREKEYWORD
#define wxSTC_MYSQL_STRING
#define wxSTC_MYSQL_SQSTRING
#define wxSTC_MYSQL_DQSTRING
#define wxSTC_MYSQL_OPERATOR
#define wxSTC_MYSQL_FUNCTION
#define wxSTC_MYSQL_IDENTIFIER
#define wxSTC_MYSQL_QUOTEDIDENTIFIER
#define wxSTC_MYSQL_USER1
#define wxSTC_MYSQL_USER2
#define wxSTC_MYSQL_USER3
#define wxSTC_MYSQL_HIDDENCOMMAND

// Lexical state for SCLEX_PO
#define wxSTC_PO_DEFAULT
#define wxSTC_PO_COMMENT
#define wxSTC_PO_MSGID
#define wxSTC_PO_MSGID_TEXT
#define wxSTC_PO_MSGSTR
#define wxSTC_PO_MSGSTR_TEXT
#define wxSTC_PO_MSGCTXT
#define wxSTC_PO_MSGCTXT_TEXT
#define wxSTC_PO_FUZZY

// Lexical states for SCLEX_PASCAL
#define wxSTC_PAS_DEFAULT
#define wxSTC_PAS_IDENTIFIER
#define wxSTC_PAS_COMMENT
#define wxSTC_PAS_COMMENT2
#define wxSTC_PAS_COMMENTLINE
#define wxSTC_PAS_PREPROCESSOR
#define wxSTC_PAS_PREPROCESSOR2
#define wxSTC_PAS_NUMBER
#define wxSTC_PAS_HEXNUMBER
#define wxSTC_PAS_WORD
#define wxSTC_PAS_STRING
#define wxSTC_PAS_STRINGEOL
#define wxSTC_PAS_CHARACTER
#define wxSTC_PAS_OPERATOR
#define wxSTC_PAS_ASM

// Lexical state for SCLEX_SORCUS
#define wxSTC_SORCUS_DEFAULT
#define wxSTC_SORCUS_COMMAND
#define wxSTC_SORCUS_PARAMETER
#define wxSTC_SORCUS_COMMENTLINE
#define wxSTC_SORCUS_STRING
#define wxSTC_SORCUS_STRINGEOL
#define wxSTC_SORCUS_IDENTIFIER
#define wxSTC_SORCUS_OPERATOR
#define wxSTC_SORCUS_NUMBER
#define wxSTC_SORCUS_CONSTANT

// Lexical state for SCLEX_POWERPRO
#define wxSTC_POWERPRO_DEFAULT
#define wxSTC_POWERPRO_COMMENTBLOCK
#define wxSTC_POWERPRO_COMMENTLINE
#define wxSTC_POWERPRO_NUMBER
#define wxSTC_POWERPRO_WORD
#define wxSTC_POWERPRO_WORD2
#define wxSTC_POWERPRO_WORD3
#define wxSTC_POWERPRO_WORD4
#define wxSTC_POWERPRO_DOUBLEQUOTEDSTRING
#define wxSTC_POWERPRO_SINGLEQUOTEDSTRING
#define wxSTC_POWERPRO_LINECONTINUE
#define wxSTC_POWERPRO_OPERATOR
#define wxSTC_POWERPRO_IDENTIFIER
#define wxSTC_POWERPRO_STRINGEOL
#define wxSTC_POWERPRO_VERBATIM
#define wxSTC_POWERPRO_ALTQUOTE
#define wxSTC_POWERPRO_FUNCTION

// Lexical states for SCLEX_SML
#define wxSTC_SML_DEFAULT
#define wxSTC_SML_IDENTIFIER
#define wxSTC_SML_TAGNAME
#define wxSTC_SML_KEYWORD
#define wxSTC_SML_KEYWORD2
#define wxSTC_SML_KEYWORD3
#define wxSTC_SML_LINENUM
#define wxSTC_SML_OPERATOR
#define wxSTC_SML_NUMBER
#define wxSTC_SML_CHAR
#define wxSTC_SML_STRING
#define wxSTC_SML_COMMENT
#define wxSTC_SML_COMMENT1
#define wxSTC_SML_COMMENT2
#define wxSTC_SML_COMMENT3

// Lexical state for SCLEX_MARKDOWN
#define wxSTC_MARKDOWN_DEFAULT
#define wxSTC_MARKDOWN_LINE_BEGIN
#define wxSTC_MARKDOWN_STRONG1
#define wxSTC_MARKDOWN_STRONG2
#define wxSTC_MARKDOWN_EM1
#define wxSTC_MARKDOWN_EM2
#define wxSTC_MARKDOWN_HEADER1
#define wxSTC_MARKDOWN_HEADER2
#define wxSTC_MARKDOWN_HEADER3
#define wxSTC_MARKDOWN_HEADER4
#define wxSTC_MARKDOWN_HEADER5
#define wxSTC_MARKDOWN_HEADER6
#define wxSTC_MARKDOWN_PRECHAR
#define wxSTC_MARKDOWN_ULIST_ITEM
#define wxSTC_MARKDOWN_OLIST_ITEM
#define wxSTC_MARKDOWN_BLOCKQUOTE
#define wxSTC_MARKDOWN_STRIKEOUT
#define wxSTC_MARKDOWN_HRULE
#define wxSTC_MARKDOWN_LINK
#define wxSTC_MARKDOWN_CODE
#define wxSTC_MARKDOWN_CODE2
#define wxSTC_MARKDOWN_CODEBK

// Lexical state for SCLEX_TXT2TAGS
#define wxSTC_TXT2TAGS_DEFAULT
#define wxSTC_TXT2TAGS_LINE_BEGIN
#define wxSTC_TXT2TAGS_STRONG1
#define wxSTC_TXT2TAGS_STRONG2
#define wxSTC_TXT2TAGS_EM1
#define wxSTC_TXT2TAGS_EM2
#define wxSTC_TXT2TAGS_HEADER1
#define wxSTC_TXT2TAGS_HEADER2
#define wxSTC_TXT2TAGS_HEADER3
#define wxSTC_TXT2TAGS_HEADER4
#define wxSTC_TXT2TAGS_HEADER5
#define wxSTC_TXT2TAGS_HEADER6
#define wxSTC_TXT2TAGS_PRECHAR
#define wxSTC_TXT2TAGS_ULIST_ITEM
#define wxSTC_TXT2TAGS_OLIST_ITEM
#define wxSTC_TXT2TAGS_BLOCKQUOTE
#define wxSTC_TXT2TAGS_STRIKEOUT
#define wxSTC_TXT2TAGS_HRULE
#define wxSTC_TXT2TAGS_LINK
#define wxSTC_TXT2TAGS_CODE
#define wxSTC_TXT2TAGS_CODE2
#define wxSTC_TXT2TAGS_CODEBK
#define wxSTC_TXT2TAGS_COMMENT
#define wxSTC_TXT2TAGS_OPTION
#define wxSTC_TXT2TAGS_PREPROC
#define wxSTC_TXT2TAGS_POSTPROC

// Lexical states for SCLEX_A68K
#define wxSTC_A68K_DEFAULT
#define wxSTC_A68K_COMMENT
#define wxSTC_A68K_NUMBER_DEC
#define wxSTC_A68K_NUMBER_BIN
#define wxSTC_A68K_NUMBER_HEX
#define wxSTC_A68K_STRING1
#define wxSTC_A68K_OPERATOR
#define wxSTC_A68K_CPUINSTRUCTION
#define wxSTC_A68K_EXTINSTRUCTION
#define wxSTC_A68K_REGISTER
#define wxSTC_A68K_DIRECTIVE
#define wxSTC_A68K_MACRO_ARG
#define wxSTC_A68K_LABEL
#define wxSTC_A68K_STRING2
#define wxSTC_A68K_IDENTIFIER
#define wxSTC_A68K_MACRO_DECLARATION
#define wxSTC_A68K_COMMENT_WORD
#define wxSTC_A68K_COMMENT_SPECIAL
#define wxSTC_A68K_COMMENT_DOXYGEN

// Lexical states for SCLEX_MODULA
#define wxSTC_MODULA_DEFAULT
#define wxSTC_MODULA_COMMENT
#define wxSTC_MODULA_DOXYCOMM
#define wxSTC_MODULA_DOXYKEY
#define wxSTC_MODULA_KEYWORD
#define wxSTC_MODULA_RESERVED
#define wxSTC_MODULA_NUMBER
#define wxSTC_MODULA_BASENUM
#define wxSTC_MODULA_FLOAT
#define wxSTC_MODULA_STRING
#define wxSTC_MODULA_STRSPEC
#define wxSTC_MODULA_CHAR
#define wxSTC_MODULA_CHARSPEC
#define wxSTC_MODULA_PROC
#define wxSTC_MODULA_PRAGMA
#define wxSTC_MODULA_PRGKEY
#define wxSTC_MODULA_OPERATOR
#define wxSTC_MODULA_BADSTR

// Lexical states for SCLEX_COFFEESCRIPT
#define wxSTC_COFFEESCRIPT_DEFAULT
#define wxSTC_COFFEESCRIPT_COMMENT
#define wxSTC_COFFEESCRIPT_COMMENTLINE
#define wxSTC_COFFEESCRIPT_COMMENTDOC
#define wxSTC_COFFEESCRIPT_NUMBER
#define wxSTC_COFFEESCRIPT_WORD
#define wxSTC_COFFEESCRIPT_STRING
#define wxSTC_COFFEESCRIPT_CHARACTER
#define wxSTC_COFFEESCRIPT_UUID
#define wxSTC_COFFEESCRIPT_PREPROCESSOR
#define wxSTC_COFFEESCRIPT_OPERATOR
#define wxSTC_COFFEESCRIPT_IDENTIFIER
#define wxSTC_COFFEESCRIPT_STRINGEOL
#define wxSTC_COFFEESCRIPT_VERBATIM
#define wxSTC_COFFEESCRIPT_REGEX
#define wxSTC_COFFEESCRIPT_COMMENTLINEDOC
#define wxSTC_COFFEESCRIPT_WORD2
#define wxSTC_COFFEESCRIPT_COMMENTDOCKEYWORD
#define wxSTC_COFFEESCRIPT_COMMENTDOCKEYWORDERROR
#define wxSTC_COFFEESCRIPT_GLOBALCLASS
#define wxSTC_COFFEESCRIPT_STRINGRAW
#define wxSTC_COFFEESCRIPT_TRIPLEVERBATIM
#define wxSTC_COFFEESCRIPT_HASHQUOTEDSTRING
#define wxSTC_COFFEESCRIPT_COMMENTBLOCK
#define wxSTC_COFFEESCRIPT_VERBOSE_REGEX
#define wxSTC_COFFEESCRIPT_VERBOSE_REGEX_COMMENT

// Lexical states for SCLEX_AVS
#define wxSTC_AVS_DEFAULT
#define wxSTC_AVS_COMMENTBLOCK
#define wxSTC_AVS_COMMENTBLOCKN
#define wxSTC_AVS_COMMENTLINE
#define wxSTC_AVS_NUMBER
#define wxSTC_AVS_OPERATOR
#define wxSTC_AVS_IDENTIFIER
#define wxSTC_AVS_STRING
#define wxSTC_AVS_TRIPLESTRING
#define wxSTC_AVS_KEYWORD
#define wxSTC_AVS_FILTER 
#define wxSTC_AVS_PLUGIN
#define wxSTC_AVS_FUNCTION
#define wxSTC_AVS_CLIPPROP
#define wxSTC_AVS_USERDFN

// Lexical states for SCLEX_ECL
#define wxSTC_ECL_DEFAULT
#define wxSTC_ECL_COMMENT
#define wxSTC_ECL_COMMENTLINE
#define wxSTC_ECL_NUMBER
#define wxSTC_ECL_STRING
#define wxSTC_ECL_WORD0
#define wxSTC_ECL_OPERATOR
#define wxSTC_ECL_CHARACTER
#define wxSTC_ECL_UUID
#define wxSTC_ECL_PREPROCESSOR
#define wxSTC_ECL_UNKNOWN
#define wxSTC_ECL_IDENTIFIER
#define wxSTC_ECL_STRINGEOL
#define wxSTC_ECL_VERBATIM
#define wxSTC_ECL_REGEX
#define wxSTC_ECL_COMMENTLINEDOC
#define wxSTC_ECL_WORD1
#define wxSTC_ECL_COMMENTDOCKEYWORD
#define wxSTC_ECL_COMMENTDOCKEYWORDERROR
#define wxSTC_ECL_WORD2
#define wxSTC_ECL_WORD3
#define wxSTC_ECL_WORD4
#define wxSTC_ECL_WORD5
#define wxSTC_ECL_COMMENTDOC
#define wxSTC_ECL_ADDED
#define wxSTC_ECL_DELETED
#define wxSTC_ECL_CHANGED
#define wxSTC_ECL_MOVED

// Lexical states for SCLEX_OSCRIPT
#define wxSTC_OSCRIPT_DEFAULT
#define wxSTC_OSCRIPT_LINE_COMMENT
#define wxSTC_OSCRIPT_BLOCK_COMMENT
#define wxSTC_OSCRIPT_DOC_COMMENT
#define wxSTC_OSCRIPT_PREPROCESSOR
#define wxSTC_OSCRIPT_NUMBER
#define wxSTC_OSCRIPT_SINGLEQUOTE_STRING
#define wxSTC_OSCRIPT_DOUBLEQUOTE_STRING
#define wxSTC_OSCRIPT_CONSTANT
#define wxSTC_OSCRIPT_IDENTIFIER
#define wxSTC_OSCRIPT_GLOBAL
#define wxSTC_OSCRIPT_KEYWORD
#define wxSTC_OSCRIPT_OPERATOR
#define wxSTC_OSCRIPT_LABEL
#define wxSTC_OSCRIPT_TYPE
#define wxSTC_OSCRIPT_FUNCTION
#define wxSTC_OSCRIPT_OBJECT
#define wxSTC_OSCRIPT_PROPERTY
#define wxSTC_OSCRIPT_METHOD

// Lexical states for SCLEX_VISUALPROLOG
#define wxSTC_VISUALPROLOG_DEFAULT
#define wxSTC_VISUALPROLOG_KEY_MAJOR
#define wxSTC_VISUALPROLOG_KEY_MINOR
#define wxSTC_VISUALPROLOG_KEY_DIRECTIVE
#define wxSTC_VISUALPROLOG_COMMENT_BLOCK
#define wxSTC_VISUALPROLOG_COMMENT_LINE
#define wxSTC_VISUALPROLOG_COMMENT_KEY
#define wxSTC_VISUALPROLOG_COMMENT_KEY_ERROR
#define wxSTC_VISUALPROLOG_IDENTIFIER
#define wxSTC_VISUALPROLOG_VARIABLE
#define wxSTC_VISUALPROLOG_ANONYMOUS
#define wxSTC_VISUALPROLOG_NUMBER
#define wxSTC_VISUALPROLOG_OPERATOR
#define wxSTC_VISUALPROLOG_CHARACTER
#define wxSTC_VISUALPROLOG_CHARACTER_TOO_MANY
#define wxSTC_VISUALPROLOG_CHARACTER_ESCAPE_ERROR
#define wxSTC_VISUALPROLOG_STRING
#define wxSTC_VISUALPROLOG_STRING_ESCAPE
#define wxSTC_VISUALPROLOG_STRING_ESCAPE_ERROR
#define wxSTC_VISUALPROLOG_STRING_EOL_OPEN
#define wxSTC_VISUALPROLOG_STRING_VERBATIM
#define wxSTC_VISUALPROLOG_STRING_VERBATIM_SPECIAL
#define wxSTC_VISUALPROLOG_STRING_VERBATIM_EOL

#endif //%wxchkver_2_9_5



//-----------------------------------------
// Commands that can be bound to keystrokes


// Redoes the next action on the undo history.
#define wxSTC_CMD_REDO

// Select all the text in the document.
#define wxSTC_CMD_SELECTALL

// Undo one action in the undo history.
#define wxSTC_CMD_UNDO

// Cut the selection to the clipboard.
#define wxSTC_CMD_CUT

// Copy the selection to the clipboard.
#define wxSTC_CMD_COPY

// Paste the contents of the clipboard into the document replacing the selection.
#define wxSTC_CMD_PASTE

// Clear the selection.
#define wxSTC_CMD_CLEAR

// Move caret down one line.
#define wxSTC_CMD_LINEDOWN

// Move caret down one line extending selection to new caret position.
#define wxSTC_CMD_LINEDOWNEXTEND

// Move caret up one line.
#define wxSTC_CMD_LINEUP

// Move caret up one line extending selection to new caret position.
#define wxSTC_CMD_LINEUPEXTEND

// Move caret left one character.
#define wxSTC_CMD_CHARLEFT

// Move caret left one character extending selection to new caret position.
#define wxSTC_CMD_CHARLEFTEXTEND

// Move caret right one character.
#define wxSTC_CMD_CHARRIGHT

// Move caret right one character extending selection to new caret position.
#define wxSTC_CMD_CHARRIGHTEXTEND

// Move caret left one word.
#define wxSTC_CMD_WORDLEFT

// Move caret left one word extending selection to new caret position.
#define wxSTC_CMD_WORDLEFTEXTEND

// Move caret right one word.
#define wxSTC_CMD_WORDRIGHT

// Move caret right one word extending selection to new caret position.
#define wxSTC_CMD_WORDRIGHTEXTEND

// Move caret to first position on line.
#define wxSTC_CMD_HOME

// Move caret to first position on line extending selection to new caret position.
#define wxSTC_CMD_HOMEEXTEND

// Move caret to last position on line.
#define wxSTC_CMD_LINEEND

// Move caret to last position on line extending selection to new caret position.
#define wxSTC_CMD_LINEENDEXTEND

// Move caret to first position in document.
#define wxSTC_CMD_DOCUMENTSTART

// Move caret to first position in document extending selection to new caret position.
#define wxSTC_CMD_DOCUMENTSTARTEXTEND

// Move caret to last position in document.
#define wxSTC_CMD_DOCUMENTEND

// Move caret to last position in document extending selection to new caret position.
#define wxSTC_CMD_DOCUMENTENDEXTEND

// Move caret one page up.
#define wxSTC_CMD_PAGEUP

// Move caret one page up extending selection to new caret position.
#define wxSTC_CMD_PAGEUPEXTEND

// Move caret one page down.
#define wxSTC_CMD_PAGEDOWN

// Move caret one page down extending selection to new caret position.
#define wxSTC_CMD_PAGEDOWNEXTEND

// Switch from insert to overtype mode or the reverse.
#define wxSTC_CMD_EDITTOGGLEOVERTYPE

// Cancel any modes such as call tip or auto-completion list display.
#define wxSTC_CMD_CANCEL

// Delete the selection or if no selection, the character before the caret.
#define wxSTC_CMD_DELETEBACK

// If selection is empty or all on one line replace the selection with a tab character.
// If more than one line selected, indent the lines.
#define wxSTC_CMD_TAB

// Dedent the selected lines.
#define wxSTC_CMD_BACKTAB

// Insert a new line, may use a CRLF, CR or LF depending on EOL mode.
#define wxSTC_CMD_NEWLINE

// Insert a Form Feed character.
#define wxSTC_CMD_FORMFEED

// Move caret to before first visible character on line.
// If already there move to first character on line.
#define wxSTC_CMD_VCHOME

// Like VCHome but extending selection to new caret position.
#define wxSTC_CMD_VCHOMEEXTEND

// Magnify the displayed text by increasing the sizes by 1 point.
#define wxSTC_CMD_ZOOMIN

// Make the displayed text smaller by decreasing the sizes by 1 point.
#define wxSTC_CMD_ZOOMOUT

// Delete the word to the left of the caret.
#define wxSTC_CMD_DELWORDLEFT

// Delete the word to the right of the caret.
#define wxSTC_CMD_DELWORDRIGHT

// Delete the word to the right of the caret, but not the trailing non-word characters.
%wxchkver_2_9_5 #define wxSTC_CMD_DELWORDRIGHTEND

// Cut the line containing the caret.
#define wxSTC_CMD_LINECUT

// Delete the line containing the caret.
#define wxSTC_CMD_LINEDELETE

// Switch the current line with the previous.
#define wxSTC_CMD_LINETRANSPOSE

// Duplicate the current line.
#define wxSTC_CMD_LINEDUPLICATE

// Transform the selection to lower case.
#define wxSTC_CMD_LOWERCASE

// Transform the selection to upper case.
#define wxSTC_CMD_UPPERCASE

// Scroll the document down, keeping the caret visible.
#define wxSTC_CMD_LINESCROLLDOWN

// Scroll the document up, keeping the caret visible.
#define wxSTC_CMD_LINESCROLLUP

// Delete the selection or if no selection, the character before the caret.
// Will not delete the character before at the start of a line.
#define wxSTC_CMD_DELETEBACKNOTLINE

// Move caret to first position on display line.
#define wxSTC_CMD_HOMEDISPLAY

// Move caret to first position on display line extending selection to
// new caret position.
#define wxSTC_CMD_HOMEDISPLAYEXTEND

// Move caret to last position on display line.
#define wxSTC_CMD_LINEENDDISPLAY

// Move caret to last position on display line extending selection to new
// caret position.
#define wxSTC_CMD_LINEENDDISPLAYEXTEND

// These are like their namesakes Home(Extend)?, LineEnd(Extend)?, VCHome(Extend)?
// except they behave differently when word-wrap is enabled:
// They go first to the start / end of the display line, like (Home|LineEnd)Display
// The difference is that, the cursor is already at the point, it goes on to the start
// or end of the document line, as appropriate for (Home|LineEnd|VCHome)(Extend)?.
#define wxSTC_CMD_HOMEWRAP
#define wxSTC_CMD_HOMEWRAPEXTEND
#define wxSTC_CMD_LINEENDWRAP
#define wxSTC_CMD_LINEENDWRAPEXTEND
#define wxSTC_CMD_VCHOMEWRAP
#define wxSTC_CMD_VCHOMEWRAPEXTEND

// Copy the line containing the caret.
#define wxSTC_CMD_LINECOPY

// Move to the previous change in capitalisation.
#define wxSTC_CMD_WORDPARTLEFT

// Move to the previous change in capitalisation extending selection
// to new caret position.
#define wxSTC_CMD_WORDPARTLEFTEXTEND

// Move to the change next in capitalisation.
#define wxSTC_CMD_WORDPARTRIGHT

// Move to the next change in capitalisation extending selection
// to new caret position.
#define wxSTC_CMD_WORDPARTRIGHTEXTEND

// Delete back from the current position to the start of the line.
#define wxSTC_CMD_DELLINELEFT

// Delete forwards from the current position to the end of the line.
#define wxSTC_CMD_DELLINERIGHT

// Move caret between paragraphs (delimited by empty lines).
#define wxSTC_CMD_PARADOWN
#define wxSTC_CMD_PARADOWNEXTEND
#define wxSTC_CMD_PARAUP
#define wxSTC_CMD_PARAUPEXTEND

// Move caret down one line, extending rectangular selection to new caret position.
#define wxSTC_CMD_LINEDOWNRECTEXTEND

// Move caret up one line, extending rectangular selection to new caret position.
#define wxSTC_CMD_LINEUPRECTEXTEND

// Move caret left one character, extending rectangular selection to new caret position.
#define wxSTC_CMD_CHARLEFTRECTEXTEND

// Move caret right one character, extending rectangular selection to new caret position.
#define wxSTC_CMD_CHARRIGHTRECTEXTEND

// Move caret to first position on line, extending rectangular selection to new caret position.
#define wxSTC_CMD_HOMERECTEXTEND

// Move caret to before first visible character on line.
// If already there move to first character on line.
// In either case, extend rectangular selection to new caret position.
#define wxSTC_CMD_VCHOMERECTEXTEND

// Move caret to last position on line, extending rectangular selection to new caret position.
#define wxSTC_CMD_LINEENDRECTEXTEND

// Move caret one page up, extending rectangular selection to new caret position.
#define wxSTC_CMD_PAGEUPRECTEXTEND

// Move caret one page down, extending rectangular selection to new caret position.
#define wxSTC_CMD_PAGEDOWNRECTEXTEND

// Move caret to top of page, or one page up if already at top of page.
#define wxSTC_CMD_STUTTEREDPAGEUP

// Move caret to top of page, or one page up if already at top of page, extending selection to new caret position.
#define wxSTC_CMD_STUTTEREDPAGEUPEXTEND

// Move caret to bottom of page, or one page down if already at bottom of page.
#define wxSTC_CMD_STUTTEREDPAGEDOWN

// Move caret to bottom of page, or one page down if already at bottom of page, extending selection to new caret position.
#define wxSTC_CMD_STUTTEREDPAGEDOWNEXTEND

// Move caret left one word, position cursor at end of word.
#define wxSTC_CMD_WORDLEFTEND

// Move caret left one word, position cursor at end of word, extending selection to new caret position.
#define wxSTC_CMD_WORDLEFTENDEXTEND

// Move caret right one word, position cursor at end of word.
#define wxSTC_CMD_WORDRIGHTEND

// Move caret right one word, position cursor at end of word, extending selection to new caret position.
#define wxSTC_CMD_WORDRIGHTENDEXTEND

// Centre current line in window.
%wxchkver_2_9_5 #define wxSTC_CMD_VERTICALCENTRECARET

// Move the selected lines up one line, shifting the line above after the selection
%wxchkver_2_9_5 #define wxSTC_CMD_MOVESELECTEDLINESUP

// Move the selected lines down one line, shifting the line below before the selection
%wxchkver_2_9_5 #define wxSTC_CMD_MOVESELECTEDLINESDOWN

// Scroll to start of document.
%wxchkver_2_9_5 #define wxSTC_CMD_SCROLLTOSTART

// Scroll to end of document.
%wxchkver_2_9_5 #define wxSTC_CMD_SCROLLTOEND


///////////////////////////////////////////////////////////////////////////////
// wxStyledTextCtrl

class wxStyledTextCtrl : public wxControl
{
    wxStyledTextCtrl(wxWindow *parent, wxWindowID id, const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize, long style = 0, const wxString &name = "wxStyledTextCtrl" );


//}}}
//----------------------------------------------------------------------
// BEGIN generated section.  The following code is automatically generated
//       by gen_iface.py.  Do not edit this file.  Edit stc.h.in instead
//       and regenerate


    // Add text to the document at current position.
    void AddText(const wxString& text);

    // Add array of cells to document.
    //void AddStyledText(const wxMemoryBuffer& data);

    // Insert string at a position.
    void InsertText(int pos, const wxString& text);

    // Delete all text in the document.
    void ClearAll();

    // Delete a range of text in the document.
    %wxchkver_2_9_5 void DeleteRange(int pos, int deleteLength);

    // Set all style bytes to 0, remove all folding information.
    void ClearDocumentStyle();

    // Returns the number of bytes in the document.
    int GetLength() const;

    // Returns the character byte at the position.
    int GetCharAt(int pos) const;

    // Returns the position of the caret.
    int GetCurrentPos() const;

    // Returns the position of the opposite end of the selection to the caret.
    int GetAnchor() const;

    // Returns the style byte at the position.
    int GetStyleAt(int pos) const;

    // Redoes the next action on the undo history.
    void Redo();

    // Choose between collecting actions into the undo
    // history and discarding them.
    void SetUndoCollection(bool collectUndo);

    // Select all the text in the document.
    void SelectAll();

    // Remember the current position in the undo history as the position
    // at which the document was saved.
    void SetSavePoint();

    // Retrieve a buffer of cells.
    //wxMemoryBuffer GetStyledText(int startPos, int endPos);

    // Are there any redoable actions in the undo history?
    bool CanRedo() const;

    // Retrieve the line number at which a particular marker is located.
    int MarkerLineFromHandle(int handle);

    // Delete a marker.
    void MarkerDeleteHandle(int handle);

    // Is undo history being collected?
    bool GetUndoCollection() const;

    // Are white space characters currently visible?
    // Returns one of SCWS_* constants.
    int GetViewWhiteSpace() const;

    // Make white space characters invisible, always visible or visible outside indentation.
    void SetViewWhiteSpace(int viewWS);

    // Find the position from a point within the window.
    int PositionFromPoint(const wxPoint& pt) const;

    // Find the position from a point within the window but return
    // INVALID_POSITION if not close to text.
    int PositionFromPointClose(int x, int y);

    // Set caret to start of a line and ensure it is visible.
    void GotoLine(int line);

    // Set caret to a position and ensure it is visible.
    void GotoPos(int pos);

    // Set the selection anchor to a position. The anchor is the opposite
    // end of the selection from the caret.
    void SetAnchor(int posAnchor);

    // Retrieve the text of the line containing the caret.
    // Returns the index of the caret on the line.
//#ifdef SWIG
//    wxString GetCurLine(int* OUTPUT);
//#else
    // %override [int linePos] wxStyledTextCtrl::GetCurLine( );
    // C++ Func: wxString GetCurLine(int* linePos=NULL);
    wxString GetCurLine();
//#endif

    // Retrieve the position of the last correctly styled character.
    int GetEndStyled() const;

    // Convert all line endings in the document to one mode.
    void ConvertEOLs(int eolMode);

    // Retrieve the current end of line mode - one of CRLF, CR, or LF.
    int GetEOLMode() const;

    // Set the current end of line mode.
    void SetEOLMode(int eolMode);

    // Set the current styling position to pos and the styling mask to mask.
    // The styling mask can be used to protect some bits in each styling byte from modification.
    void StartStyling(int pos, unsigned int mask); // wxLua - mask is unsigned to keep all the bits

    // Change style from current styling position for length characters to a style
    // and move the current styling position to after this newly styled segment.
    void SetStyling(int length, int style);

    // Is drawing done first into a buffer or direct to the screen?
    bool GetBufferedDraw() const;

    // If drawing is buffered then each line of text is drawn into a bitmap buffer
    // before drawing it to the screen to avoid flicker.
    void SetBufferedDraw(bool buffered);

    // Change the visible size of a tab to be a multiple of the width of a space character.
    void SetTabWidth(int tabWidth);

    // Retrieve the visible size of a tab.
    int GetTabWidth() const;

    // Set the code page used to interpret the bytes of the document as characters.
    void SetCodePage(int codePage);

    // Set the symbol used for a particular marker number,
    // and optionally the fore and background colours.
    void MarkerDefine(int markerNumber, int markerSymbol, const wxColour& foreground = wxNullColour, const wxColour& background = wxNullColour);

    // Set the foreground colour used for a particular marker number.
    void MarkerSetForeground(int markerNumber, const wxColour& fore);

    // Set the background colour used for a particular marker number.
    void MarkerSetBackground(int markerNumber, const wxColour& back);

    // Set the background colour used for a particular marker number when its folding block is selected.
    %wxchkver_2_9_5 void MarkerSetBackgroundSelected(int markerNumber, const wxColour& back);

    // Enable/disable highlight for current folding bloc (smallest one that contains the caret)
    %wxchkver_2_9_5 void MarkerEnableHighlight(bool enabled);

    // Add a marker to a line, returning an ID which can be used to find or delete the marker.
    int MarkerAdd(int line, int markerNumber);

    // Delete a marker from a line.
    void MarkerDelete(int line, int markerNumber);

    // Delete all markers with a particular number from all lines.
    void MarkerDeleteAll(int markerNumber);

    // Get a bit mask of all the markers set on a line.
    unsigned int MarkerGet(int line); // wxLua - mask is unsigned to keep all the bits

    // Find the next line at or after lineStart that includes a marker in mask.
    // Return -1 when no more lines.
    int MarkerNext(int lineStart, unsigned int markerMask); // wxLua - mask is unsigned to keep all the bits

    // Find the previous line before lineStart that includes a marker in mask.
    int MarkerPrevious(int lineStart, unsigned int markerMask); // wxLua - mask is unsigned to keep all the bits

    // Define a marker from a bitmap
    void MarkerDefineBitmap(int markerNumber, const wxBitmap& bmp);

    // Add a set of markers to a line.
    void MarkerAddSet(int line, int set);

    // Set the alpha used for a marker that is drawn in the text area, not the margin.
    %wxchkver_2_8_12 void MarkerSetAlpha(int markerNumber, int alpha);

    // Set a margin to be either numeric or symbolic.
    void SetMarginType(int margin, int marginType);

    // Retrieve the type of a margin.
    int GetMarginType(int margin) const;

    // Set the width of a margin to a width expressed in pixels.
    void SetMarginWidth(int margin, int pixelWidth);

    // Retrieve the width of a margin in pixels.
    int GetMarginWidth(int margin) const;

    // Set a mask that determines which markers are displayed in a margin.
    void SetMarginMask(int margin, unsigned int mask); // NOTE: wxSTC has "int mask", but we need all the bits so we force uint

    // Retrieve the marker mask of a margin.
    unsigned int GetMarginMask(int margin) const;

    // Make a margin sensitive or insensitive to mouse clicks.
    void SetMarginSensitive(int margin, bool sensitive);

    // Retrieve the mouse click sensitivity of a margin.
    bool GetMarginSensitive(int margin) const;

    // Set the cursor shown when the mouse is inside a margin.
    %wxchkver_2_9_5 void SetMarginCursor(int margin, int cursor);

    // Retrieve the cursor shown in a margin.
    %wxchkver_2_9_5 int GetMarginCursor(int margin) const;

    // Clear all the styles and make equivalent to the global default style.
    void StyleClearAll();

    // Set the foreground colour of a style.
    void StyleSetForeground(int style, const wxColour& fore);

    // Set the background colour of a style.
    void StyleSetBackground(int style, const wxColour& back);

    // Set a style to be bold or not.
    void StyleSetBold(int style, bool bold);

    // Set a style to be italic or not.
    void StyleSetItalic(int style, bool italic);

    // Set the size of characters of a style.
    void StyleSetSize(int style, int sizePoints);

    // Set the font of a style.
    void StyleSetFaceName(int style, const wxString& fontName);

    // Set a style to have its end of line filled or not.
    void StyleSetEOLFilled(int style, bool filled);

    // Reset the default style to its state at startup
    void StyleResetDefault();

    // Set a style to be underlined or not.
    void StyleSetUnderline(int style, bool underline);

    // Get the foreground colour of a style.
    %wxchkver_2_9_5 wxColour StyleGetForeground(int style) const;

    // Get the background colour of a style.
    %wxchkver_2_9_5 wxColour StyleGetBackground(int style) const;

    // Get is a style bold or not.
    %wxchkver_2_9_5 bool StyleGetBold(int style) const;

    // Get is a style italic or not.
    %wxchkver_2_9_5 bool StyleGetItalic(int style) const;

    // Get the size of characters of a style.
    %wxchkver_2_9_5 int StyleGetSize(int style) const;

    // Get the font facename of a style
    %wxchkver_2_9_5 wxString StyleGetFaceName(int style);

    // Get is a style to have its end of line filled or not.
    %wxchkver_2_9_5 bool StyleGetEOLFilled(int style) const;

    // Get is a style underlined or not.
    %wxchkver_2_9_5 bool StyleGetUnderline(int style) const;

    // Get is a style mixed case, or to force upper or lower case.
    %wxchkver_2_9_5 int StyleGetCase(int style) const;

    // Get the character set of the font in a style.
    %wxchkver_2_9_5 int StyleGetCharacterSet(int style) const;

    // Get is a style visible or not.
    %wxchkver_2_9_5 bool StyleGetVisible(int style) const;

    // Get is a style changeable or not (read only).
    // Experimental feature, currently buggy.
    %wxchkver_2_9_5 bool StyleGetChangeable(int style) const;

    // Get is a style a hotspot or not.
    %wxchkver_2_9_5 bool StyleGetHotSpot(int style) const;

    // Set a style to be mixed case, or to force upper or lower case.
    void StyleSetCase(int style, int caseForce);

    // Set the size of characters of a style. Size is in points multiplied by 100.
    %wxchkver_2_9_5 void StyleSetSizeFractional(int style, int caseForce);

    // Get the size of characters of a style in points multiplied by 100
    %wxchkver_2_9_5 int StyleGetSizeFractional(int style) const;

    // Set the weight of characters of a style.
    %wxchkver_2_9_5 void StyleSetWeight(int style, int weight);

    // Get the weight of characters of a style.
    %wxchkver_2_9_5 int StyleGetWeight(int style) const;

    // Set a style to be a hotspot or not.
    void StyleSetHotSpot(int style, bool hotspot);

    // Set the foreground colour of the main and additional selections and whether to use this setting.
    void SetSelForeground(bool useSetting, const wxColour& fore);

    // Set the background colour of the main and additional selections and whether to use this setting.
    void SetSelBackground(bool useSetting, const wxColour& back);

    // Get the alpha of the selection.
    %wxchkver_2_8_12 int GetSelAlpha() const;

    // Set the alpha of the selection.
    %wxchkver_2_8_12 void SetSelAlpha(int alpha);

    // Is the selection end of line filled?
    %wxchkver_2_9_5 bool GetSelEOLFilled() const;

    // Set the selection to have its end of line filled or not.
    %wxchkver_2_9_5 void SetSelEOLFilled(bool filled);

    // Set the foreground colour of the caret.
    void SetCaretForeground(const wxColour& fore);

    // When key+modifier combination km is pressed perform msg.
    void CmdKeyAssign(int key, int modifiers, int cmd);

    // When key+modifier combination km is pressed do nothing.
    void CmdKeyClear(int key, int modifiers);

    // Drop all key mappings.
    void CmdKeyClearAll();

    // Set the styles for a segment of the document.

    // %override [Lua string styleBytes] wxStyledTextCtrl::SetStyleBytes(int length, Lua string styleBytes );
    // C++ Func: void SetStyleBytes(int length, char* styleBytes);
    void SetStyleBytes(int length, char* styleBytes);

    // Set a style to be visible or not.
    void StyleSetVisible(int style, bool visible);

    // Get the time in milliseconds that the caret is on and off.
    int GetCaretPeriod() const;

    // Get the time in milliseconds that the caret is on and off. 0 = steady on.
    void SetCaretPeriod(int periodMilliseconds);

    // Set the set of characters making up words for when moving or selecting by word.
    // First sets defaults like SetCharsDefault.
    void SetWordChars(const wxString& characters);

    // Get the set of characters making up words for when moving or selecting by word.
    %wxchkver_2_9_5 wxString GetWordChars() const;

    // Start a sequence of actions that is undone and redone as a unit.
    // May be nested.
    void BeginUndoAction();

    // End a sequence of actions that is undone and redone as a unit.
    void EndUndoAction();

    // Set an indicator to plain, squiggle or TT.
    void IndicatorSetStyle(int indic, int style);

    // Retrieve the style of an indicator.
    int IndicatorGetStyle(int indic) const;

    // Set the foreground colour of an indicator.
    void IndicatorSetForeground(int indic, const wxColour& fore);

    // Retrieve the foreground colour of an indicator.
    wxColour IndicatorGetForeground(int indic) const;

    // Set an indicator to draw under text or over(default).
    %wxchkver_2_9_5 void IndicatorSetUnder(int indic, bool under);

    // Retrieve whether indicator drawn under or over text.
    %wxchkver_2_9_5 bool IndicatorGetUnder(int indic) const;

    // Set the foreground colour of all whitespace and whether to use this setting.
    void SetWhitespaceForeground(bool useSetting, const wxColour& fore);

    // Set the background colour of all whitespace and whether to use this setting.
    void SetWhitespaceBackground(bool useSetting, const wxColour& back);

    // Set the size of the dots used to mark space characters.
    %wxchkver_2_9_5 void SetWhitespaceSize(int size);

    // Get the size of the dots used to mark space characters.
    %wxchkver_2_9_5 int GetWhitespaceSize() const;

    // Divide each styling byte into lexical class bits (default: 5) and indicator
    // bits (default: 3). If a lexer requires more than 32 lexical states, then this
    // is used to expand the possible states.
    void SetStyleBits(int bits);

    // Retrieve number of bits in style bytes used to hold the lexical state.
    int GetStyleBits() const;

    // Used to hold extra styling information for each line.
    void SetLineState(int line, int state);

    // Retrieve the extra styling information for a line.
    int GetLineState(int line) const;

    // Retrieve the last line number that has line state.
    int GetMaxLineState() const;

    // Is the background of the line containing the caret in a different colour?
    bool GetCaretLineVisible() const;

    // Display the background of the line containing the caret in a different colour.
    void SetCaretLineVisible(bool show);

    // Get the colour of the background of the line containing the caret.
    !%wxchkver_2_8 wxColour GetCaretLineBack();
    %wxchkver_2_8  wxColour GetCaretLineBackground() const;

    // Set the colour of the background of the line containing the caret.
    !%wxchkver_2_8 void SetCaretLineBack(const wxColour& back);
    %wxchkver_2_8  void SetCaretLineBackground(const wxColour& back);

    // Set a style to be changeable or not (read only).
    // Experimental feature, currently buggy.
    void StyleSetChangeable(int style, bool changeable);

    // Display a auto-completion list.
    // The lenEntered parameter indicates how many characters before
    // the caret should be used to provide context.
    void AutoCompShow(int lenEntered, const wxString& itemList);

    // Remove the auto-completion list from the screen.
    void AutoCompCancel();

    // Is there an auto-completion list visible?
    bool AutoCompActive();

    // Retrieve the position of the caret when the auto-completion list was displayed.
    int AutoCompPosStart();

    // User has selected an item so remove the list and insert the selection.
    void AutoCompComplete();

    // Define a set of character that when typed cancel the auto-completion list.
    void AutoCompStops(const wxString& characterSet);

    // Change the separator character in the string setting up an auto-completion list.
    // Default is space but can be changed if items contain space.
    void AutoCompSetSeparator(int separatorCharacter);

    // Retrieve the auto-completion list separator character.
    int AutoCompGetSeparator() const;

    // Select the item in the auto-completion list that starts with a string.
    void AutoCompSelect(const wxString& text);

    // Should the auto-completion list be cancelled if the user backspaces to a
    // position before where the box was created.
    void AutoCompSetCancelAtStart(bool cancel);

    // Retrieve whether auto-completion cancelled by backspacing before start.
    bool AutoCompGetCancelAtStart() const;

    // Define a set of characters that when typed will cause the autocompletion to
    // choose the selected item.
    void AutoCompSetFillUps(const wxString& characterSet);

    // Should a single item auto-completion list automatically choose the item.
    void AutoCompSetChooseSingle(bool chooseSingle);

    // Retrieve whether a single item auto-completion list automatically choose the item.
    bool AutoCompGetChooseSingle() const;

    // Set whether case is significant when performing auto-completion searches.
    void AutoCompSetIgnoreCase(bool ignoreCase);

    // Retrieve state of ignore case flag.
    bool AutoCompGetIgnoreCase() const;

    // Display a list of strings and send notification when user chooses one.
    void UserListShow(int listType, const wxString& itemList);

    // Set whether or not autocompletion is hidden automatically when nothing matches.
    void AutoCompSetAutoHide(bool autoHide);

    // Retrieve whether or not autocompletion is hidden automatically when nothing matches.
    bool AutoCompGetAutoHide() const;

    // Set whether or not autocompletion deletes any word characters
    // after the inserted text upon completion.
    void AutoCompSetDropRestOfWord(bool dropRestOfWord);

    // Retrieve whether or not autocompletion deletes any word characters
    // after the inserted text upon completion.
    bool AutoCompGetDropRestOfWord() const;

    // Register an image for use in autocompletion lists.
    void RegisterImage(int type, const wxBitmap& bmp);

    // Clear all the registered images.
    void ClearRegisteredImages();

    // Retrieve the auto-completion list type-separator character.
    int AutoCompGetTypeSeparator() const;

    // Change the type-separator character in the string setting up an auto-completion list.
    // Default is '?' but can be changed if items contain '?'.
    void AutoCompSetTypeSeparator(int separatorCharacter);

    // Set the maximum width, in characters, of auto-completion and user lists.
    // Set to 0 to autosize to fit longest item, which is the default.
    void AutoCompSetMaxWidth(int characterCount);

    // Get the maximum width, in characters, of auto-completion and user lists.
    int AutoCompGetMaxWidth() const;

    // Set the maximum height, in rows, of auto-completion and user lists.
    // The default is 5 rows.
    void AutoCompSetMaxHeight(int rowCount);

    // Set the maximum height, in rows, of auto-completion and user lists.
    int AutoCompGetMaxHeight() const;

    // Set the number of spaces used for one level of indentation.
    void SetIndent(int indentSize);

    // Retrieve indentation size.
    int GetIndent() const;

    // Indentation will only use space characters if useTabs is false, otherwise
    // it will use a combination of tabs and spaces.
    void SetUseTabs(bool useTabs);

    // Retrieve whether tabs will be used in indentation.
    bool GetUseTabs() const;

    // Change the indentation of a line to a number of columns.
    void SetLineIndentation(int line, int indentSize);

    // Retrieve the number of columns that a line is indented.
    int GetLineIndentation(int line) const;

    // Retrieve the position before the first non indentation character on a line.
    int GetLineIndentPosition(int line) const;

    // Retrieve the column number of a position, taking tab width into account.
    int GetColumn(int pos) const;

    // Count characters between two positions.
    %wxchkver_2_9_5 int CountCharacters(int startPos, int endPos);

    // Show or hide the horizontal scroll bar.
    void SetUseHorizontalScrollBar(bool show);

    // Is the horizontal scroll bar visible?
    bool GetUseHorizontalScrollBar() const;

    // Show or hide indentation guides.
    !%wxchkver_2_9_5 void SetIndentationGuides(bool show);
    %wxchkver_2_9_5 void SetIndentationGuides(int indentView);

    // Are the indentation guides visible?
    !%wxchkver_2_9_5 bool GetIndentationGuides();
    %wxchkver_2_9_5 int GetIndentationGuides();

    // Set the highlighted indentation guide column.
    // 0 = no highlighted guide.
    void SetHighlightGuide(int column);

    // Get the highlighted indentation guide column.
    int GetHighlightGuide() const;

    // Get the position after the last visible characters on a line.
    int GetLineEndPosition(int line) const;

    // Get the code page used to interpret the bytes of the document as characters.
    int GetCodePage() const;

    // Get the foreground colour of the caret.
    wxColour GetCaretForeground() const;

    // In read-only mode?
    bool GetReadOnly() const;

    // Sets the position of the caret.
    void SetCurrentPos(int pos);

    // Sets the position that starts the selection - this becomes the anchor.
    void SetSelectionStart(int pos);

    // Returns the position at the start of the selection.
    int GetSelectionStart() const;

    // Sets the position that ends the selection - this becomes the currentPosition.
    void SetSelectionEnd(int pos);

    // Returns the position at the end of the selection.
    int GetSelectionEnd() const;

    // Set caret to a position, while removing any existing selection.
    %wxchkver_2_9_5 void SetEmptySelection(int pos);

    // Sets the print magnification added to the point size of each style for printing.
    void SetPrintMagnification(int magnification);

    // Returns the print magnification.
    int GetPrintMagnification() const;

    // Modify colours when printing for clearer printed text.
    void SetPrintColourMode(int mode);

    // Returns the print colour mode.
    int GetPrintColourMode() const;

    // Find some text in the document.
    int FindText(int minPos, int maxPos, const wxString& text, int flags=0);

    // On Windows, will draw the document into a display context such as a printer.
    int FormatRange(bool   doDraw, int    startPos, int    endPos, wxDC*  draw, wxDC*  target,  const wxRect& renderRect, const wxRect& pageRect);

    // Retrieve the display line at the top of the display.
    int GetFirstVisibleLine() const;

    // Retrieve the contents of a line.
    wxString GetLine(int line) const;

    // Returns the number of lines in the document. There is always at least one.
    int GetLineCount() const;

    // Sets the size in pixels of the left margin.
    void SetMarginLeft(int pixelWidth);

    // Returns the size in pixels of the left margin.
    int GetMarginLeft() const;

    // Sets the size in pixels of the right margin.
    void SetMarginRight(int pixelWidth);

    // Returns the size in pixels of the right margin.
    int GetMarginRight() const;

    // Is the document different from when it was last saved?
    bool GetModify() const;

    // Select a range of text.
    void SetSelection(int start, int end);

    // Retrieve the selected text.
    wxString GetSelectedText();

    // Retrieve a range of text.
    wxString GetTextRange(int startPos, int endPos);

    // Draw the selection in normal style or with selection highlighted.
    void HideSelection(bool normal);

    // Retrieve the line containing a position.
    int LineFromPosition(int pos) const;

    // Retrieve the position at the start of a line.
    int PositionFromLine(int line) const;

    // Scroll horizontally and vertically.
    void LineScroll(int columns, int lines);

    // Ensure the caret is visible.
    void EnsureCaretVisible();

    // Replace the selected text with the argument text.
    void ReplaceSelection(const wxString& text);

    // Set to read only or read write.
    void SetReadOnly(bool readOnly);

    // Will a paste succeed?
    bool CanPaste() const;

    // Are there any undoable actions in the undo history?
    bool CanUndo() const;

    // Delete the undo history.
    void EmptyUndoBuffer();

    // Undo one action in the undo history.
    void Undo();

    // Cut the selection to the clipboard.
    void Cut();

    // Copy the selection to the clipboard.
    void Copy();

    // Paste the contents of the clipboard into the document replacing the selection.
    void Paste();

    // Clear the selection.
    void Clear();

    // Replace the contents of the document with the argument text.
    void SetText(const wxString& text);

    // Retrieve all the text in the document.
    wxString GetText() const;

    // Retrieve the number of characters in the document.
    int GetTextLength() const;

    // Set to overtype (true) or insert mode.
    void SetOvertype(bool overtype);

    // Returns true if overtype mode is active otherwise false is returned.
    bool GetOvertype() const;

    // Set the width of the insert mode caret.
    void SetCaretWidth(int pixelWidth);

    // Returns the width of the insert mode caret.
    int GetCaretWidth() const;

    // Sets the position that starts the target which is used for updating the
    // document without affecting the scroll position.
    void SetTargetStart(int pos);

    // Get the position that starts the target.
    int GetTargetStart() const;

    // Sets the position that ends the target which is used for updating the
    // document without affecting the scroll position.
    void SetTargetEnd(int pos);

    // Get the position that ends the target.
    int GetTargetEnd() const;

    // Replace the target text with the argument text.
    // Text is counted so it can contain NULs.
    // Returns the length of the replacement text.
    int ReplaceTarget(const wxString& text);

    // Replace the target text with the argument text after \d processing.
    // Text is counted so it can contain NULs.
    // Looks for \d where d is between 1 and 9 and replaces these with the strings
    // matched in the last search operation which were surrounded by \( and \).
    // Returns the length of the replacement text including any change
    // caused by processing the \d patterns.
    int ReplaceTargetRE(const wxString& text);

    // Search for a counted string in the target and set the target to the found
    // range. Text is counted so it can contain NULs.
    // Returns length of range or -1 for failure in which case target is not moved.
    int SearchInTarget(const wxString& text);

    // Set the search flags used by SearchInTarget.
    void SetSearchFlags(int flags);

    // Get the search flags used by SearchInTarget.
    int GetSearchFlags() const;

    // Show a call tip containing a definition near position pos.
    void CallTipShow(int pos, const wxString& definition);

    // Remove the call tip from the screen.
    void CallTipCancel();

    // Is there an active call tip?
    bool CallTipActive();

    // Retrieve the position where the caret was before displaying the call tip.
    int CallTipPosAtStart();

    // Highlight a segment of the definition.
    void CallTipSetHighlight(int start, int end);

    // Set the background colour for the call tip.
    void CallTipSetBackground(const wxColour& back);

    // Set the foreground colour for the call tip.
    void CallTipSetForeground(const wxColour& fore);

    // Set the foreground colour for the highlighted part of the call tip.
    void CallTipSetForegroundHighlight(const wxColour& fore);

    // Enable use of STYLE_CALLTIP and set call tip tab size in pixels.
    %wxchkver_2_8_12 void CallTipUseStyle(int tabSize);

    // Set position of calltip, above or below text.
    %wxchkver_2_9_5 void CallTipSetPosition(bool above);

    // Find the display line of a document line taking hidden lines into account.
    int VisibleFromDocLine(int line);

    // Find the document line of a display line taking hidden lines into account.
    int DocLineFromVisible(int lineDisplay);

    // The number of display lines needed to wrap a document line
    int WrapCount(int line);

    // Set the fold level of a line.
    // This encodes an integer level along with flags indicating whether the
    // line is a header and whether it is effectively white space.
    void SetFoldLevel(int line, int level);

    // Retrieve the fold level of a line.
    int GetFoldLevel(int line) const;

    // Find the last child line of a header line.
    int GetLastChild(int line, int level) const;

    // Find the parent line of a child line.
    int GetFoldParent(int line) const;

    // Make a range of lines visible.
    void ShowLines(int lineStart, int lineEnd);

    // Make a range of lines invisible.
    void HideLines(int lineStart, int lineEnd);

    // Is a line visible?
    bool GetLineVisible(int line) const;

    // Are all lines visible?
    %wxchkver_2_9_5 bool GetAllLinesVisible() const;

    // Show the children of a header line.
    void SetFoldExpanded(int line, bool expanded);

    // Is a header line expanded?
    bool GetFoldExpanded(int line) const;

    // Switch a header line between expanded and contracted.
    void ToggleFold(int line);

    // Ensure a particular line is visible by expanding any header line hiding it.
    void EnsureVisible(int line);

    // Set some style options for folding.
    void SetFoldFlags(int flags);

    // Ensure a particular line is visible by expanding any header line hiding it.
    // Use the currently set visibility policy to determine which range to display.
    void EnsureVisibleEnforcePolicy(int line);

    // Sets whether a tab pressed when caret is within indentation indents.
    void SetTabIndents(bool tabIndents);

    // Does a tab pressed when caret is within indentation indent?
    bool GetTabIndents() const;

    // Sets whether a backspace pressed when caret is within indentation unindents.
    void SetBackSpaceUnIndents(bool bsUnIndents);

    // Does a backspace pressed when caret is within indentation unindent?
    bool GetBackSpaceUnIndents() const;

    // Sets the time the mouse must sit still to generate a mouse dwell event.
    void SetMouseDwellTime(int periodMilliseconds);

    // Retrieve the time the mouse must sit still to generate a mouse dwell event.
    int GetMouseDwellTime() const;

    // Get position of start of word.
    int WordStartPosition(int pos, bool onlyWordCharacters);

    // Get position of end of word.
    int WordEndPosition(int pos, bool onlyWordCharacters);

    // Sets whether text is word wrapped.
    void SetWrapMode(int mode);

    // Retrieve whether text is word wrapped.
    int GetWrapMode() const;

    // Set the display mode of visual flags for wrapped lines.
    void SetWrapVisualFlags(int wrapVisualFlags);

    // Retrive the display mode of visual flags for wrapped lines.
    int GetWrapVisualFlags() const;

    // Set the location of visual flags for wrapped lines.
    void SetWrapVisualFlagsLocation(int wrapVisualFlagsLocation);

    // Retrive the location of visual flags for wrapped lines.
    int GetWrapVisualFlagsLocation() const;

    // Set the start indent for wrapped lines.
    void SetWrapStartIndent(int indent);

    // Retrive the start indent for wrapped lines.
    int GetWrapStartIndent() const;

    // Sets how wrapped sublines are placed. Default is fixed.
    %wxchkver_2_9_5 void SetWrapIndentMode(int mode);

    // Retrieve how wrapped sublines are placed. Default is fixed.
    %wxchkver_2_9_5 int GetWrapIndentMode() const;

    // Sets the degree of caching of layout information.
    void SetLayoutCache(int mode);

    // Retrieve the degree of caching of layout information.
    int GetLayoutCache() const;

    // Sets the document width assumed for scrolling.
    void SetScrollWidth(int pixelWidth);

    // Retrieve the document width assumed for scrolling.
    int GetScrollWidth() const;

    // Sets whether the maximum width line displayed is used to set scroll width.
    %wxchkver_2_9_5 void SetScrollWidthTracking(bool tracking);

    // Retrieve whether the scroll width tracks wide lines.
    %wxchkver_2_9_5 bool GetScrollWidthTracking() const;

    // Measure the pixel width of some text in a particular style.
    // NUL terminated text argument.
    // Does not handle tab or control characters.
    int TextWidth(int style, const wxString& text);

    // Sets the scroll range so that maximum scroll position has
    // the last line at the bottom of the view (default).
    // Setting this to false allows scrolling one page below the last line.
    void SetEndAtLastLine(bool endAtLastLine);

    // Retrieve whether the maximum scroll position has the last
    // line at the bottom of the view.
    bool GetEndAtLastLine() const;

    // Retrieve the height of a particular line of text in pixels.
    int TextHeight(int line);

    // Show or hide the vertical scroll bar.
    void SetUseVerticalScrollBar(bool show);

    // Is the vertical scroll bar visible?
    bool GetUseVerticalScrollBar() const;

    // Append a string to the end of the document without changing the selection.
    void AppendText(const wxString& text);

    // Is drawing done in two phases with backgrounds drawn before foregrounds?
    bool GetTwoPhaseDraw() const;

    // In twoPhaseDraw mode, drawing is performed in two phases, first the background
    // and then the foreground. This avoids chopping off characters that overlap the next run.
    void SetTwoPhaseDraw(bool twoPhase);

    // Scroll so that a display line is at the top of the display.
    %wxchkver_2_9_5 void SetFirstVisibleLine(int lineDisplay);

    // Change the effect of pasting when there are multiple selections.
    %wxchkver_2_9_5 void SetMultiPaste(int multiPaste);

    // Retrieve the effect of pasting when there are multiple selections..
    %wxchkver_2_9_5 int GetMultiPaste() const;

    // Retrieve the value of a tag from a regular expression search.
    %wxchkver_2_9_5 wxString GetTag(int tagNumber) const;

    // Make the target range start and end be the same as the selection range start and end.
    void TargetFromSelection();

    // Join the lines in the target.
    void LinesJoin();

    // Split the lines in the target into lines that are less wide than pixelWidth
    // where possible.
    void LinesSplit(int pixelWidth);

    // Set the colours used as a chequerboard pattern in the fold margin
    void SetFoldMarginColour(bool useSetting, const wxColour& back);
    void SetFoldMarginHiColour(bool useSetting, const wxColour& fore);

    // Move caret down one line.
    void LineDown();

    // Move caret down one line extending selection to new caret position.
    void LineDownExtend();

    // Move caret up one line.
    void LineUp();

    // Move caret up one line extending selection to new caret position.
    void LineUpExtend();

    // Move caret left one character.
    void CharLeft();

    // Move caret left one character extending selection to new caret position.
    void CharLeftExtend();

    // Move caret right one character.
    void CharRight();

    // Move caret right one character extending selection to new caret position.
    void CharRightExtend();

    // Move caret left one word.
    void WordLeft();

    // Move caret left one word extending selection to new caret position.
    void WordLeftExtend();

    // Move caret right one word.
    void WordRight();

    // Move caret right one word extending selection to new caret position.
    void WordRightExtend();

    // Move caret to first position on line.
    void Home();

    // Move caret to first position on line extending selection to new caret position.
    void HomeExtend();

    // Move caret to last position on line.
    void LineEnd();

    // Move caret to last position on line extending selection to new caret position.
    void LineEndExtend();

    // Move caret to first position in document.
    void DocumentStart();

    // Move caret to first position in document extending selection to new caret position.
    void DocumentStartExtend();

    // Move caret to last position in document.
    void DocumentEnd();

    // Move caret to last position in document extending selection to new caret position.
    void DocumentEndExtend();

    // Move caret one page up.
    void PageUp();

    // Move caret one page up extending selection to new caret position.
    void PageUpExtend();

    // Move caret one page down.
    void PageDown();

    // Move caret one page down extending selection to new caret position.
    void PageDownExtend();

    // Switch from insert to overtype mode or the reverse.
    void EditToggleOvertype();

    // Cancel any modes such as call tip or auto-completion list display.
    void Cancel();

    // Delete the selection or if no selection, the character before the caret.
    void DeleteBack();

    // If selection is empty or all on one line replace the selection with a tab character.
    // If more than one line selected, indent the lines.
    void Tab();

    // Dedent the selected lines.
    void BackTab();

    // Insert a new line, may use a CRLF, CR or LF depending on EOL mode.
    void NewLine();

    // Insert a Form Feed character.
    void FormFeed();

    // Move caret to before first visible character on line.
    // If already there move to first character on line.
    void VCHome();

    // Like VCHome but extending selection to new caret position.
    void VCHomeExtend();

    // Magnify the displayed text by increasing the sizes by 1 point.
    void ZoomIn();

    // Make the displayed text smaller by decreasing the sizes by 1 point.
    void ZoomOut();

    // Delete the word to the left of the caret.
    void DelWordLeft();

    // Delete the word to the right of the caret.
    void DelWordRight();

    // Delete the word to the right of the caret, but not the trailing non-word characters.
    %wxchkver_2_9_5 void DelWordRightEnd();

    // Cut the line containing the caret.
    void LineCut();

    // Delete the line containing the caret.
    void LineDelete();

    // Switch the current line with the previous.
    void LineTranspose();

    // Duplicate the current line.
    void LineDuplicate();

    // Transform the selection to lower case.
    void LowerCase();

    // Transform the selection to upper case.
    void UpperCase();

    // Scroll the document down, keeping the caret visible.
    void LineScrollDown();

    // Scroll the document up, keeping the caret visible.
    void LineScrollUp();

    // Delete the selection or if no selection, the character before the caret.
    // Will not delete the character before at the start of a line.
    void DeleteBackNotLine();

    // Move caret to first position on display line.
    void HomeDisplay();

    // Move caret to first position on display line extending selection to
    // new caret position.
    void HomeDisplayExtend();

    // Move caret to last position on display line.
    void LineEndDisplay();

    // Move caret to last position on display line extending selection to new
    // caret position.
    void LineEndDisplayExtend();

    // These are like their namesakes Home(Extend)?, LineEnd(Extend)?, VCHome(Extend)?
    // except they behave differently when word-wrap is enabled:
    // They go first to the start / end of the display line, like (Home|LineEnd)Display
    // The difference is that, the cursor is already at the point, it goes on to the start
    // or end of the document line, as appropriate for (Home|LineEnd|VCHome)(Extend)?.
    void HomeWrap();
    void HomeWrapExtend();
    void LineEndWrap();
    void LineEndWrapExtend();
    void VCHomeWrap();
    void VCHomeWrapExtend();

    // Copy the line containing the caret.
    void LineCopy();

    // Move the caret inside current view if it's not there already.
    void MoveCaretInsideView();

    // How many characters are on a line, including end of line characters?
    int LineLength(int line) const;

    // Highlight the characters at two positions.
    void BraceHighlight(int pos1, int pos2);

    // Use specified indicator to highlight matching braces instead of changing their style.
    %wxchkver_2_9_5 void BraceHighlightIndicator(bool useBraceHighlightIndicator, int indicator);

    // Highlight the character at a position indicating there is no matching brace.
    void BraceBadLight(int pos);

    // Use specified indicator to highlight non matching brace instead of changing its style.
    %wxchkver_2_9_5 void BraceBadLightIndicator(bool useBraceBadLightIndicator, int indicator);

    // Find the position of a matching brace or INVALID_POSITION if no match.
    int BraceMatch(int pos);

    // Are the end of line characters visible?
    bool GetViewEOL() const;

    // Make the end of line characters visible or invisible.
    void SetViewEOL(bool visible);

    // Retrieve a pointer to the document object.
    void* GetDocPointer();

    // Change the document object used.
    void SetDocPointer(void* docPointer);

    // Set which document modification events are sent to the container.
    void SetModEventMask(int mask);

    // Retrieve the column number which text should be kept within.
    int GetEdgeColumn() const;

    // Set the column number of the edge.
    // If text goes past the edge then it is highlighted.
    void SetEdgeColumn(int column);

    // Retrieve the edge highlight mode.
    int GetEdgeMode() const;

    // The edge may be displayed by a line (EDGE_LINE) or by highlighting text that
    // goes beyond it (EDGE_BACKGROUND) or not displayed at all (EDGE_NONE).
    void SetEdgeMode(int mode);

    // Retrieve the colour used in edge indication.
    wxColour GetEdgeColour() const;

    // Change the colour used in edge indication.
    void SetEdgeColour(const wxColour& edgeColour);

    // Sets the current caret position to be the search anchor.
    void SearchAnchor();

    // Find some text starting at the search anchor.
    // Does not ensure the selection is visible.
    int SearchNext(int flags, const wxString& text);

    // Find some text starting at the search anchor and moving backwards.
    // Does not ensure the selection is visible.
    int SearchPrev(int flags, const wxString& text);

    // Retrieves the number of lines completely visible.
    int LinesOnScreen() const;

    // Set whether a pop up menu is displayed automatically when the user presses
    // the wrong mouse button.
    void UsePopUp(bool allowPopUp);

    // Is the selection rectangular? The alternative is the more common stream selection.
    bool SelectionIsRectangle() const;

    // Set the zoom level. This number of points is added to the size of all fonts.
    // It may be positive to magnify or negative to reduce.
    void SetZoom(int zoom);

    // Retrieve the zoom level.
    int GetZoom() const;

    // Create a new document object.
    // Starts with reference count of 1 and not selected into editor.
    void* CreateDocument();

    // Extend life of document.
    void AddRefDocument(void* docPointer);

    // Release a reference to the document, deleting document if it fades to black.
    void ReleaseDocument(void* docPointer);

    // Get which document modification events are sent to the container.
    int GetModEventMask() const;

    // Change internal focus flag.
    void SetSTCFocus(bool focus);

    // Get internal focus flag.
    bool GetSTCFocus() const;

    // Change error status - 0 = OK.
    void SetStatus(int statusCode);

    // Get error status.
    int GetStatus() const;

    // Set whether the mouse is captured when its button is pressed.
    void SetMouseDownCaptures(bool captures);

    // Get whether mouse gets captured.
    bool GetMouseDownCaptures() const;

    // Sets the cursor to one of the SC_CURSOR* values.
    void SetSTCCursor(int cursorType);

    // Get cursor type.
    int GetSTCCursor() const;

    // Change the way control characters are displayed:
    // If symbol is < 32, keep the drawn way, else, use the given character.
    void SetControlCharSymbol(int symbol);

    // Get the way control characters are displayed.
    int GetControlCharSymbol() const;

    // Move to the previous change in capitalisation.
    void WordPartLeft();

    // Move to the previous change in capitalisation extending selection
    // to new caret position.
    void WordPartLeftExtend();

    // Move to the change next in capitalisation.
    void WordPartRight();

    // Move to the next change in capitalisation extending selection
    // to new caret position.
    void WordPartRightExtend();

    // Set the way the display area is determined when a particular line
    // is to be moved to by Find, FindNext, GotoLine, etc.
    void SetVisiblePolicy(int visiblePolicy, int visibleSlop);

    // Delete back from the current position to the start of the line.
    void DelLineLeft();

    // Delete forwards from the current position to the end of the line.
    void DelLineRight();

    // Get and Set the xOffset (ie, horizontal scroll position).
    void SetXOffset(int newOffset);
    int GetXOffset() const;

    // Set the last x chosen value to be the caret x position.
    void ChooseCaretX();

    // Set the way the caret is kept visible when going sideways.
    // The exclusion zone is given in pixels.
    void SetXCaretPolicy(int caretPolicy, int caretSlop);

    // Set the way the line the caret is on is kept visible.
    // The exclusion zone is given in lines.
    void SetYCaretPolicy(int caretPolicy, int caretSlop);

    // Set printing to line wrapped (SC_WRAP_WORD) or not line wrapped (SC_WRAP_NONE).
    void SetPrintWrapMode(int mode);

    // Is printing line wrapped?
    int GetPrintWrapMode() const;

    // Set a fore colour for active hotspots.
    void SetHotspotActiveForeground(bool useSetting, const wxColour& fore);

    // Get the fore colour for active hotspots.
    %wxchkver_2_9_5 wxColour GetHotspotActiveForeground() const;

    // Set a back colour for active hotspots.
    void SetHotspotActiveBackground(bool useSetting, const wxColour& back);

    // Get the back colour for active hotspots.
    %wxchkver_2_9_5 wxColour GetHotspotActiveBackground() const;

    // Enable / Disable underlining active hotspots.
    void SetHotspotActiveUnderline(bool underline);

    // Get whether underlining for active hotspots.
    %wxchkver_2_9_5 bool GetHotspotActiveUnderline() const;

    // Limit hotspots to single line so hotspots on two lines don't merge.
    void SetHotspotSingleLine(bool singleLine);

    // Get the HotspotSingleLine property
    %wxchkver_2_9_5 bool GetHotspotSingleLine() const;

    // Move caret between paragraphs (delimited by empty lines).
    void ParaDown();
    void ParaDownExtend();
    void ParaUp();
    void ParaUpExtend();

    // Given a valid document position, return the previous position taking code
    // page into account. Returns 0 if passed 0.
    int PositionBefore(int pos);

    // Given a valid document position, return the next position taking code
    // page into account. Maximum value returned is the last position in the document.
    int PositionAfter(int pos);

    // Copy a range of text to the clipboard. Positions are clipped into the document.
    void CopyRange(int start, int end);

    // Copy argument text to the clipboard.
    void CopyText(int length, const wxString& text);

    // Set the selection mode to stream (SC_SEL_STREAM) or rectangular (SC_SEL_RECTANGLE/SC_SEL_THIN) or
    // by lines (SC_SEL_LINES).
    void SetSelectionMode(int mode);

    // Get the mode of the current selection.
    int GetSelectionMode() const;

    // Retrieve the position of the start of the selection at the given line (INVALID_POSITION if no selection on this line).
    int GetLineSelStartPosition(int line);

    // Retrieve the position of the end of the selection at the given line (INVALID_POSITION if no selection on this line).
    int GetLineSelEndPosition(int line);

    // Move caret down one line, extending rectangular selection to new caret position.
    void LineDownRectExtend();

    // Move caret up one line, extending rectangular selection to new caret position.
    void LineUpRectExtend();

    // Move caret left one character, extending rectangular selection to new caret position.
    void CharLeftRectExtend();

    // Move caret right one character, extending rectangular selection to new caret position.
    void CharRightRectExtend();

    // Move caret to first position on line, extending rectangular selection to new caret position.
    void HomeRectExtend();

    // Move caret to before first visible character on line.
    // If already there move to first character on line.
    // In either case, extend rectangular selection to new caret position.
    void VCHomeRectExtend();

    // Move caret to last position on line, extending rectangular selection to new caret position.
    void LineEndRectExtend();

    // Move caret one page up, extending rectangular selection to new caret position.
    void PageUpRectExtend();

    // Move caret one page down, extending rectangular selection to new caret position.
    void PageDownRectExtend();

    // Move caret to top of page, or one page up if already at top of page.
    void StutteredPageUp();

    // Move caret to top of page, or one page up if already at top of page, extending selection to new caret position.
    void StutteredPageUpExtend();

    // Move caret to bottom of page, or one page down if already at bottom of page.
    void StutteredPageDown();

    // Move caret to bottom of page, or one page down if already at bottom of page, extending selection to new caret position.
    void StutteredPageDownExtend();

    // Move caret left one word, position cursor at end of word.
    void WordLeftEnd();

    // Move caret left one word, position cursor at end of word, extending selection to new caret position.
    void WordLeftEndExtend();

    // Move caret right one word, position cursor at end of word.
    void WordRightEnd();

    // Move caret right one word, position cursor at end of word, extending selection to new caret position.
    void WordRightEndExtend();

    // Set the set of characters making up whitespace for when moving or selecting by word.
    // Should be called after SetWordChars.
    void SetWhitespaceChars(const wxString& characters);

    // Get the set of characters making up whitespace for when moving or selecting by word.
    %wxchkver_2_9_5 wxString GetWhitespaceChars() const;

    // Set the set of characters making up punctuation characters
    // Should be called after SetWordChars.
    %wxchkver_2_9_5 void SetPunctuationChars(const wxString& characters);

    // Get the set of characters making up punctuation characters
    %wxchkver_2_9_5 wxString GetPunctuationChars() const;

    // Reset the set of characters for whitespace and word characters to the defaults.
    void SetCharsDefault();

    // Get currently selected item position in the auto-completion list
    int AutoCompGetCurrent() const;

    // Set auto-completion case insensitive behaviour to either prefer case-sensitive matches or have no preference.
    %wxchkver_2_9_5 void AutoCompSetCaseInsensitiveBehaviour(int behaviour);

    // Get auto-completion case insensitive behaviour.
    %wxchkver_2_9_5 int AutoCompGetCaseInsensitiveBehaviour() const;

    // Enlarge the document to a particular size of text bytes.
    void Allocate(int bytes);

    // Find the position of a column on a line taking into account tabs and
    // multi-byte characters. If beyond end of line, return line end position.
    int FindColumn(int line, int column);

    // Can the caret preferred x position only be changed by explicit movement commands?
    !%wxchkver_2_9_5 bool GetCaretSticky() const;
    %wxchkver_2_9_5 int GetCaretSticky() const;

    // Stop the caret preferred x position changing when the user types.
    !%wxchkver_2_9_5 void SetCaretSticky(bool useCaretStickyBehaviour);
    %wxchkver_2_9_5 void SetCaretSticky(int useCaretStickyBehaviour);

    // Switch between sticky and non-sticky: meant to be bound to a key.
    void ToggleCaretSticky();

    // Enable/Disable convert-on-paste for line endings
    void SetPasteConvertEndings(bool convert);

    // Get convert-on-paste setting
    bool GetPasteConvertEndings() const;

    // Duplicate the selection. If selection empty duplicate the line containing the caret.
    void SelectionDuplicate();

    // Set background alpha of the caret line.
    %wxchkver_2_8_12 void SetCaretLineBackAlpha(int alpha);

    // Get the background alpha of the caret line.
    %wxchkver_2_8_12 int GetCaretLineBackAlpha() const;

#if %wxchkver_2_9_5
    // Set the style of the caret to be drawn.
    void SetCaretStyle(int caretStyle);

    // Returns the current style of the caret.
    int GetCaretStyle() const;

    // Set the indicator used for IndicatorFillRange and IndicatorClearRange
    void SetIndicatorCurrent(int indicator);

    // Get the current indicator
    int GetIndicatorCurrent() const;

    // Set the value used for IndicatorFillRange
    void SetIndicatorValue(int value);

    // Get the current indicator value
    int GetIndicatorValue() const;

    // Turn a indicator on over a range.
    void IndicatorFillRange(int position, int fillLength);

    // Turn a indicator off over a range.
    void IndicatorClearRange(int position, int clearLength);

    // Are any indicators present at position?
    int IndicatorAllOnFor(int position);

    // What value does a particular indicator have at at a position?
    int IndicatorValueAt(int indicator, int position);

    // Where does a particular indicator start?
    int IndicatorStart(int indicator, int position);

    // Where does a particular indicator end?
    int IndicatorEnd(int indicator, int position);

    // Set number of entries in position cache
    void SetPositionCacheSize(int size);

    // How many entries are allocated to the position cache?
    int GetPositionCacheSize() const;

    // Copy the selection, if selection empty copy the line with the caret
    void CopyAllowLine();

    // Compact the document buffer and return a read-only pointer to the
    // characters in the document.
    //const char* GetCharacterPointer() const;

    // Return a read-only pointer to a range of characters in the document.
    // May move the gap so that the range is contiguous, but will only move up
    // to rangeLength bytes.
    //const char* GetRangePointer(int position, int rangeLength) const;

    // Return a position which, to avoid performance costs, should not be within
    // the range of a call to GetRangePointer.
    int GetGapPosition() const;

    // Always interpret keyboard input as Unicode
    void SetKeysUnicode(bool keysUnicode);

    // Are keys always interpreted as Unicode?
    bool GetKeysUnicode() const;

    // Set the alpha fill colour of the given indicator.
    void IndicatorSetAlpha(int indicator, int alpha);

    // Get the alpha fill colour of the given indicator.
    int IndicatorGetAlpha(int indicator) const;

    // Set the alpha outline colour of the given indicator.
    void IndicatorSetOutlineAlpha(int indicator, int alpha);

    // Get the alpha outline colour of the given indicator.
    int IndicatorGetOutlineAlpha(int indicator) const;

    // Set extra ascent for each line
    void SetExtraAscent(int extraAscent);

    // Get extra ascent for each line
    int GetExtraAscent() const;

    // Set extra descent for each line
    void SetExtraDescent(int extraDescent);

    // Get extra descent for each line
    int GetExtraDescent() const;

    // Which symbol was defined for markerNumber with MarkerDefine
    int GetMarkerSymbolDefined(int markerNumber);

    // Set the text in the text margin for a line
    void MarginSetText(int line, const wxString& text);

    // Get the text in the text margin for a line
    wxString MarginGetText(int line) const;

    // Set the style number for the text margin for a line
    void MarginSetStyle(int line, int style);

    // Get the style number for the text margin for a line
    int MarginGetStyle(int line) const;

    // Set the style in the text margin for a line
    void MarginSetStyles(int line, const wxString& styles);

    // Get the styles in the text margin for a line
    wxString MarginGetStyles(int line) const;

    // Clear the margin text on all lines
    void MarginTextClearAll();

    // Get the start of the range of style numbers used for margin text
    void MarginSetStyleOffset(int style);

    // Get the start of the range of style numbers used for margin text
    int MarginGetStyleOffset() const;

    // Set the margin options.
    void SetMarginOptions(int marginOptions);

    // Get the margin options.
    int GetMarginOptions() const;

    // Set the annotation text for a line
    void AnnotationSetText(int line, const wxString& text);

    // Get the annotation text for a line
    wxString AnnotationGetText(int line) const;

    // Set the style number for the annotations for a line
    void AnnotationSetStyle(int line, int style);

    // Get the style number for the annotations for a line
    int AnnotationGetStyle(int line) const;

    // Set the annotation styles for a line
    void AnnotationSetStyles(int line, const wxString& styles);

    // Get the annotation styles for a line
    wxString AnnotationGetStyles(int line) const;

    // Get the number of annotation lines for a line
    int AnnotationGetLines(int line) const;

    // Clear the annotations from all lines
    void AnnotationClearAll();

    // Set the visibility for the annotations for a view
    void AnnotationSetVisible(int visible);

    // Get the visibility for the annotations for a view
    int AnnotationGetVisible() const;

    // Get the start of the range of style numbers used for annotations
    void AnnotationSetStyleOffset(int style);

    // Get the start of the range of style numbers used for annotations
    int AnnotationGetStyleOffset() const;

    // Add a container action to the undo stack
    void AddUndoAction(int token, int flags);

    // Find the position of a character from a point within the window.
    int CharPositionFromPoint(int x, int y);

    // Find the position of a character from a point within the window.
    // Return INVALID_POSITION if not close to text.
    int CharPositionFromPointClose(int x, int y);

    // Set whether multiple selections can be made
    void SetMultipleSelection(bool multipleSelection);

    // Whether multiple selections can be made
    bool GetMultipleSelection() const;

    // Set whether typing can be performed into multiple selections
    void SetAdditionalSelectionTyping(bool additionalSelectionTyping);

    // Whether typing can be performed into multiple selections
    bool GetAdditionalSelectionTyping() const;

    // Set whether additional carets will blink
    void SetAdditionalCaretsBlink(bool additionalCaretsBlink);

    // Whether additional carets will blink
    bool GetAdditionalCaretsBlink() const;

    // Set whether additional carets are visible
    void SetAdditionalCaretsVisible(bool additionalCaretsBlink);

    // Whether additional carets are visible
    bool GetAdditionalCaretsVisible() const;

    // How many selections are there?
    int GetSelections() const;

    // Clear selections to a single empty stream selection
    void ClearSelections();

    // Add a selection
    int AddSelection(int caret, int anchor);

    // Set the main selection
    void SetMainSelection(int selection);

    // Which selection is the main selection
    int GetMainSelection() const;
    void SetSelectionNCaret(int selection, int pos);
    int GetSelectionNCaret(int selection) const;
    void SetSelectionNAnchor(int selection, int posAnchor);
    int GetSelectionNAnchor(int selection) const;
    void SetSelectionNCaretVirtualSpace(int selection, int space);
    int GetSelectionNCaretVirtualSpace(int selection) const;
    void SetSelectionNAnchorVirtualSpace(int selection, int space);
    int GetSelectionNAnchorVirtualSpace(int selection) const;

    // Sets the position that starts the selection - this becomes the anchor.
    void SetSelectionNStart(int selection, int pos);

    // Returns the position at the start of the selection.
    int GetSelectionNStart(int selection) const;

    // Sets the position that ends the selection - this becomes the currentPosition.
    void SetSelectionNEnd(int selection, int pos);

    // Returns the position at the end of the selection.
    int GetSelectionNEnd(int selection) const;
    void SetRectangularSelectionCaret(int pos);
    int GetRectangularSelectionCaret() const;
    void SetRectangularSelectionAnchor(int posAnchor);
    int GetRectangularSelectionAnchor() const;
    void SetRectangularSelectionCaretVirtualSpace(int space);
    int GetRectangularSelectionCaretVirtualSpace() const;
    void SetRectangularSelectionAnchorVirtualSpace(int space);
    int GetRectangularSelectionAnchorVirtualSpace() const;
    void SetVirtualSpaceOptions(int virtualSpaceOptions);
    int GetVirtualSpaceOptions() const;

    // On GTK+, allow selecting the modifier key to use for mouse-based
    // rectangular selection. Often the window manager requires Alt+Mouse Drag
    // for moving windows.
    // Valid values are SCMOD_CTRL(default), SCMOD_ALT, or SCMOD_SUPER.
    void SetRectangularSelectionModifier(int modifier);

    // Get the modifier key used for rectangular selection.
    int GetRectangularSelectionModifier() const;

    // Set the foreground colour of additional selections.
    // Must have previously called SetSelFore with non-zero first argument for this to have an effect.
    void SetAdditionalSelForeground(const wxColour& fore);

    // Set the background colour of additional selections.
    // Must have previously called SetSelBack with non-zero first argument for this to have an effect.
    void SetAdditionalSelBackground(const wxColour& back);

    // Set the alpha of the selection.
    void SetAdditionalSelAlpha(int alpha);

    // Get the alpha of the selection.
    int GetAdditionalSelAlpha() const;

    // Set the foreground colour of additional carets.
    void SetAdditionalCaretForeground(const wxColour& fore);

    // Get the foreground colour of additional carets.
    wxColour GetAdditionalCaretForeground() const;

    // Set the main selection to the next selection.
    void RotateSelection();

    // Swap that caret and anchor of the main selection.
    void SwapMainAnchorCaret();

    // Indicate that the internal state of a lexer has changed over a range and therefore
    // there may be a need to redraw.
    int ChangeLexerState(int start, int end);

    // Find the next line at or after lineStart that is a contracted fold header line.
    // Return -1 when no more lines.
    int ContractedFoldNext(int lineStart);

    // Centre current line in window.
    void VerticalCentreCaret();

    // Move the selected lines up one line, shifting the line above after the selection
    void MoveSelectedLinesUp();

    // Move the selected lines down one line, shifting the line below before the selection
    void MoveSelectedLinesDown();

    // Set the identifier reported as idFrom in notification messages.
    void SetIdentifier(int identifier);

    // Get the identifier.
    int GetIdentifier() const;

    // Set the width for future RGBA image data.
    void RGBAImageSetWidth(int width);

    // Set the height for future RGBA image data.
    void RGBAImageSetHeight(int height);

    // Define a marker from RGBA data.
    // It has the width and height from RGBAImageSetWidth/Height
    void MarkerDefineRGBAImage(int markerNumber, const unsigned char* pixels);

    // Register an RGBA image for use in autocompletion lists.
    // It has the width and height from RGBAImageSetWidth/Height
    void RegisterRGBAImage(int type, const unsigned char* pixels);

    // Scroll to start of document.
    void ScrollToStart();

    // Scroll to end of document.
    void ScrollToEnd();

    // Set the technology used.
    void SetTechnology(int technology);

    // Get the tech.
    int GetTechnology() const;

    // Create an ILoader*.
    //void* CreateLoader(int bytes) const;

#endif //%wxchkver_2_9_5

    // Start notifying the container of all key presses and commands.
    void StartRecord();

    // Stop notifying the container of all key presses and commands.
    void StopRecord();

    // Set the lexing language of the document.
    void SetLexer(int lexer);

    // Retrieve the lexing language of the document.
    int GetLexer() const;

    // Colourise a segment of the document using the current lexing language.
    void Colourise(int start, int end);

    // Set up a value that may be used by a lexer for some optional feature.
    void SetProperty(const wxString& key, const wxString& value);

    // Set up the key words used by the lexer.
    void SetKeyWords(int keywordSet, const wxString& keyWords);

    // Set the lexing language of the document based on string name.
    void SetLexerLanguage(const wxString& language);

    // Retrieve a 'property' value previously set with SetProperty.
    wxString GetProperty(const wxString& key);

    // Retrieve a 'property' value previously set with SetProperty,
    // with '$()' variable replacement on returned buffer.
    wxString GetPropertyExpanded(const wxString& key);

    // Retrieve a 'property' value previously set with SetProperty,
    // interpreted as an int AFTER any '$()' variable replacement.
    int GetPropertyInt(const wxString& key) const;

    // Retrieve the number of bits the current lexer needs for styling.
    int GetStyleBitsNeeded() const;

// END of generated section
//----------------------------------------------------------------------
// Others...

    // Retrieve a '\n' separated list of properties understood by the current lexer.
    %wxchkver_2_9_5 wxString PropertyNames() const;

    // Retrieve the type of a property.
    %wxchkver_2_9_5 int PropertyType(const wxString& name);

    // Describe a property.
    %wxchkver_2_9_5 wxString DescribeProperty(const wxString& name) const;

    // Retrieve a '\n' separated list of descriptions of the keyword sets understood by the current lexer.
    %wxchkver_2_9_5 wxString DescribeKeyWordSets() const;

    //}}}
    //----------------------------------------------------------------------

    // Manually declared methods

    // Returns the line number of the line with the caret.
    int GetCurrentLine();

    // Extract style settings from a spec-string which is composed of one or
    // more of the following comma separated elements:
    //
    //      bold                    turns on bold
    //      italic                  turns on italics
    //      fore:[name or #RRGGBB]  sets the foreground colour
    //      back:[name or #RRGGBB]  sets the background colour
    //      face:[facename]         sets the font face name to use
    //      size:[num]              sets the font size in points
    //      eol                     turns on eol filling
    //      underline               turns on underlining
    //
    void StyleSetSpec(int styleNum, const wxString& spec);


    // Get the font of a style.
    %wxchkver_2_9_5 wxFont StyleGetFont(int style);


    // Set style size, face, bold, italic, and underline attributes from
    // a wxFont's attributes.
    void StyleSetFont(int styleNum, wxFont& font);



    // Set all font style attributes at once.
    void StyleSetFontAttr(int styleNum, int size, const wxString& faceName, bool bold, bool italic, bool underline, wxFontEncoding encoding=wxFONTENCODING_DEFAULT);


    // Set the character set of the font in a style.  Converts the Scintilla
    // character set values to a wxFontEncoding.
    void StyleSetCharacterSet(int style, int characterSet);

    // Set the font encoding to be used by a style.
    void StyleSetFontEncoding(int style, wxFontEncoding encoding);


    // Perform one of the operations defined by the wxSTC_CMD_* constants.
    void CmdKeyExecute(int cmd);


    // Set the left and right margin in the edit area, measured in pixels.
    void SetMargins(int left, int right);


    // Retrieve the start and end positions of the current selection.
//#ifdef SWIG
//    void GetSelection(int* OUTPUT, int* OUTPUT);
//#else
    // %override [int startPos, int endPos] wxStyledTextCtrl::GetSelection( );
    // C++ Func: void GetSelection(int* startPos, int* endPos);
    void GetSelection();
//#endif

    // Retrieve the point in the window where a position is displayed.
    wxPoint PointFromPosition(int pos);


    // Scroll enough to make the given line visible
    void ScrollToLine(int line);


    // Scroll enough to make the given column visible
    void ScrollToColumn(int column);


    // Send a message to Scintilla
    long SendMsg(int msg, long wp=0, long lp=0);


    // Set the vertical scrollbar to use instead of the ont that's built-in.
    void SetVScrollBar(wxScrollBar* bar);


    // Set the horizontal scrollbar to use instead of the ont that's built-in.
    void SetHScrollBar(wxScrollBar* bar);

    // Can be used to prevent the EVT_CHAR handler from adding the char
    bool GetLastKeydownProcessed( );
    void SetLastKeydownProcessed(bool val );

    // Write the contents of the editor to filename
    bool SaveFile(const wxString& filename);

    // Load the contents of filename into the editor
    bool LoadFile(const wxString& filename);

//#ifdef STC_USE_DND
    // Allow for simulating a DnD DragOver
//    wxDragResult DoDragOver(wxCoord x, wxCoord y, wxDragResult def);

    // Allow for simulating a DnD DropText
//    bool DoDropText(long x, long y, const wxString& data);
//#endif

    // Specify whether anti-aliased fonts should be used.  Will have no effect
    // on some platforms, but on some (wxMac for example) can greatly improve
    // performance.
    void SetUseAntiAliasing(bool useAA);

    // Returns the current UseAntiAliasing setting.
    bool GetUseAntiAliasing();

    // Clear annotations from the given line.
    %wxchkver_2_9_5 void AnnotationClearLine(int line);

    // The following methods are nearly equivalent to their similarly named
    // cousins above.  The difference is that these methods bypass wxString
    // and always use a char* even if used in a unicode build of wxWidgets.
    // In that case the character data will be utf-8 encoded since that is
    // what is used internally by Scintilla in unicode builds.

    // Add text to the document at current position.
    void AddTextRaw(const char* text);

    // Insert string at a position.
    void InsertTextRaw(int pos, const char* text);

    // Retrieve the text of the line containing the caret.
    // Returns the index of the caret on the line.
//#ifdef SWIG
//    wxCharBuffer GetCurLineRaw(int* OUTPUT);
//#else
//    wxCharBuffer GetCurLineRaw(int* linePos=NULL);
//#endif

    // Retrieve the contents of a line.
//    wxCharBuffer GetLineRaw(int line);

    // Retrieve the selected text.
//    wxCharBuffer GetSelectedTextRaw();

    // Retrieve a range of text.
//    wxCharBuffer GetTextRangeRaw(int startPos, int endPos);

    // Replace the contents of the document with the argument text.
//    void SetTextRaw(const char* text);

    // Retrieve all the text in the document.
//    wxCharBuffer GetTextRaw();

    // Append a string to the end of the document without changing the selection.
//    void AppendTextRaw(const char* text);

};

//----------------------------------------------------------------------

class %delete wxStyledTextEvent : public wxCommandEvent
{
    %wxEventType wxEVT_STC_CHANGE              // EVT_STC_CHANGE(id, fn );
    %wxEventType wxEVT_STC_STYLENEEDED         // EVT_STC_STYLENEEDED(id, fn );
    %wxEventType wxEVT_STC_CHARADDED           // EVT_STC_CHARADDED(id, fn );
    %wxEventType wxEVT_STC_SAVEPOINTREACHED    // EVT_STC_SAVEPOINTREACHED(id, fn );
    %wxEventType wxEVT_STC_SAVEPOINTLEFT       // EVT_STC_SAVEPOINTLEFT(id, fn );
    %wxEventType wxEVT_STC_ROMODIFYATTEMPT     // EVT_STC_ROMODIFYATTEMPT(id, fn );
    %wxEventType wxEVT_STC_KEY                 // EVT_STC_KEY(id, fn );
    %wxEventType wxEVT_STC_DOUBLECLICK         // EVT_STC_DOUBLECLICK(id, fn );
    %wxEventType wxEVT_STC_UPDATEUI            // EVT_STC_UPDATEUI(id, fn );
    %wxEventType wxEVT_STC_MODIFIED            // EVT_STC_MODIFIED(id, fn );
    %wxEventType wxEVT_STC_MACRORECORD         // EVT_STC_MACRORECORD(id, fn );
    %wxEventType wxEVT_STC_MARGINCLICK         // EVT_STC_MARGINCLICK(id, fn );
    %wxEventType wxEVT_STC_NEEDSHOWN           // EVT_STC_NEEDSHOWN(id, fn );
    %wxEventType wxEVT_STC_PAINTED             // EVT_STC_PAINTED(id, fn );
    %wxEventType wxEVT_STC_USERLISTSELECTION   // EVT_STC_USERLISTSELECTION(id, fn );
    %wxEventType wxEVT_STC_URIDROPPED          // EVT_STC_URIDROPPED(id, fn );
    %wxEventType wxEVT_STC_DWELLSTART          // EVT_STC_DWELLSTART(id, fn );
    %wxEventType wxEVT_STC_DWELLEND            // EVT_STC_DWELLEND(id, fn );
    %wxEventType wxEVT_STC_START_DRAG          // EVT_STC_START_DRAG(id, fn );
    %wxEventType wxEVT_STC_DRAG_OVER           // EVT_STC_DRAG_OVER(id, fn );
    %wxEventType wxEVT_STC_DO_DROP             // EVT_STC_DO_DROP(id, fn );
    %wxEventType wxEVT_STC_ZOOM                // EVT_STC_ZOOM(id, fn );
    %wxEventType wxEVT_STC_HOTSPOT_CLICK       // EVT_STC_HOTSPOT_CLICK(id, fn );
    %wxEventType wxEVT_STC_HOTSPOT_DCLICK      // EVT_STC_HOTSPOT_DCLICK(id, fn );
    %wxEventType wxEVT_STC_CALLTIP_CLICK       // EVT_STC_CALLTIP_CLICK(id, fn );
    %wxEventType wxEVT_STC_AUTOCOMP_SELECTION  // EVT_STC_AUTOCOMP_SELECTION(id, fn );


    wxStyledTextEvent(wxEventType commandType = 0, int id = 0 );
    void SetPosition(int pos );
    void SetKey(int k );
    void SetModifiers(int m );
    void SetModificationType(int t );
    void SetText(const wxString& t );
    void SetLength(int len );
    void SetLinesAdded(int num );
    void SetLine(int val );
    void SetFoldLevelNow(int val );
    void SetFoldLevelPrev(int val );
    void SetMargin(int val );
    void SetMessage(int val );
    void SetWParam(int val );
    void SetLParam(int val );
    void SetListType(int val );
    void SetX(int val );
    void SetY(int val );
    void SetDragText(const wxString& val );
    void SetDragAllowMove(bool val );
    void SetDragResult(wxDragResult val );

    int  GetPosition() const;
    int  GetKey() const;
    int  GetModifiers() const;
    int  GetModificationType() const;
    wxString GetText() const;
    int  GetLength() const;
    int  GetLinesAdded() const;
    int  GetLine() const;
    int  GetFoldLevelNow() const;
    int  GetFoldLevelPrev() const;
    int  GetMargin() const;
    int  GetMessage() const;
    int  GetWParam() const;
    int  GetLParam() const;
    int  GetListType() const;
    int  GetX() const;
    int  GetY() const;
    %wxchkver_2_9_5 int  GetToken() const;
    %wxchkver_2_9_5 int  GetAnnotationsLinesAdded() const;
    %wxchkver_2_9_5 int  GetUpdated() const;
    wxString GetDragText( );
    bool GetDragAllowMove( );
    wxDragResult GetDragResult( );
    bool GetShift() const;
    bool GetControl() const;
    bool GetAlt() const;
};

