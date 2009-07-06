--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Theras_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Terrormaster_ManaBurn", 20000, 0)
	pUnit:RegisterEvent("Terrormaster_Metamorphosis", 1000, 1)
	pUnit:RegisterEvent("Terrormaster_Spellbreaker", 12000, 0)
end

function Theras_ManaBurn(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39262,pUnit:GetClosestPlayer())
end

function Theras_Metamorphosis(pUnit,Event)
 if pUnit:GetHealthPct() == 49 then
	pUnit:CastSpell(36298)
end
end

function Theras_Spellbreaker(pUnit,Event)
	pUnit:FullCastSpellOnTarget(35871,pUnit:GetClosestPlayer())
end

function Theras_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Theras_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21168, 1, "Theras_OnEnterCombat")
RegisterUnitEvent(21168, 2, "Theras_OnLeaveCombat")
RegisterUnitEvent(21168, 4, "Theras_OnDied")