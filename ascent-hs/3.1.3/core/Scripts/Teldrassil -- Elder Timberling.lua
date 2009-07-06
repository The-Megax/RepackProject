--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ElderTimberling_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderTimberling_HealingWave", 12000, 0)
Unit:RegisterEvent("ElderTimberling_LightningShield", 4000, 0)
end

function ElderTimberling_HealingWave(pUnit, Event) 
pUnit:CastSpell(332) 
end

function ElderTimberling_LightningShield(pUnit, Event) 
pUnit:CastSpell(324) 
end

function ElderTimberling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderTimberling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end



RegisterUnitEvent(2030, 1, "ElderTimberling_OnCombat")
RegisterUnitEvent(2030, 2, "ElderTimberlingElderTimberling_OnLeaveCombat")
RegisterUnitEvent(2030, 3, "ElderTimberling_OnKilledTarget")
RegisterUnitEvent(2030, 4, "ElderTimberling_OnDied")