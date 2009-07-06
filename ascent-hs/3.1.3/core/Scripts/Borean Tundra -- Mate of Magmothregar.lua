--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function MateofMagmothregar_OnCombat(Unit, Event)
Unit:RegisterEvent("MateofMagmothregar_Enrage", 10000, 0)
end

function MateofMagmothregar_Enrage(pUnit, Event) 
pUnit:CastSpell(50420) 
end

function MateofMagmothregar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MateofMagmothregar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MateofMagmothregar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25432, 1, "MateofMagmothregar_OnCombat")
RegisterUnitEvent(25432, 2, "MateofMagmothregar_OnLeaveCombat")
RegisterUnitEvent(25432, 3, "MateofMagmothregar_OnKilledTarget")
RegisterUnitEvent(25432, 4, "MateofMagmothregar_OnDied")