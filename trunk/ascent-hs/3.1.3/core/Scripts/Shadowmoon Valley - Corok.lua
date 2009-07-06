--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Corok_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Corok_Spell1", 11000, 0)
	pUnit:RegisterEvent("Corok_Spell2", 26000, 0)
end

function Corok_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12612,pUnit:GetClosestPlayer())
end

function Corok_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15550,pUnit:GetClosestPlayer())
end

function Corok_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Corok_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22011, 1, "Corok_OnEnterCombat")
RegisterUnitEvent(22011, 2, "Corok_OnLeaveCombat")
RegisterUnitEvent(22011, 4, "Corok_OnDied")