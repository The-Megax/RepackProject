--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function KolkarDrudge_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarDrudge_DustCloud", 12000, 0)
end

function KolkarDrudge_DustCloud(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7272, pUnit:GetMainTank()) 
end

function KolkarDrudge_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarDrudge_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarDrudge_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3119, 1, "KolkarDrudge_OnCombat")
RegisterUnitEvent(3119, 2, "KolkarDrudge_OnLeaveCombat")
RegisterUnitEvent(3119, 3, "KolkarDrudge_OnKilledTarget")
RegisterUnitEvent(3119, 4, "KolkarDrudge_OnDied")