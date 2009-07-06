--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SouthseaDockWorker_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaDockWorker_HeadCrack", 10000, 0)
end

function SouthseaDockWorker_HeadCrack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3148, pUnit:GetMainTank()) 
end

function SouthseaDockWorker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaDockWorker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaDockWorker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7857, 1, "SouthseaDockWorker_OnCombat")
RegisterUnitEvent(7857, 2, "SouthseaDockWorker_OnLeaveCombat")
RegisterUnitEvent(7857, 3, "SouthseaDockWorker_OnKilledTarget")
RegisterUnitEvent(7857, 4, "SouthseaDockWorker_OnDied")