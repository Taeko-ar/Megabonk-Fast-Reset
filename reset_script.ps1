# Define file path to store the saved Steam ID
$steamIdFile = ".\steam_id.txt"

# Check if steam_id.txt exists, if not, prompt the user to create it
if (-not (Test-Path $steamIdFile)) {
    Write-Host "steam_id.txt does not exist. A new file will be created."
    do {
        $savedSteamId = Read-Host "Enter your Steam ID (numbers only)"
    } while ($savedSteamId -notmatch "^\d+$")
    Set-Content $steamIdFile -Value $savedSteamId -Encoding UTF8
    Write-Host "Steam ID has been saved."
} else {
    # Check if a Steam ID is already saved
    $savedSteamId = Get-Content $steamIdFile
    Write-Host "Current saved Steam ID is: $savedSteamId"
}

# JSON content to be written when 'u' is triggered
$jsonData = @"
{"gold":9999999,"stats":{"kills":{"name":"kills","value":0},"goldEarned":{"name":"goldEarned","value":0},"goldSpent":{"name":"goldSpent","value":0},"chestsOpened":{"name":"chestsOpened","value":0},"itemsPickedUp":{"name":"itemsPickedUp","value":0},"eliteKills":{"name":"eliteKills","value":0},"bossKills":{"name":"bossKills","value":0},"xpGained":{"name":"xpGained","value":0},"skeletonKills":{"name":"skeletonKills","value":0},"damageReductionArmorAsKnight":{"name":"damageReductionArmorAsKnight","value":0},"damageReductionArmor":{"name":"damageReductionArmor","value":0},"projectilesFired":{"name":"projectilesFired","value":0},"evades":{"name":"evades","value":0},"potsBroken":{"name":"potsBroken","value":0},"shrineSucc":{"name":"shrineSucc","value":0},"fireKills":{"name":"fireKills","value":0},"shrineCharge":{"name":"shrineCharge","value":0},"lifestealHealing":{"name":"lifestealHealing","value":0},"shrineChallenge":{"name":"shrineChallenge","value":0},"crits":{"name":"crits","value":0},"chestsBought":{"name":"chestsBought","value":0},"minibossKills":{"name":"minibossKills","value":0},"runs":{"name":"runs","value":0},"fireStaffKills":{"name":"fireStaffKills","value":0},"FoxKills":{"name":"FoxKills","value":0},"lightningBoltKills":{"name":"lightningBoltKills","value":0},"unknownKills":{"name":"unknownKills","value":0},"swordKills":{"name":"swordKills","value":0},"KnightKills":{"name":"KnightKills","value":0},"iceCubeKills":{"name":"iceCubeKills","value":0},"poisonKills":{"name":"poisonKills","value":0},"bonkerKills":{"name":"bonkerKills","value":0},"auraKills":{"name":"auraKills","value":0},"bananarangKills":{"name":"bananarangKills","value":0},"MegachadKills":{"name":"MegachadKills","value":0},"aegisKills":{"name":"aegisKills","value":0},"lethalGiftKills":{"name":"lethalGiftKills","value":0},"thornsKills":{"name":"thornsKills","value":0},"spicyMeatballKills":{"name":"spicyMeatballKills","value":0},"grandmasSecretTonicKills":{"name":"grandmasSecretTonicKills","value":0},"boneKills":{"name":"boneKills","value":0},"CalciumKills":{"name":"CalciumKills","value":0},"flamewalkerKills":{"name":"flamewalkerKills","value":0},"revolverKills":{"name":"revolverKills","value":0},"shatteredWisdomKills":{"name":"shatteredWisdomKills","value":0},"RobotCowboyKills":{"name":"RobotCowboyKills","value":0},"dragonfireKills":{"name":"dragonfireKills","value":0},"burnKills":{"name":"burnKills","value":0},"sluttyRocketKills":{"name":"sluttyRocketKills","value":0},"lightningOrbKills":{"name":"lightningOrbKills","value":0},"sluttyCannonKills":{"name":"sluttyCannonKills","value":0}},"achievements":["a_knight","a_sword","a_battery","a_socks","a_aura","a_bone","a_axe","a_key","a_luckTome","a_demonicSoul","a_demonBlade","a_forbiddenJuice","a_aegis","a_megachad","a_chonkplate","a_revolver","a_shatteredWisdom","a_bossMegachad","a_grandmasSecretTonic","a_cowboy","a_calcium","a_bossFox","a_bossCalcium","a_suckyMagnet","a_survive2","a_bossCowboy","a_dragonfire","a_cursedTome","a_skuleg","a_bossSlayer","a_bossKnight","a_kills5000","a_survive4","a_giantFork","a_sluttyRocket","a_sluttyCannon","a_unlockEverything","a_kills100k","a_allQuests","a_bloodTome","a_zaWarudo","a_lethalGift","attractionTome","a_goldenSneakers","a_xpTome","a_quantityTome","a_goldenTome","a_armorTome","a_evasionTome","a_thornsTome","a_lightningOrb"],"purchases":["Sword","Knight","Aura","Key","Megachad","Luck","Aegis","GrandmasSecretTonic","Bone","Calcium","SuckyMagnet","Xp","Cursed","Skuleg","Revolver","RobotCowboy","Axe"],"enemyLogs":{"Head":{"kills":0,"currentChallengeTier":0},"Skeleton":{"kills":0,"currentChallengeTier":0},"GoldenSkeleton":{"kills":0,"currentChallengeTier":0},"Boomer":{"kills":0,"currentChallengeTier":0},"Demon":{"kills":0,"currentChallengeTier":0},"Werewolf":{"kills":0,"currentChallengeTier":0},"Muscular":{"kills":0,"currentChallengeTier":0},"Tank":{"kills":0,"currentChallengeTier":0},"Fast":{"kills":0,"currentChallengeTier":0},"MinibossMuscle":{"kills":0,"currentChallengeTier":0},"XpSkeleton":{"kills":0,"currentChallengeTier":0},"Bigfoot":{"kills":0,"currentChallengeTier":0},"ElderBigfoot":{"kills":0,"currentChallengeTier":0},"ForsakenBigfoot":{"kills":0,"currentChallengeTier":0},"Slobbergrub":{"kills":0,"currentChallengeTier":0},"Slobbertoast":{"kills":0,"currentChallengeTier":0},"Speedyboi":{"kills":0,"currentChallengeTier":0},"MinibossPig":{"kills":0,"currentChallengeTier":0},"ArmoredSkeleton":{"kills":0,"currentChallengeTier":0},"ArmoredHead":{"kills":0,"currentChallengeTier":0},"SkeletonDusty":{"kills":0,"currentChallengeTier":0},"ArmoredSkeletonDusty":{"kills":0,"currentChallengeTier":0},"Mummy":{"kills":0,"currentChallengeTier":0},"Slime":{"kills":0,"currentChallengeTier":0},"Test":{"kills":0,"currentChallengeTier":0},"Test2":{"kills":0,"currentChallengeTier":0}},"hasNewQuestDone":false,"newUnlockables":[]}
"@

