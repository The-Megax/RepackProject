--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Varlam_OnCombat(Unit, Event)
Unit:RegisterEvent("Varlam_Cleave", 9000, 0)
Unit:RegisterEvent("Varlam_MortalStrike", 7000, 0)
end

function Varlam_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function Varlam_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function Varlam_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Varlam_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Varlam_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27579, 1, "Varlam_OnCombat")
RegisterUnitEvent(27579, 2, "Varlam_OnLeaveCombat")
RegisterUnitEvent(27579, 3, "Varlam_OnKilledTarget")
RegisterUnitEvent(27579, 4, "Varlam_OnDied")