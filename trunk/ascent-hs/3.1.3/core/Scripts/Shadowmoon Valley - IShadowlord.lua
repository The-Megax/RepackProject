--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function IShadowlord_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("IShadowlord_Sleep", 000, 0)
	pUnit:RegisterEvent("IShadowlord_CarrionSwarm", 000, 0)
	pUnit:RegisterEvent("IShadowlord_Inferno", 000, 0)
end

function IShadowlord_Sleep(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12098,pUnit:GetClosestPlayer())
end

function IShadowlord_CarrionSwarm(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39942,pUnit:GetClosestPlayer())
end

function IShadowlord_Inferno(pUnit,Event)
 if pUnit:GetHealthPct() == 64 then
	pUnit:FullCastSpellOnTarget(39942,pUnit:GetClosestPlayer())
end
end

function IShadowlord_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function IShadowlord_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22988, 1, "IShadowlord_OnEnterCombat")
RegisterUnitEvent(22988, 2, "IShadowlord_OnLeaveCombat")
RegisterUnitEvent(22988, 4, "IShadowlord_OnDied")