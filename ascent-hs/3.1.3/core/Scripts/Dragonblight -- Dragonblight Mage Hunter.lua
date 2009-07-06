--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DragonblightMageHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("DragonblightMageHunter_ArcaneReflection", 9000, 1)
Unit:RegisterEvent("DragonblightMageHunter_FireReflection", 8000, 1)
Unit:RegisterEvent("DragonblightMageHunter_FrostReflection", 7000, 1)
Unit:RegisterEvent("DragonblightMageHunter_ShadowReflection", 6000, 1)
end

function DragonblightMageHunter_ArcaneReflection(pUnit, Event) 
pUnit:CastSpell(51766) 
end

function DragonblightMageHunter_FireReflection(pUnit, Event) 
pUnit:CastSpell(51758) 
end

function DragonblightMageHunter_FrostReflection(pUnit, Event) 
pUnit:CastSpell(51763) 
end

function DragonblightMageHunter_ShadowReflection(pUnit, Event) 
pUnit:CastSpell(51764) 
end

function DragonblightMageHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DragonblightMageHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DragonblightMageHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26280, 1, "DragonblightMageHunter_OnCombat")
RegisterUnitEvent(26280, 2, "DragonblightMageHunter_OnLeaveCombat")
RegisterUnitEvent(26280, 3, "DragonblightMageHunter_OnKilledTarget")
RegisterUnitEvent(26280, 4, "DragonblightMageHunter_OnDied")