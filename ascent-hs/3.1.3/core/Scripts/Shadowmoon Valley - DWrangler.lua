--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DWrangler_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("DWrangler_Net", 20000, 0)
	pUnit:RegisterEvent("DWrangler_Enrage", 1000, 0)
end

function DWrangler_Net(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38338,pUnit:GetClosestPlayer())
end

function DWrangler_Enrage(pUnit,Event)
 if pUnit:GetHealthPct() == 94 then
	pUnit:CastSpell(8599)
end
end

function DWrangler_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function DWrangler_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21717, 1, "DWrangler_OnEnterCombat")
RegisterUnitEvent(21717, 2, "DWrangler_OnLeaveCombat")
RegisterUnitEvent(21717, 4, "DWrangler_OnDied")