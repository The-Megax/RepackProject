--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Conjurer_OnCombat(Unit, Event)
Unit:RegisterEvent("Conjurer_Surge", 10000, 0)
Unit:RegisterEvent("Conjurer_Flamestrike", 8000, 0)
Unit:RegisterEvent("Conjurer_Frostbolt", 6000, 0)
end

function Conjurer_Surge(pUnit, Event) 
pUnit:CastSpell(35778) 
end

function Conjurer_Flamestrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11829, pUnit:GetMainTank()) 
end

function Conjurer_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function Conjurer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Conjurer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Conjurer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(20139, 1, "Conjurer_OnCombat")
RegisterUnitEvent(20139, 2, "Conjurer_OnLeaveCombat")
RegisterUnitEvent(20139, 3, "Conjurer_OnKilledTarget")
RegisterUnitEvent(20139, 4, "Conjurer_OnDied")