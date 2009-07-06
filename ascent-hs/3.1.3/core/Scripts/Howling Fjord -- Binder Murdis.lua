--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BinderMurdis_OnCombat(Unit, Event)
Unit:RegisterEvent("BinderMurdis_FlameShock", 7000, 0)
Unit:RegisterEvent("BinderMurdis_RuneofBinding", 11000, 0)
end

function BinderMurdis_FlameShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15039, pUnit:GetMainTank()) 
end

function BinderMurdis_RuneofBinding(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48599, pUnit:GetMainTank()) 
end

function BinderMurdis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BinderMurdis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BinderMurdis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24334, 1, "BinderMurdis_OnCombat")
RegisterUnitEvent(24334, 2, "BinderMurdis_OnLeaveCombat")
RegisterUnitEvent(24334, 3, "BinderMurdis_OnKilledTarget")
RegisterUnitEvent(24334, 4, "BinderMurdis_OnDied")