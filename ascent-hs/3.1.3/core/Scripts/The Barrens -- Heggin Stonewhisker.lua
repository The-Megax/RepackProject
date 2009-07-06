--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]
function HegginStonewhisker_OnCombat(Unit, Event)
Unit:RegisterEvent("HegginStonewhisker_FireShot", 9000, 0)
Unit:RegisterEvent("HegginStonewhisker_Shoot", 6000, 0)
end

function HegginStonewhisker_FireShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6979, pUnit:GetMainTank()) 
end

function HegginStonewhisker_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function HegginStonewhisker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HegginStonewhisker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HegginStonewhisker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5847, 1, "HegginStonewhisker_OnCombat")
RegisterUnitEvent(5847, 2, "HegginStonewhisker_OnLeaveCombat")
RegisterUnitEvent(5847, 3, "HegginStonewhisker_OnKilledTarget")
RegisterUnitEvent(5847, 4, "HegginStonewhisker_OnDied")