# Main loop
do {
    $input = Read-Host "Enter 'u' to update, 'change' to change Steam ID, or 'exit' to quit"

    if ($input -eq 'u') {
        $jsonFile = "C:\Program Files (x86)\Steam\steamapps\common\Megabonk Demo\Megabonk Demo_Data\SavesDir\$savedSteamId\progression.json"
        $backupFile = "$jsonFile.bak"

        # Close Megabonk if running
        $gameProcess = Get-Process -Name "Megabonk Demo" -ErrorAction SilentlyContinue
        if ($gameProcess) {
            Stop-Process -Id $gameProcess.Id -Force
            Write-Host "Closed Megabonk Demo."
        } else {
            Write-Host "Megabonk Demo is not running."
        }

        # Backup and update progression.json
        if (Test-Path $jsonFile) { Copy-Item $jsonFile -Destination $backupFile -Force }
        Set-Content -Path $jsonFile -Value $jsonData -Encoding UTF8
        Write-Host "Updated progression.json."

        # Relaunch the game
        Start-Process "steam://launch/3520070/dialog"
        Write-Host "Reopened Megabonk Demo."
    }
    elseif ($input -eq 'change') {
        do {
            $savedSteamId = Read-Host "Enter a new Steam ID (numbers only)"
        } while ($savedSteamId -notmatch "^\d+$")
        Set-Content $steamIdFile -Value $savedSteamId -Encoding UTF8
        Write-Host "Steam ID updated."
    }
} while ($input -ne 'exit')

Write-Host "Exiting script."
