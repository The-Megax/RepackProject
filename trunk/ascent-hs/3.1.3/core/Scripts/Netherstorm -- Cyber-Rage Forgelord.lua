--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Forgelord_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Forgelord_Nova",2000,0)
    pUnit:RegisterEvent("Forgelord_Enrage",120000,0)
end

function Forgelord_Nova(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36255, pUnit:GetClosestPlayer())
end

function Forgelord_Enrage(pUnit,Event)
    pUnit:CastSpell(8599)
end

function Forgelord_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Forgelord_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16943, 1, "Forgelord_OnEnterCombat")
RegisterUnitEvent (16943, 2, "Forgelord_OnLeaveCombat")
RegisterUnitEvent (16943, 4, "Forgelord_OnDied")
