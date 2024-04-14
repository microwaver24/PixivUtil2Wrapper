@ECHO OFF

IF %1.==. (
	set /A startPage=1
	set /A endPage=5
) ELSE (
	IF %2.==. (
		set /A startPage=1
		set endPage=%1
	) ELSE (
		set startPage=%1
		set endPage=%2
	)
)

if %startPage% lss 1 (
	set /A startPage=1
)
if %endPage% lss 1 (
	set /A endPage=1
)

if %startPage% gtr %endPage% (
	set swapper=%startPage%
	set startPage=%endPage%
	set endPage=%swapper%
	set "swapper="
)

set /A pageCount=%endPage%-%startPage%+1
set /A imageCount=%pageCount%*48
echo pages to download: %startPage% - %endPage%
echo total pages count: %pageCount%
echo max works count: %imageCount%

set binPath=bin

for /f "tokens=*" %%G in ('dir /b /a:d "%binPath%\pixivutil*"') do set "pixivPath=%binPath%\%%G"

echo pixiv path: %pixivPath%

pushd "%pixivPath%"
PixivUtil2.exe --start_action 6 --bookmark_flag y --start_page %startPage% --end_page %endPage%
popd

@ECHO ON
