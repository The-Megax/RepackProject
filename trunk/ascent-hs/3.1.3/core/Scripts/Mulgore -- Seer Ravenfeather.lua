--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SeerRavenfeather_OnCombat(Unit, Event)
Unit:RegisterEvent("SeerRavenfeather_RockSkin", 10000, 0)
end

function SeerRavenfeather_RockSkin(pUnit, Event) 
pUnit:CastSpell(8314) 
end

function SeerRavenfeather_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeerRavenfeather_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeerRavenfeather_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5888, 1, "SeerRavenfeather_OnCombat")
RegisterUnitEvent(5888, 2, "SeerRavenfeather_OnLeaveCombat")
RegisterUnitEvent(5888, 3, "SeerRavenfeather_OnKilledTarget")
RegisterUnitEvent(5888, 4, "SeerRavenfeather_OnDied")