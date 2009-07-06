--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function KreugOathbreaker_OnCombat(Unit, Event)
Unit:RegisterEvent("KreugOathbreaker_Backbreaker", 12000, 0)
Unit:RegisterEvent("KreugOathbreaker_BrokenOath", 13000, 0)
Unit:RegisterEvent("KreugOathbreaker_InciteHorror", 14000, 0)
end

function KreugOathbreaker_Backbreaker(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53437, pUnit:GetMainTank()) 
end

function KreugOathbreaker_BrokenOath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(56310) 
end

function KreugOathbreaker_InciteHorror(pUnit, Event) 
pUnit:FullCastSpellOnTarget(53438, pUnit:GetMainTank()) 
end

function KreugOathbreaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KreugOathbreaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KreugOathbreaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27105, 1, "KreugOathbreaker_OnCombat")
RegisterUnitEvent(27105, 2, "KreugOathbreaker_OnLeaveCombat")
RegisterUnitEvent(27105, 3, "KreugOathbreaker_OnKilledTarget")
RegisterUnitEvent(27105, 4, "KreugOathbreaker_OnDied")