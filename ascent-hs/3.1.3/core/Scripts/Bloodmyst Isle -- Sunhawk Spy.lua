--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SunhawkSpy_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkSpy_DemoralizingShout", 2000, 0)
Unit:RegisterEvent("SunhawkSpy_HeroicStrike", 6000, 0)
Unit:RegisterEvent("SunhawkSpy_MarkoftheSunhawk", 7500, 0)
end

function SunhawkSpy_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function SunhawkSpy_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31827, pUnit:GetMainTank()) 
end

function SunhawkSpy_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkSpy_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkSpy_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkSpy_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17604, 1, "SunhawkSpy_OnCombat")
RegisterUnitEvent(17604, 2, "SunhawkSpy_OnLeaveCombat")
RegisterUnitEvent(17604, 3, "SunhawkSpy_OnKilledTarget")
RegisterUnitEvent(17604, 4, "SunhawkSpy_OnDied")