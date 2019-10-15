${SegmentFile}

${SegmentPre}
	${If} ${FileExists} "$EXEDIR\App\Bitwarden\resources\app-update.yml"
		Rename "$EXEDIR\App\Bitwarden\resources\app-update.yml" "$EXEDIR\App\Bitwarden\resources\app-update.yml-Disabled"
	${EndIf}
!macroend

${SegmentPost}
	${If} ${FileExists} "$EXEDIR\App\Bitwarden\resources\app-update.yml-Disabled"
		Rename "$EXEDIR\App\Bitwarden\resources\app-update.yml-Disabled" "$EXEDIR\App\Bitwarden\resources\app-update.yml"
	${EndIf}
!macroend
