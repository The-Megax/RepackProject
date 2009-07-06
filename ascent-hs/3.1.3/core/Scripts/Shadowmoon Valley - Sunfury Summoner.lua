--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SunfurySummoner_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(13901)
	pUnit:RegisterEvent("SunfurySummoner_ArcaneBolt", 5000, 0)
	pUnit:RegisterEvent("SunfurySummoner_Blink", 1000, 1)
end

function SunfurySummoner_ArcaneBolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13901,pUnit:GetRandomFriend())
end

function SunfurySummoner_Blink(pUnit,Event)
 if pUnit:GetHealthPct() == 4 then
	pUnit:CastSpell(36994)
end
end

function SunfurySummoner_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function SunfurySummoner_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21505, 1, "SunfurySummoner_OnEnterCombat")
RegisterUnitEvent(21505, 2, "SunfurySummoner_OnLeaveCombat")
RegisterUnitEvent(21505, 4, "SunfurySummoner_OnDied")