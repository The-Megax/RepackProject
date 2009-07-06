--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Seeker_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Seeker_Burn",3000,0)
    pUnit:RegisterEvent("Seeker_Lock",1000,0)
end

function Seeker_Burn(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11981, pUnit:GetClosestPlayer())
end

function Seeker_Lock(pUnit,Event)
    pUnit:FullCastSpellOnTarget(30849, pUnit:GetClosestPlayer())
end

function Ark_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ark_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19852, 1, "Seeker_OnEnterCombat")
RegisterUnitEvent (19852, 2, "Seeker_OnLeaveCombat")
RegisterUnitEvent (19852, 4, "Seeker_OnDied")
