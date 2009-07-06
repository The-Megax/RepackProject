--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ShadethicketBarkRipper_OnCombat(Unit, Event)
Unit:RegisterEvent("ShadethicketBarkRipper_TendonRip", 8000, 0)
end

function ShadethicketBarkRipper_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function ShadethicketBarkRipper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShadethicketBarkRipper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShadethicketBarkRipper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3784, 1, "ShadethicketBarkRipper_OnCombat")
RegisterUnitEvent(3784, 2, "ShadethicketBarkRipper_OnLeaveCombat")
RegisterUnitEvent(3784, 3, "ShadethicketBarkRipper_OnKilledTarget")
RegisterUnitEvent(3784, 4, "ShadethicketBarkRipper_OnDied")