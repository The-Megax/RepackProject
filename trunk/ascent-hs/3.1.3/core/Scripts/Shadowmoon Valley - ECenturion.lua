--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ECenturion_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("ECenturion_SpellBreaker", 18000, 0)
	pUnit:RegisterEvent("ECenturion_Bloodheal", 1000, 0)
end


function ECenturion_SpellBreaker(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35871,pUnit:GetClosestPlayer())
end

function ECenturion_Bloodheal(pUnit,Event)
 if pUnit:GetHealthPct() == 2 then
	pUnit:CastSpell(36476)
end
end

function ECenturion_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ECenturion_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19792, 1, "ECenturion_OnEnterCombat")
RegisterUnitEvent(19792, 2, "ECenturion_OnLeaveCombat")
RegisterUnitEvent(19792, 4, "ECenturion_OnDied")