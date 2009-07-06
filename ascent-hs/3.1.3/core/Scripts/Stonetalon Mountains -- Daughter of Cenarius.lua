--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function DaughterofCenarius_OnCombat(Unit, Event)
Unit:RegisterEvent("DaughterofCenarius_DispelMagic", 6000, 0)
Unit:RegisterEvent("DaughterofCenarius_Throw", 4000, 0)
end

function DaughterofCenarius_DispelMagic(pUnit, Event) 
pUnit:CastSpell(527) 
end

function DaughterofCenarius_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function DaughterofCenarius_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DaughterofCenarius_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DaughterofCenarius_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4053, 1, "DaughterofCenarius_OnCombat")
RegisterUnitEvent(4053, 2, "DaughterofCenarius_OnLeaveCombat")
RegisterUnitEvent(4053, 3, "DaughterofCenarius_OnKilledTarget")
RegisterUnitEvent(4053, 4, "DaughterofCenarius_OnDied")