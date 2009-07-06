--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Snapper_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Snapper_DeMaterialize",1000,0)
    pUnit:RegisterEvent("Snapper_Burn",1000,0)
end

function Snapper_DeMaterialize(pUnit,Event)
    pUnit:CastSpell(34814)
end

function Snapper_Burn(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37176,pUnit:GetMainTank())
end

function Snapper_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Snapper_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18883, 1, "Snapper_OnEnterCombat")
RegisterUnitEvent (18883, 2, "Snapper_OnLeaveCombat")
RegisterUnitEvent (18883, 4, "Snapper_OnDied")