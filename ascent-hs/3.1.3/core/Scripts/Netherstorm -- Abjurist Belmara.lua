--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Abjurist_OnEnterCombat(pUnit, Event)
    pUnit:RegisterEvent("Abjurist_Armor", 10000, 0)
    pUnit:RegisterEvent("Abjurist_Missiles", 1000,0)
end
    
function Abjurist_Armor(pUnit, Event)
    pUnit:CastSpell(12544)
end

function Abjurist_Missiles(pUnit, Event)
    pUnit:FullCastSpellOnTarget(34447,pUnit:GetClosestPlayer())
end

function Abjurist_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Abjurist_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19546, 1, "Abjurist_OnEnterCombat")
RegisterUnitEvent (19546, 2, "Abjurist_OnLeaveCombat")
RegisterUnitEvent (19546, 4, "Abjurist_OnDied")