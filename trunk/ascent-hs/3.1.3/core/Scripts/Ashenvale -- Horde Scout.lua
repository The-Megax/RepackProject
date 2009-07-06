--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HordeScout_OnCombat(Unit, Event)
Unit:RegisterEvent("HordeScout_ScorpidSting", 8000, 0)
Unit:RegisterEvent("HordeScout_Shoot", 6000, 0)
end

function HordeScout_ScorpidSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(18545, pUnit:GetMainTank()) 
end

function HordeScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function HordeScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HordeScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HordeScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11680, 1, "HordeScout_OnCombat")
RegisterUnitEvent(11680, 2, "HordeScout_OnLeaveCombat")
RegisterUnitEvent(11680, 3, "HordeScout_OnKilledTarget")
RegisterUnitEvent(11680, 4, "HordeScout_OnDied")