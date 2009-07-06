--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function KolkarMarauder_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarMarauder_Strike", 6000, 0)
end

function KolkarMarauder_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function KolkarMarauder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarMarauder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarMarauder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3275, 1, "KolkarMarauder_OnCombat")
RegisterUnitEvent(3275, 2, "KolkarMarauder_OnLeaveCombat")
RegisterUnitEvent(3275, 3, "KolkarMarauder_OnKilledTarget")
RegisterUnitEvent(3275, 4, "KolkarMarauder_OnDied")