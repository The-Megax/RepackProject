--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Avenger_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Avenger_Shout",1000,0)
    pUnit:RegisterEvent("Avenger_Charge",1000,0)
    pUnit:RegisterEvent("Avenger_Weapons",1000,0)
end

function Avenger_Charge(pUnit,Event)
    pUnit:FullCastSpellOnTarget(32064,pUnit:GetClosestPlayer())
end

function Avenger_Intangible(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36509,pUnit:GetClosestPlayer())
end

function Avenger_Weapons(pUnit,Event)
    pUnit:FullCastSpellOnTarget(39489,pUnit:GetClosestPlayer())
end

function Avenger_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Avenger_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (22821, 1, "Avenger_OnEnterCombat")
RegisterUnitEvent (22821, 2, "Avenger_OnEnterCombat")
RegisterUnitEvent (22821, 4, "Avenger_OnEnterCombat")