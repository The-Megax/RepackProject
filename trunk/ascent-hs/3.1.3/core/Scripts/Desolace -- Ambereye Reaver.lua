--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function AmbereyeReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbereyeReaver_Cleave", 8000, 0)
Unit:RegisterEvent("AmbereyeReaver_Petrify", 15000, 0)
end

function AmbereyeReaver_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function AmbereyeReaver_Petrify(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11020, pUnit:GetMainTank()) 
end

function AmbereyeReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbereyeReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbereyeReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11786, 1, "AmbereyeReaver_OnCombat")
RegisterUnitEvent(11786, 2, "AmbereyeReaver_OnLeaveCombat")
RegisterUnitEvent(11786, 3, "AmbereyeReaver_OnKilledTarget")
RegisterUnitEvent(11786, 4, "AmbereyeReaver_OnDied")