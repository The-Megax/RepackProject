--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ECavalier_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(38311)
	pUnit:RegisterEvent("ECavalier_SpellBreaker", 20000, 0)
	pUnit:RegisterEvent("ECavalier_BattleShout", 60000, 0)
end

function ECavalier_SpellBreaker(pUnit,Event)
	pUnit:CastSpell(35871)
end

function ECavalier_BattleShout(pUnit,Event)
	pUnit:CastSpell(30931)
end

function ECavalier_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function ECavalier_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22018, 1, "ECavalier_OnEnterCombat")
RegisterUnitEvent(22018, 2, "ECavalier_OnLeaveCombat")
RegisterUnitEvent(22018, 4, "ECavalier_OnDied")