--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DCRavenguard_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DCRavenguard_Enrage", 120000, 0)
	pUnit:RegisterEvent("DCRavenguard_Howl", 27000, 0)
end

function DCRavenguard_Enrage(pUnit,Event)
	pUnit:FullCastSpellOnTarget(8599,pUnit:GetClosestPlayer())
end

function DCRavenguard_Howl(pUnit,Event)
	pUnit:FullCastSpellOnTarget(23600,pUnit:GetClosestPlayer())
end

function DCRavenguard_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

function DCRavenguard_LeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19827, 1, "DCRavenguard_OnEnterCombat")
RegisterUnitEvent(19827, 2, "DCRavenguard_LeaveCombat")
RegisterUnitEvent(19827, 4, "DCRavenguard_OnDied")