--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Angered_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Angered_Bolt", 1000, 0)
    pUnit:RegisterEvent("Angered_Blast", 6000, 0)
end

function Angered_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(39337, pUnit:GetClosestPlayer())
end

function Angered_Blast(pUnit,Event)
    pUnit:FullCastSpellOnTarget(38205, pUnit:GetClosestPlayer())
end

function Angered_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Angered_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (17870, 1, "Angered_OnEnterCombat")
RegisterUnitEvent (17870, 2, "Angered_OnLeaveCombat")
RegisterUnitEvent (17870, 4, "Angered_OnDied")


