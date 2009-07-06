--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Claximus_OnCombat(Unit, Event)
Unit:RegisterEvent("Claximus_ArcaneBarrage", 8000, 0)
Unit:RegisterEvent("Claximus_StabilizedMagic", 2000, 1)
end

function Claximus_ArcaneBarrage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50273, pUnit:GetMainTank()) 
end

function Claximus_StabilizedMagic(pUnit, Event) 
pUnit:CastSpell(50275) 
end

function Claximus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Claximus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Claximus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25209, 1, "Claximus_OnCombat")
RegisterUnitEvent(25209, 2, "Claximus_OnLeaveCombat")
RegisterUnitEvent(25209, 3, "Claximus_OnKilledTarget")
RegisterUnitEvent(25209, 4, "Claximus_OnDied")