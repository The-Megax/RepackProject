--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SunhawkReclaimer_OnCombat(Unit, Event)
Unit:RegisterEvent("SunhawkReclaimer_Fireball", 8000, 0)
Unit:RegisterEvent("SunhawkReclaimer_FrostArmor", 2000, 1)
Unit:RegisterEvent("SunhawkReclaimer_MarkoftheSunhawk", 7500, 0)
end

function SunhawkReclaimer_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19816, pUnit:GetMainTank()) 
end

function SunhawkReclaimer_FrostArmor(pUnit, Event) 
pUnit:CastSpell(12544) 
end

function SunhawkReclaimer_MarkoftheSunhawk(pUnit, Event) 
pUnit:CastSpell(31734) 
end

function SunhawkReclaimer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SunhawkReclaimer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SunhawkReclaimer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17606, 1, "SunhawkReclaimer_OnCombat")
RegisterUnitEvent(17606, 2, "SunhawkReclaimer_OnLeaveCombat")
RegisterUnitEvent(17606, 3, "SunhawkReclaimer_OnKilledTarget")
RegisterUnitEvent(17606, 4, "SunhawkReclaimer_OnDied")