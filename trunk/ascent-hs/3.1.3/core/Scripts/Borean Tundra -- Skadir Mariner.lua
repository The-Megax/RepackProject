--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SkadirMariner_OnCombat(Unit, Event)
Unit:RegisterEvent("SkadirMariner_DemoralizingShout", 2000, 2)
Unit:RegisterEvent("SkadirMariner_Uppercut", 8000, 0)
end

function SkadirMariner_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function SkadirMariner_Uppercut(pUnit, Event)
pUnit:FullCastSpellOnTarget(10966, pUnit:GetMainTank())
end

function SkadirMariner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkadirMariner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkadirMariner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25523, 1, "SkadirMariner_OnCombat")
RegisterUnitEvent(25523, 2, "SkadirMariner_OnLeaveCombat")
RegisterUnitEvent(25523, 3, "SkadirMariner_OnKilledTarget")
RegisterUnitEvent(25523, 4, "SkadirMariner_OnDied")