--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ThistlefurShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurShaman_Bloodlust", 2000, 2)
Unit:RegisterEvent("ThistlefurShaman_HealingWave", 13000, 0)
end

function ThistlefurShaman_Bloodlust(pUnit, Event) 
pUnit:CastSpell(6742) 
end

function ThistlefurShaman_HealingWave(pUnit, Event) 
pUnit:CastSpell(11986) 
end

function ThistlefurShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3924, 1, "ThistlefurShaman_OnCombat")
RegisterUnitEvent(3924, 2, "ThistlefurShaman_OnLeaveCombat")
RegisterUnitEvent(3924, 3, "ThistlefurShaman_OnKilledTarget")
RegisterUnitEvent(3924, 4, "ThistlefurShaman_OnDied")