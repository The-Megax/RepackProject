--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RuneReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("RuneReaver_RuneofRetribution", 3000, 1)
end

function RuneReaver_RuneofRetribution(pUnit, Event) 
pUnit:CastSpell(52628) 
end

function RuneReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RuneReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RuneReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26268, 1, "RuneReaver_OnCombat")
RegisterUnitEvent(26268, 2, "RuneReaver_OnLeaveCombat")
RegisterUnitEvent(26268, 3, "RuneReaver_OnKilledTarget")
RegisterUnitEvent(26268, 4, "RuneReaver_OnDied")