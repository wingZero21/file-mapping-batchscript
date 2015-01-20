if exist s:nul if exist map.lock del map.lock & goto END

if exist map.lock goto END

if exist s:nul goto END
else
print "drive not mapped"
blat -to "EMAIL-HERE" -server SMTP-HERE -f SERVER-HERE@root.com -subject "Mapping Failed" -body "drive Mapping Failed/disconnected"
echo & map.lock
net use s: \\DNS-ADDRESS-HERE\FOLDER-HERE
:END
