--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Spectre_OnEnterCombat(Unit,Event)
    Unit:RegisterEvent("Spectre_Curse",1000,0)
    Unit:RegisterEvent("Spectre_Bolt",3000,0)
end

function Spectre_Curse(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11980,pUnit:GetClosestPlayer())
end

function Spectre_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(9613,pUnit:GetClosestPlayer())
end

function Spectre_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Spectre_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20496, 1, "Spectre_OnEnterCombat")
RegisterUnitEvent (20496, 2, "Spectre_OnLeaveCombat")
RegisterUnitEvent (20496, 4, "Spectre_OnDied")