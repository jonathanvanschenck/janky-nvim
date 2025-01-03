" LilyPond syntax file
" Language:	LilyPond
" Maintainer:	Heikki Junes <hjunes@cc.hut.fi>
" License:      This file is part of LilyPond, the GNU music typesetter.
"
"               Copyright (C) 2002--2022 Han-Wen Nienhuys <hanwen@xs4all.nl>
"
"               LilyPond is free software: you can redistribute it and/or modify
"               it under the terms of the GNU General Public License as published by
"               the Free Software Foundation, either version 3 of the License, or
"               (at your option) any later version.
"
"               LilyPond is distributed in the hope that it will be useful,
"               but WITHOUT ANY WARRANTY; without even the implied warranty of
"               MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
"               GNU General Public License for more details.
"
"               You should have received a copy of the GNU General Public License
"               along with LilyPond.  If not, see <http://www.gnu.org/licenses/>.
"
" Last Change:	2010 Jul 26
"
" Installed As:	vim/syntax/lilypond.vim
"
" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if !exists("main_syntax")
	if version < 600
		syntax clear
	elseif exists("b:current_syntax")
		finish
	endif
	let main_syntax = 'lilypond'
endif

syn match lilyKeyword "[-_^]\?\\\(xNotesOn\|xNotesOff\|xNote\|wordwrap-string-internal\|wordwrap-string\|wordwrap-lines\|wordwrap-internal\|wordwrap-field\|wordwrap\|withMusicProperty\|with-url\|with-true-dimensions\|with-true-dimension\|with-string-transformer\|with-outline\|with-link\|with-dimensions-from\|with-dimensions\|with-dimension-from\|with-dimension\|with-color\|whiteout\|whiteTriangleMarkup\|whiteCircleMarkup\|walkerHeadsMinor\|walkerHeads\|vspace\|vshape\|vowelTransition\|volta\|void\|voices\|voiceTwoStyle\|voiceTwo\|voiceThreeStyle\|voiceThree\|voiceOneStyle\|voiceOne\|voiceNeutralStyle\|voiceFourStyle\|voiceFour\|virgula\|virga\|veryshortfermata\|verylongfermata\|versus\|version\|verbatim-file\|vcenter\|varcoda\|upright\|upprall\|upmordent\|upbow\|up\|unset\|unless\|unit\|unfolded\|unfoldRepeats\|undo\|undertie\|underlyingRepeatBarType\|underline\|unaCorda\|unHideNotes\|typewriter\|type\|tweak\|turn\|tupletUp\|tupletSpan\|tupletNeutral\|tupletDown\|tuplet\|trill\|triangle\|treCorde\|transposition\|transposedCueDuring\|transpose\|transparent\|translate-scaled\|translate\|topLevelAlignment\|tocTitleMarkup\|tocItemWithDotsMarkup\|tocItemMarkup\|tocItem\|tocIndentMarkup\|tocFormatMarkup\|tiny\|timing\|times\|timeSignatureSettings\|timeSignatureFraction\|time\|tied-lyric\|tieWaitForNote\|tieUp\|tieSolid\|tieNeutral\|tieHalfSolid\|tieHalfDashed\|tieDown\|tieDotted\|tieDashed\|tieDashPattern\|tie\|thumb\|textSpannerUp\|textSpannerNeutral\|textSpannerDown\|textMark\|textLengthOn\|textLengthOff\|textEndMark\|text\|tenuto\|temporary\|tempoWholesPerMinute\|tempo\|teeny\|tagGroup\|tag\|table-of-contents\|table\|tablatureFormat\|tabStaffLineLayoutFunction\|tabFullNotation\|systemStartDelimiter\|sustainOn\|sustainOff\|suspendMelodyDecisions\|super\|subdivideBeams\|sub\|styledNoteHeads\|strut\|stropha\|strokeFingerOrientations\|stringTunings\|stringOneTopmost\|stringNumberOrientations\|string-lines\|stopped\|stopTrillSpan\|stopTextSpan\|stopStaffHighlight\|stopStaff\|stopSlashedGraceMusic\|stopMeasureSpanner\|stopMeasureCount\|stopGroup\|stopGraceSlur\|stopGraceMusic\|stopAppoggiaturaMusic\|stopAcciaccaturaMusic\|stop\|stencil\|stemUp\|stemNeutral\|stemDown\|startTrillSpan\|startTextSpan\|startStaff\|startSlashedGraceMusic\|startRepeatSegnoBarType\|startRepeatBarType\|startMeasureSpanner\|startMeasureCount\|startGroup\|startGraceSlur\|startGraceMusic\|startAppoggiaturaMusic\|startAcciaccaturaMusic\|start\|staffHighlight\|staccato\|staccatissimo\|squashedPosition\|spp\|sp\|southernHarmonyHeadsMinor\|southernHarmonyHeads\|sostenutoOn\|sostenutoOff\|soloText\|soloIIText\|snappizzicato\|smaller\|smallCaps\|small\|slurUp\|slurSolid\|slurNeutral\|slurHalfSolid\|slurHalfDashed\|slurDown\|slurDotted\|slurDashed\|slurDashPattern\|slashturn\|slashedGrace\|slashed-digit\|slashChordSeparator\|skipTypesetting\|skipNCs\|skipNC\|skip\|single\|simultaneous\|simple\|signumcongruentiae\|showStaffSwitch\|showSplitTiedTabNotes\|shortfermata\|shortInstrumentName\|shiftOnnn\|shiftOnn\|shiftOn\|shiftOff\|shiftDurations\|sharp\|shape\|sfz\|sfp\|sff\|sf\|settingsFrom\|setDefaultDurationToQuarter\|set\|sesquisharp\|sesquiflat\|sequential\|semisharp\|semiflat\|semicirculus\|semiGermanChords\|segnoStyle\|segnoMarkFormatter\|segnoMark\|segnoBarType\|segno\|sectionLabel\|sectionBarType\|section\|searchForVoice\|scriptDefinitions\|score-lines\|score\|scaleDurations\|scale\|sans\|sacredHarpHeadsMinor\|sacredHarpHeads\|rtoe\|rounded-box\|rotate\|romanStringNumbers\|roman\|rightHandFinger\|right-column\|right-brace\|right-align\|right\|rhythm\|rheel\|rfz\|revertTimeSignatureSettings\|revert\|reverseturn\|retrograde\|restrainOpenStrings\|restNumberThreshold\|rest-by-number\|rest\|responsum\|resetRelativeOctave\|replace\|repeatTie\|repeatCountVisibility\|repeat\|removeWithTag\|remove\|relative\|rehearsalMarkFormatter\|rehearsalMark\|reduceChords\|raiseNote\|raise\|quotedEventTypes\|quotedCueEventTypes\|quoteDuring\|quilisma\|put-adjacent\|pushToTag\|pt\|proportionalNotationDuration\|propertyUnset\|propertyTweak\|propertySet\|propertyRevert\|propertyOverride\|property-recursive\|printPartCombineTexts\|printOctaveNames\|printKeyCancellation\|printAccidentalNames\|predefinedFretboardsOn\|predefinedFretboardsOff\|predefinedDiagramTable\|preBendHold\|preBend\|prallup\|prallprall\|prallmordent\|pralldown\|prall\|ppppp\|pppp\|ppp\|pp\|postscript\|portato\|polygon\|pointAndClickTypes\|pointAndClickOn\|pointAndClickOff\|pitchedTrill\|phrygian\|phrasingSlurUp\|phrasingSlurSolid\|phrasingSlurNeutral\|phrasingSlurHalfSolid\|phrasingSlurHalfDashed\|phrasingSlurDown\|phrasingSlurDotted\|phrasingSlurDashed\|phrasingSlurDashPattern\|pes\|pedalUnaCordaStyle\|pedalUnaCordaStrings\|pedalSustainStyle\|pedalSustainStrings\|pedalSostenutoStyle\|pedalSostenutoStrings\|pattern\|path\|partial\|partCombineUp\|partCombineUnisono\|partCombineTextsOnNote\|partCombineSoloII\|partCombineSoloI\|partCombineListener\|partCombineForce\|partCombineDown\|partCombineChords\|partCombineAutomatic\|partCombineApart\|partCombine\|parenthesize\|parallelMusic\|paper\|palmMuteOn\|palmMuteOff\|palmMute\|pageTurn\|pageBreak\|page-ref\|page-link\|pad-x\|pad-to-box\|pad-markup\|pad-around\|p\|overtie\|overrideTimeSignatureSettings\|overrideProperty\|override-lines\|override\|overlay\|oval\|ottavationMarkups\|ottava\|oriscus\|open\|oneVoice\|once\|on-the-fly\|omit\|offset\|octaveCheck\|numericTimeSignature\|number\|nullAccidentals\|null\|notemode\|noteToFretFunction\|noteNameSeparator\|noteNameFunction\|note-by-number\|note\|normalsize\|normal-text\|normal-size-super\|normal-size-sub\|noPageTurn\|noPageBreak\|noChordSymbol\|noBreak\|noBeam\|newSpacingSection\|new\|neumeDemoLayout\|natural\|name\|n\|musicglyph\|musicMap\|multi-measure-rest-by-number\|mp\|mordent\|modalTranspose\|modalInversion\|mm\|mixolydian\|minorChordModifier\|minor\|midiInstrument\|midiChannelMapping\|midi\|middleCPosition\|middleCClefPosition\|mf\|metronomeMarkFormatter\|mergeDifferentlyHeadedOn\|mergeDifferentlyHeadedOff\|mergeDifferentlyDottedOn\|mergeDifferentlyDottedOff\|melismaEnd\|melismaBusyProperties\|melisma\|medium\|medianChordGridStyle\|measurePosition\|measureBarType\|maxima\|markuplist\|markupMap\|markup\|markletter\|markalphabet\|markLengthOn\|markLengthOff\|mark\|marcato\|map-markup-commands\|makeClusters\|majorSevenSymbol\|major\|maininput\|magnifyStaff\|magnifyMusic\|magnify\|lyricsto\|lyrics\|lyricmode\|lyricRepeatCountFormatter\|lyricMelismaAlignment\|lydian\|ltoe\|lower\|lookup\|longfermata\|longa\|locrian\|localAlterations\|lineprall\|linea\|line\|ligature\|lheel\|left-column\|left-brace\|left-align\|left\|layout\|larger\|large\|languageSaveAndChange\|languageRestore\|language\|laissezVibrer\|label\|killCues\|kievanOn\|kievanOff\|keyAlterationOrder\|key\|keepWithTag\|keepAliveInterfaces\|justify-string\|justify-line\|justify-field\|justify\|justified-lines\|jump\|italic\|italianChords\|ionian\|invertChords\|inversion\|instrumentTransposition\|instrumentSwitch\|instrumentName\|instrumentEqualizer\|initialTimeSignatureVisibility\|indent\|include\|inclinatum\|incipit\|inStaffSegno\|in\|improvisationOn\|improvisationOff\|ij\|iij\|ignoreFiguredBassRest\|ignoreBarNumberChecks\|ignoreBarChecks\|ignatzekExceptions\|ignatzekExceptionMusic\|if\|ictus\|huge\|hspace\|highStringOne\|hideStaffSwitch\|hideSplitTiedTabNotes\|hideNotes\|hide\|henzeshortfermata\|henzelongfermata\|header\|hcenter-in\|hbracket\|haydnturn\|harp-pedal\|harmonicsOn\|harmonicsOff\|harmonicNote\|harmonicByRatio\|harmonicByFret\|harmonicAccidentals\|harmonic\|handleNegativeFrets\|halign\|halfopen\|grobdescriptions\|graceSettings\|grace\|glissando\|glide\|germanChords\|general-align\|fz\|funkHeadsMinor\|funkHeads\|fromproperty\|fret-diagram-verbose\|fret-diagram-terse\|fret-diagram\|frenchChords\|fraction\|fp\|forbidBreakBetweenBarLines\|footnote\|fontsize\|fontSize\|fontCaps\|flexa\|flat\|flageolet\|fixed\|firstClef\|first-visible\|fingeringOrientations\|finger\|fineText\|fineStartRepeatSegnoBarType\|fineSegnoBarType\|fineBarType\|fine\|finalis\|filled-box\|fill-with-pattern\|fill-line\|figures\|figuremode\|figuredBassPlusStrokedAlist\|figuredBassPlusDirection\|figuredBassLargeNumberAlignment\|figuredBassFormatter\|figuredBassAlterationDirection\|figured-bass\|fffff\|ffff\|fff\|ff\|fermata\|featherDurations\|f\|eyeglasses\|extraNatural\|extendersOverRests\|explicitKeySignatureVisibility\|explicitCueClefVisibility\|explicitClefVisibility\|expandEmptyMeasures\|eventChords\|etc\|espressivo\|epsfile\|episemInitium\|episemFinis\|enddim\|enddecresc\|enddecr\|endcresc\|endcr\|endSpanners\|endSkipNCs\|endRepeatSegnoBarType\|endRepeatBarType\|ellipse\|easyHeadsOn\|easyHeadsOff\|dynamicUp\|dynamicNeutral\|dynamicDown\|dynamicAbsoluteVolumeFunction\|dynamic\|drums\|drummode\|drumStyleTable\|drumPitchTable\|dropNote\|draw-squiggle-line\|draw-line\|draw-hline\|draw-dotted-line\|draw-dashed-line\|draw-circle\|downprall\|downmordent\|downbow\|down\|doublesharp\|doubleflat\|doubleRepeatSegnoBarType\|doubleRepeatBarType\|dotsUp\|dotsNeutral\|dotsDown\|dorian\|divisioMinima\|divisioMaxima\|divisioMaior\|displayScheme\|displayMusic\|displayLilyMusic\|dir-column\|dimTextDim\|dimTextDecresc\|dimTextDecr\|dimHairpin\|dim\|description\|descendens\|deprecatedenddim\|deprecatedendcresc\|deprecateddim\|deprecatedcresc\|denies\|deminutum\|defineBarLine\|defaultchild\|defaultTimeSignature\|defaultNoteHeads\|default\|decrescendoSpanner\|decresc\|decr\|deadNotesOn\|deadNotesOff\|deadNote\|dashUnderscore\|dashPlus\|dashLarger\|dashHat\|dashDot\|dashDash\|dashBang\|dalSegnoTextFormatter\|cueDuringWithClef\|cueDuring\|cueClefUnset\|cueClefTranspositionFormatter\|cueClef\|crossStaff\|crescendoSpanner\|crescTextCresc\|crescHairpin\|cresc\|createSpacing\|cr\|context\|consists\|concat\|compressMMRests\|compressEmptyMeasures\|compoundMeter\|completionFactor\|command-name\|combine\|column-lines\|column\|codaMarkFormatter\|codaMark\|coda\|cm\|clefTranspositionFormatter\|clefTransposition\|clefPosition\|clefGlyph\|clef\|circulus\|circle\|chords\|chordmodifiers\|chordmode\|chordRootNamer\|chordPrefixSpacer\|chordNoteNamer\|chordNameSeparator\|chordNameLowercaseMinor\|chordNameFunction\|chordNameExceptions\|char\|change\|centerBarNumbers\|center-column\|center-align\|center\|cavum\|caps\|caesuraTypeTransform\|caesuraType\|caesura\|cadenzaOn\|cadenzaOff\|breve\|breathe\|breathMarkType\|breathMarkDefinitions\|breakDynamicSpan\|break\|bracket\|bp\|box\|bookpart\|bookOutputSuffix\|bookOutputName\|book\|bold\|blackTriangleMarkup\|bigger\|bendStartLevel\|bendHold\|bendAfter\|beamHalfMeasure\|beamExceptions\|beam\|bassFigureStaffAlignmentUp\|bassFigureStaffAlignmentNeutral\|bassFigureStaffAlignmentDown\|bassFigureExtendersOn\|bassFigureExtendersOff\|barNumberVisibility\|barNumberFormatter\|barNumberCheck\|barCheckSynchronize\|bar\|balloonText\|balloonLengthOn\|balloonLengthOff\|balloonGrobText\|backslashed-digit\|autoPageBreaksOn\|autoPageBreaksOff\|autoLineBreaksOn\|autoLineBreaksOff\|autoChange\|autoCautionaries\|autoBreaksOn\|autoBreaksOff\|autoBeaming\|autoBeamOn\|autoBeamOff\|autoBeamCheck\|autoAccidentals\|auto-footnote\|augmentum\|auctum\|associatedVoiceType\|assertBeamSlope\|assertBeamQuant\|ascendens\|arrow-head\|arpeggioParenthesisDashed\|arpeggioParenthesis\|arpeggioNormal\|arpeggioBracket\|arpeggioArrowUp\|arpeggioArrowDown\|arpeggio\|arabicStringNumbers\|appoggiatura\|applyOutput\|applyMusic\|applyContext\|appendToTag\|ambitusAfter\|alternativeRestores\|alternative\|alterationGlyphs\|alterBroken\|allowVoltaHook\|allowPageTurn\|allowBreak\|align-on-other\|alias\|aikenThinHeadsMinor\|aikenThinHeads\|aikenHeadsMinor\|aikenHeads\|afterGraceFraction\|afterGrace\|after\|aeolian\|addlyrics\|additionalPitchPrefix\|addQuote\|addInstrumentDefinition\|accidentalStyle\|accidental\|acciaccatura\|accepts\|accentus\|accent\|absolute\|abs-fontsize\|aDueText\|IJ\|IIJ\|C\|B\|A\|n\)\(\A\|\n\)"me=e-1
syn match lilyReservedWord "\(\A\|\n\)\(staff\|spacing\|signature\|routine\|notes\|handler\|corrected\|beams\|arpeggios\|Voice\|VaticanaVoice\|VaticanaStaff\|VaticanaLyrics\|Time_signature_engraver\|TabVoice\|TabStaff\|System_start_delimiter_engraver\|StandaloneRhythmVoice\|StandaloneRhythmStaff\|StandaloneRhythmScore\|StaffGroup\|Staff\|Score\|RhythmicStaff\|PianoStaff\|PetrucciVoice\|PetrucciStaff\|OneStaff\|NullVoice\|NoteNames\|NoteHead\|MensuralVoice\|MensuralStaff\|Lyrics\|KievanVoice\|KievanStaff\|InternalGregorianStaff\|GregorianTranscriptionVoice\|GregorianTranscriptionStaff\|GregorianTranscriptionLyrics\|GrandStaff\|Global\|FretBoards\|FiguredBass\|Dynamics\|DrumVoice\|DrumStaff\|Devnull\|CueVoice\|ChordNames\|ChordGridScore\|ChordGrid\|ChoirStaff\|BarLine\|Axis_group_engraver\|Alteration_glyph_engraver\|Score\)\(\A\|\n\)"ms=s+1,me=e-1
syn match lilyNote "\<\(\(\(solx\|soltqs\|soltqd\|soltqb\|soltcs\|soltcb\|solstqt\|solss\|solsqt\|solsd\|solsb\|sols\|solqs\|solqd\|solqb\|solkk\|solkhk\|solk\|solhk\|solhb\|soldsd\|soldd\|sold\|solcs\|solcb\|solbtqt\|solbsb\|solbqt\|solbhb\|solbb\|solb\|sol\|six\|sitqs\|sitqd\|sitqb\|sitcs\|sitcb\|sistqt\|siss\|sisqt\|sisd\|sisb\|sis\|siqs\|siqd\|siqb\|sikk\|sikhk\|sik\|sihk\|sihb\|sidsd\|sidd\|sid\|sics\|sicb\|sibtqt\|sibsb\|sibqt\|sibhb\|sibb\|sib\|si\|rex\|retqs\|retqd\|retqb\|retcs\|retcb\|restqt\|ress\|resqt\|resd\|resb\|res\|reqs\|reqd\|reqb\|rekk\|rekhk\|rek\|rehk\|rehb\|redsd\|redd\|red\|recs\|recb\|rebtqt\|rebsb\|rebqt\|rebhb\|rebb\|reb\|re\|mix\|mitqs\|mitqd\|mitqb\|mitcs\|mitcb\|mistqt\|miss\|misqt\|misd\|misb\|mis\|miqs\|miqd\|miqb\|mikk\|mikhk\|mik\|mihk\|mihb\|midsd\|midd\|mid\|mics\|micb\|mibtqt\|mibsb\|mibqt\|mibhb\|mibb\|mib\|mi\|lax\|latqs\|latqd\|latqb\|latcs\|latcb\|lastqt\|lass\|lasqt\|lasd\|lasb\|las\|laqs\|laqd\|laqb\|lakk\|lakhk\|lak\|lahk\|lahb\|ladsd\|ladd\|lad\|lacs\|lacb\|labtqt\|labsb\|labqt\|labhb\|labb\|lab\|la\|hississ\|hissih\|hiss\|hisis\|hisih\|his\|hih\|hessess\|hesseh\|heses\|heseh\|heh\|h\|gx\|gtqs\|gtqf\|gtqd\|gtqb\|gss\|gshd\|gshb\|gs\|gqs\|gqf\|gississ\|gissih\|giss\|gisis\|gisih\|gis\|gih\|gfhd\|gfhb\|gff\|gf\|gessess\|gesseh\|gess\|geses\|geseh\|ges\|geh\|gdd\|gdb\|gd\|gb\|g\|fx\|ftqs\|ftqf\|ftqd\|ftqb\|fss\|fshd\|fshb\|fs\|fqs\|fqf\|fississ\|fissih\|fiss\|fisis\|fisih\|fis\|fih\|ffhd\|ffhb\|fff\|ff\|fessess\|fesseh\|fess\|feses\|feseh\|fes\|feh\|fdd\|fdb\|fd\|fb\|fax\|fatqs\|fatqd\|fatqb\|fatcs\|fatcb\|fastqt\|fass\|fasqt\|fasd\|fasb\|fas\|faqs\|faqd\|faqb\|fakk\|fakhk\|fak\|fahk\|fahb\|fadsd\|fadd\|fad\|facs\|facb\|fabtqt\|fabsb\|fabqt\|fabhb\|fabb\|fab\|fa\|f\|ex\|etqs\|etqf\|etqd\|etqb\|essess\|esseh\|ess\|eshd\|eshb\|eses\|eseh\|es\|eqs\|eqf\|eississ\|eissih\|eiss\|eisis\|eisih\|eis\|eih\|eh\|efhd\|efhb\|eff\|ef\|eessess\|eesseh\|eess\|eeses\|eeseh\|ees\|eeh\|edd\|edb\|ed\|eb\|e\|dx\|dtqs\|dtqf\|dtqd\|dtqb\|dss\|dshd\|dshb\|ds\|dqs\|dqf\|dox\|dotqs\|dotqd\|dotqb\|dotcs\|dotcb\|dostqt\|doss\|dosqt\|dosd\|dosb\|dos\|doqs\|doqd\|doqb\|dokk\|dokhk\|dok\|dohk\|dohb\|dodsd\|dodd\|dod\|docs\|docb\|dobtqt\|dobsb\|dobqt\|dobhb\|dobb\|dob\|do\|dississ\|dissih\|diss\|disis\|disih\|dis\|dih\|dfhd\|dfhb\|dff\|df\|dessess\|desseh\|dess\|deses\|deseh\|des\|deh\|ddd\|ddb\|dd\|db\|d\|cx\|ctqs\|ctqf\|ctqd\|ctqb\|css\|cshd\|cshb\|cs\|cqs\|cqf\|cississ\|cissih\|ciss\|cisis\|cisih\|cis\|cih\|cfhd\|cfhb\|cff\|cf\|cessess\|cesseh\|cess\|ceses\|ceseh\|ces\|ceh\|cdd\|cdb\|cd\|cb\|c\|bx\|btqs\|btqf\|btqd\|btqb\|bss\|bshd\|bshb\|bs\|bqs\|bqf\|bisis\|bisih\|bis\|bih\|bfhd\|bfhb\|bff\|bf\|bess\|beses\|beseh\|bes\|beh\|bdd\|bdb\|bd\|bb\|b\|ax\|atqs\|atqf\|atqd\|atqb\|assess\|asseh\|ass\|ashd\|ashb\|ases\|aseh\|asas\|asah\|as\|aqs\|aqf\|aississ\|aissih\|aiss\|aisis\|aisih\|ais\|aih\|ah\|afhd\|afhb\|aff\|af\|aessess\|aesseh\|aess\|aeses\|aeseh\|aes\|aeh\|add\|adb\|ad\|ab\|a\|a\)\([,']\)\{,4}\([?!]\)\?\)\|s\|r\|R\|q\)\(\(128\|64\|32\|16\|8\|4\|2\|1\|\\breve\|\\longa\|\\maxima\)[.]\{,8}\)\?\(\A\|\n\)"me=e-1

