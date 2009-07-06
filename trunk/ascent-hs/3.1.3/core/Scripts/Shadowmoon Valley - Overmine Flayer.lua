--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function OvermineFlayer_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("OvermineFlayer_Rend", 30000, 0)
	pUnit:RegisterEvent("OvermineFlayer_RockShell", 18000, 0)
end

function OvermineFlayer_Rend(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13443,pUnit:GetClosestPlayer())
end

function OvermineFlayer_RockShell(pUnit,Event)
	pUnit:CastSpell(33810)
end

function OronuTheElder_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function OronuTheElder_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(23264, 1, "OvermineFlayer_OnEnterCombat")
RegisterUnitEvent(23264, 2, "OvermineFlayer_OnLeaveCombsat")
RegisterUnitEvent(23264, 4, "OvermineFlayer_OnDied")