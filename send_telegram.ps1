param($p1, $p2, $p3)
$count = 0
$Telegramtoken
$Telegramchatid
$Message
foreach ($key in $PSBoundParameters.keys) {
	switch ($count){
		0 {
			$Telegramtoken = $PSBoundParameters["$key"]
		   } 
		1 {
				$Telegramchatid = $PSBoundParameters["$key"]
		   }
		2 {
				$Message = $PSBoundParameters["$key"]
		  }
    }
		$count++;
}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;
$Response = Invoke-RestMethod -Uri "https://api.telegram.org/bot$($Telegramtoken)/sendMessage?chat_id=$($Telegramchatid)&text=$($Message)"
Write-Host $Response
