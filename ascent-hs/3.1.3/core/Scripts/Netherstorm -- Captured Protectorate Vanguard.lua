--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Captured_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Captured_Glaive",1000,0)
    pUnit:RegisterEvent("Captured_Hamstring",10000,0)
end

function Captured_Glaive(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36500,pUnit:GetClosestPlayer())
end

function Captured_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31553,pUnit:GetClosestPlayer())
end

function Captured_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Captured_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20763, 1, "Captured_OnEnterCombat")
RegisterUnitEvent (20763, 2, "Captured_OnLeaveCombat")
RegisterUnitEvent (20763, 4, "Captured_OnDied")

