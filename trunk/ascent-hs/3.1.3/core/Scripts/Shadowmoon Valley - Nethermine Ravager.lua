--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function NethermineRavager_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("NethermineRavager_Rend", 15000, 0)
	pUnit:RegisterEvent("NethermineRavager_RockShell", 18000, 0)
end

function NethermineRavager_Rend(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13443,pUnit:GetClosestPlayer())
end

function NethermineRavager_RockShell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33810,pUnit:GetClosestPlayer())
end

function NethermineRavager_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function NethermineRavager_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23326, 1, "NethermineRavager_OnEnterCombat")
RegisterUnitEvent(23326, 2, "NethermineRavager_OnLeaveCombat")
RegisterUnitEvent(23326, 4, "NethermineRavager_OnDied")