--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function EngineerWhirleygig_OnCombat(Unit, Event)
Unit:RegisterEvent("EngineerWhirleygig_CompactHarvestReaper", 4000, 1)
Unit:RegisterEvent("EngineerWhirleygig_ExplosiveSheep", 10000, 1)
end

function EngineerWhirleygig_CompactHarvestReaper(pUnit, Event) 
pUnit:CastSpell(7979) 
end

function EngineerWhirleygig_ExplosiveSheep(pUnit, Event) 
pUnit:CastSpell(8209) 
end

function EngineerWhirleygig_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EngineerWhirleygig_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EngineerWhirleygig_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5836, 1, "EngineerWhirleygig_OnCombat")
RegisterUnitEvent(5836, 2, "EngineerWhirleygig_OnLeaveCombat")
RegisterUnitEvent(5836, 3, "EngineerWhirleygig_OnKilledTarget")
RegisterUnitEvent(5836, 4, "EngineerWhirleygig_OnDied")