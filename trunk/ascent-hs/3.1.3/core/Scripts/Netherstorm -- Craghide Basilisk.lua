--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Basilisk_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Basilisk_Gaze",45000,0)
    pUnit:RegisterEvent("Basilisk_Charge",1000,0)
end

function Basilisk_Gaze(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35313, pUnit:GetClosestPlayer())
end

function Basilisk_Charge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35385, pUnit:GetClosestPlayer())
end

function Basilisk_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Basilisk_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20607, 1, "Basilisk_OnEnterCombat")
RegisterUnitEvent (20607, 2, "Basilisk_OnLeaveCombat")
RegisterUnitEvent (20607, 4, "Basilisk_OnDied")
