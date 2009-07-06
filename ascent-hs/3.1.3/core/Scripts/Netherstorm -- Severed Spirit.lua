--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]
function Spirit_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Spirit_Nova",10000,0)
    pUnit:RegisterEvent("Spirit_Bolt",4000,0)
end

function Spirit_Nova(pUnit,Event)
    pUnit:CastSpell(11831)
end   

function Spirit_Bolt(pUnit,Event)
    pUnit:FullCastSpellOnTarget(20822,pUnit:GetMainTank())
end

function Spirit_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Spirit_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19881, 1, "Spirit_OnEnterCombat")
RegisterUnitEvent (19881, 2, "Spirit_OnLeaveCombat")
RegisterUnitEvent (19881, 4, "Spirit_OnDied")