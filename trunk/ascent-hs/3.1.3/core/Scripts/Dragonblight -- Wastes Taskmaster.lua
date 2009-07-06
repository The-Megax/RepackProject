--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function WastesTaskmaster_OnCombat(Unit, Event)
Unit:RegisterEvent("WastesTaskmaster_ShadowNova", 5000, 0)
Unit:RegisterEvent("WastesTaskmaster_ShadowShock", 6000, 0)
end

function WastesTaskmaster_ShadowNova(pUnit, Event) 
pUnit:CastSpell(32712) 
end

function WastesTaskmaster_ShadowShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16583, pUnit:GetMainTank()) 
end

function WastesTaskmaster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastesTaskmaster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastesTaskmaster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26493, 1, "WastesTaskmaster_OnCombat")
RegisterUnitEvent(26493, 2, "WastesTaskmaster_OnLeaveCombat")
RegisterUnitEvent(26493, 3, "WastesTaskmaster_OnKilledTarget")
RegisterUnitEvent(26493, 4, "WastesTaskmaster_OnDied")