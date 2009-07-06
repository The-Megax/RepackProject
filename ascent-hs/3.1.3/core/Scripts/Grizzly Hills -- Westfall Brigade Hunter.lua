--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WestfallBrigadeHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("WestfallBrigadeHunter_AimedShot", 7000, 0)
end

function WestfallBrigadeHunter_AimedShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38861, pUnit:GetMainTank()) 
end

function WestfallBrigadeHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WestfallBrigadeHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WestfallBrigadeHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27462, 1, "WestfallBrigadeHunter_OnCombat")
RegisterUnitEvent(27462, 2, "WestfallBrigadeHunter_OnLeaveCombat")
RegisterUnitEvent(27462, 3, "WestfallBrigadeHunter_OnKilledTarget")
RegisterUnitEvent(27462, 4, "WestfallBrigadeHunter_OnDied")