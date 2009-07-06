--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function QueldoreiMagewraith_OnCombat(Unit, Event)
Unit:RegisterEvent("QueldoreiMagewraith_ArcaneBolt", 6000, 0)
Unit:RegisterEvent("QueldoreiMagewraith_Counterspell", 11000, 0)
Unit:RegisterEvent("QueldoreiMagewraith_Fireball", 8000, 0)
Unit:RegisterEvent("QueldoreiMagewraith_Slow", 4000, 1)
end

function QueldoreiMagewraith_ArcaneBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31595, pUnit:GetMainTank()) 
end

function QueldoreiMagewraith_Counterspell(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31596, pUnit:GetMainTank()) 
end

function QueldoreiMagewraith_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11921, pUnit:GetMainTank()) 
end

function QueldoreiMagewraith_Slow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11436, pUnit:GetMainTank()) 
end

function QueldoreiMagewraith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function QueldoreiMagewraith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function QueldoreiMagewraith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17612, 1, "QueldoreiMagewraith_OnCombat")
RegisterUnitEvent(17612, 2, "QueldoreiMagewraith_OnLeaveCombat")
RegisterUnitEvent(17612, 3, "QueldoreiMagewraith_OnKilledTarget")
RegisterUnitEvent(17612, 4, "QueldoreiMagewraith_OnDied")