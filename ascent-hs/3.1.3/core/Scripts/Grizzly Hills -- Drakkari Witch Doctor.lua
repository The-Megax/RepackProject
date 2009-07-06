--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DrakkariWitchDoctor_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariWitchDoctor_SuperiorHealingWard", 4000, 1)
Unit:RegisterEvent("DrakkariWitchDoctor_VoodooDoll", 7000, 0)
end

function DrakkariWitchDoctor_SuperiorHealingWard(pUnit, Event) 
pUnit:CastSpell(32194) 
end

function DrakkariWitchDoctor_VoodooDoll(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52695, pUnit:GetMainTank()) 
end

function DrakkariWitchDoctor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariWitchDoctor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariWitchDoctor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27555, 1, "DrakkariWitchDoctor_OnCombat")
RegisterUnitEvent(27555, 2, "DrakkariWitchDoctor_OnLeaveCombat")
RegisterUnitEvent(27555, 3, "DrakkariWitchDoctor_OnKilledTarget")
RegisterUnitEvent(27555, 4, "DrakkariWitchDoctor_OnDied")