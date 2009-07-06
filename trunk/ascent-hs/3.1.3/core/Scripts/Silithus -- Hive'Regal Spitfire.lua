--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HiveRegalSpitfire_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveRegalSpitfire_CorrosiveAcidSpit", 8000, 0)
end

function HiveRegalSpitfire_CorrosiveAcidSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21047, pUnit:GetRandomPlayer(0)) 
end

function HiveRegalSpitfire_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveRegalSpitfire_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveRegalSpitfire_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11732, 1, "HiveRegalSpitfire_OnCombat")
RegisterUnitEvent(11732, 2, "HiveRegalSpitfire_OnLeaveCombat")
RegisterUnitEvent(11732, 3, "HiveRegalSpitfire_OnKilledTarget")
RegisterUnitEvent(11732, 4, "HiveRegalSpitfire_OnDied")