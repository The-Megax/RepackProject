--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TwilightAvenger_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightAvenger_Enrage", 10000, 1)
end

function TwilightAvenger_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function TwilightAvenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightAvenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightAvenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11880, 1, "TwilightAvenger_OnCombat")
RegisterUnitEvent(11880, 2, "TwilightAvenger_OnLeaveCombat")
RegisterUnitEvent(11880, 3, "TwilightAvenger_OnKilledTarget")
RegisterUnitEvent(11880, 4, "TwilightAvenger_OnDied")