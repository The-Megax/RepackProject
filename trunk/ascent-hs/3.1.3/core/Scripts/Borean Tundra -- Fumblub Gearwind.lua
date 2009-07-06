--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FumblubGearwind_OnCombat(Unit, Event)
Unit:RegisterEvent("FumblubGearwind_MachineGun", 8000, 0)
end

function FumblubGearwind_MachineGun(pUnit, Event) 
pUnit:FullCastSpellOnTarget(60906, pUnit:GetMainTank()) 
end

function FumblubGearwind_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FumblubGearwind_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FumblubGearwind_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32358, 1, "FumblubGearwind_OnCombat")
RegisterUnitEvent(32358, 2, "FumblubGearwind_OnLeaveCombat")
RegisterUnitEvent(32358, 3, "FumblubGearwind_OnKilledTarget")
RegisterUnitEvent(32358, 4, "FumblubGearwind_OnDied")