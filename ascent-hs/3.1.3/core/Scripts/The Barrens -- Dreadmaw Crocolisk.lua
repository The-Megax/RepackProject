--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DreadmawCrocolisk_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadmawCrocolisk_MuscleTear", 8000, 0)
end

function DreadmawCrocolisk_MuscleTear(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12166, pUnit:GetMainTank()) 
end

function DreadmawCrocolisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadmawCrocolisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadmawCrocolisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3110, 1, "DreadmawCrocolisk_OnCombat")
RegisterUnitEvent(3110, 2, "DreadmawCrocolisk_OnLeaveCombat")
RegisterUnitEvent(3110, 3, "DreadmawCrocolisk_OnKilledTarget")
RegisterUnitEvent(3110, 4, "DreadmawCrocolisk_OnDied")