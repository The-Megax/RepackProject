--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CMyrmidon_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("CMyrmidon_Spell", 120000, 0)
end

function CMyrmidon_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38027,pUnit:GetClosestPlayer())
end

function CMyrmidon_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function CMyrmidon_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end


RegisterUnitEvent(19765, 1, "CMyrmidon_OnEnterCombat")
RegisterUnitEvent(19765, 2, "CMyrmidon_OnLeaveCombat")
RegisterUnitEvent(19765, 4, "CMyrmidon_OnDied")