" Match also parethesis of angle type
setlocal mps+=<:>

" Case matters
syn case match

syn cluster lilyMatchGroup	contains=lilyMatcher,lilyString,lilyComment,lilyStatement,lilyNumber,lilySlur,lilySpecial,lilyNote,lilyKeyword,lilyArticulation,lilyReservedWord,lilyScheme

syn region lilyMatcher	matchgroup=Delimiter start="{" skip="\\\\\|\\[<>]"	end="}"	contains=@lilyMatchGroup fold
syn region lilyMatcher	matchgroup=Delimiter start="\["		end="]"	contains=@lilyMatchGroup fold
syn region lilyMatcher	matchgroup=Delimiter start="<" skip="\\\\\|\\[{<>}]" end=">"	contains=@lilyMatchGroup fold

syn region lilyString	start=/"/ end=/"/ skip=/\\"/
syn region lilyComment	start="%{" skip="%$" end="%}"
syn region lilyComment	start="%\([^{]\|$\)" end="$"

syn match lilyNumber	"[-_^.]\?\d\+[.]\?"
syn match lilySlur	"[(~)]"
syn match lilySlur	"\\[()]"
syn match lilySpecial	"\\[<!>\\]"
" avoid highlighting the extra character in situations like
" c--\mf c^^\mf c__\mf
syn match lilyArticulation	"[-_^][-_^+|>.]"

" Include Scheme syntax highlighting, where appropriate
syn include @embeddedScheme syntax/scheme.vim
unlet b:current_syntax
syn region lilyScheme matchgroup=Delimiter start="#['`]\?(" matchgroup=Delimiter end=")" contains=@embeddedScheme

" Rest of syntax highlighting rules start here
"
" " Define the default highlighting.
" " For version 5.7 and earlier: only when not done already
" " For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_lily_syn_inits")
  if version < 508
    let did_lily_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink Delimiter	Identifier
  
  HiLink lilyString	String
  HiLink lilyComment	Comment
 
  HiLink lilyNote	Identifier
  HiLink lilyArticulation	PreProc
  HiLink lilyKeyword	Keyword
  HiLink lilyReservedWord	Type

  HiLink lilyNumber	Constant
  HiLink lilySpecial	Special
  HiLink lilySlur	ModeMsg

  delcommand HiLink
endif
