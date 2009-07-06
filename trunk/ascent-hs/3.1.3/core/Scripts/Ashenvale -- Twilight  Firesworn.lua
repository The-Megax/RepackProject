--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TwilightFiresworn_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightFiresworn_FireShieldII", 1000, 1)
Unit:RegisterEvent("TwilightFiresworn_Fireball", 7000, 0)
end

function TwilightFiresworn_FireShieldII(pUnit, Event) 
pUnit:CastSpell(184) 
end

function TwilightFiresworn_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function TwilightFiresworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightFiresworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightFiresworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25863, 1, "TwilightFiresworn_OnCombat")
RegisterUnitEvent(25863, 2, "TwilightFiresworn_OnLeaveCombat")
RegisterUnitEvent(25863, 3, "TwilightFiresworn_OnKilledTarget")
RegisterUnitEvent(25863, 4, "TwilightFiresworn_OnDied")