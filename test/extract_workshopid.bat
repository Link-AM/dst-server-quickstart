@echo off
setlocal enableDelayedExpansion

for /f delims^=^] %%a in ('findstr /r "workshop-" "modoverrides.lua" ') do (
	set match=%%a
	(for /f delims^=^" %%b in ("!match:~13!") do (
		set wsid=%%b
		echo !wsid!
	))
)