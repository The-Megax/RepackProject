--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ElderMysticRazorsnout_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderMysticRazorsnout_EarthbindTotem", 4000, 1)
Unit:RegisterEvent("ElderMysticRazorsnout_HealingWave", 12000, 0)
end

function ElderMysticRazorsnout_EarthbindTotem(pUnit, Event) 
pUnit:CastSpell(2484) 
end

function ElderMysticRazorsnout_HealingWave(pUnit, Event) 
pUnit:CastSpell(547) 
end

function ElderMysticRazorsnout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderMysticRazorsnout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderMysticRazorsnout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3270, 1, "ElderMysticRazorsnout_OnCombat")
RegisterUnitEvent(3270, 2, "ElderMysticRazorsnout_OnLeaveCombat")
RegisterUnitEvent(3270, 3, "ElderMysticRazorsnout_OnKilledTarget")
RegisterUnitEvent(3270, 4, "ElderMysticRazorsnout_OnDied")