--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Ark_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Ark_Explosion",1500,0)
end

function Ark_Explosion(pUnit,Event)
    pUnit:FullCastSpellOnTarget(11975, pUnit:GetClosestPlayer())
end

function Ark_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Ark_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19494, 1, "Ark_OnEnterCombat")
RegisterUnitEvent (19494, 2, "Ark_OnLeaveCombat")
RegisterUnitEvent (19494, 4, "Ark_OnDied")
