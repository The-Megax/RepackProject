--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Daughter_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Daughter_Nova",2000,0)
end

function Daughter_Nova(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36225, pUnit:GetClosestPlayer())
end

function Daughter_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Daughter_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18860, 1, "Daughter_OnEnterCombat")
RegisterUnitEvent (18860, 2, "Daughter_OnLeaveCombat")
RegisterUnitEvent (18860, 4, "Daughter_OnDied")
