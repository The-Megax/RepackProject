--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function KulTirasSailor_OnCombat(Unit, Event)
Unit:RegisterEvent("KulTirasSailor_RushingCharge", 8000, 0)
end

function KulTirasSailor_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function KulTirasSailor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KulTirasSailor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KulTirasSailor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3128, 1, "KulTirasSailor_OnCombat")
RegisterUnitEvent(3128, 2, "KulTirasSailor_OnLeaveCombat")
RegisterUnitEvent(3128, 3, "KulTirasSailor_OnKilledTarget")
RegisterUnitEvent(3128, 4, "KulTirasSailor_OnDied")