--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Beast_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Beast_Burn",1000,0)
end

function Beast_Burn(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36484,pUnit:GetClosestPlayer())
end

function Beast_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Beast_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21267, 1, "Beast_OnEnterCombat")
RegisterUnitEvent (21267, 2, "Beast_OnLeaveCombat")
RegisterUnitEvent (21267, 4, "Beast_OnDied")