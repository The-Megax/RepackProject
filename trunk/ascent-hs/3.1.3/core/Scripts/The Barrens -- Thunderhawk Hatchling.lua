--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ThunderhawkHatchling_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderhawkHatchling_LightningShield", 4000, 0)
Unit:RegisterEvent("ThunderhawkHatchling_LightningBolt", 8000, 0)
end

function ThunderhawkHatchling_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function ThunderhawkHatchling_LightningShield(pUnit, Event) 
pUnit:CastSpell(325) 
end

function ThunderhawkHatchling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderhawkHatchling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderhawkHatchling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3247, 1, "ThunderhawkHatchling_OnCombat")
RegisterUnitEvent(3247, 2, "ThunderhawkHatchling_OnLeaveCombat")
RegisterUnitEvent(3247, 3, "ThunderhawkHatchling_OnKilledTarget")
RegisterUnitEvent(3247, 4, "ThunderhawkHatchling_OnDied")