--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DahliaSuntouch_OnCombat(Unit, Event)
Unit:RegisterEvent("DahliaSuntouch_BansheeCurse", 4000, 1)
Unit:RegisterEvent("DahliaSuntouch_BansheeScreech", 6000, 1)
Unit:RegisterEvent("DahliaSuntouch_BansheeWail", 7000, 0)
end

function DahliaSuntouch_BansheeCurse(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51899, pUnit:GetMainTank()) 
end

function DahliaSuntouch_BansheeScreech(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51897, pUnit:GetMainTank()) 
end

function DahliaSuntouch_BansheeWail(pUnit, Event) 
pUnit:FullCastSpellOnTarget(28993, pUnit:GetMainTank()) 
end

function DahliaSuntouch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DahliaSuntouch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DahliaSuntouch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27680, 1, "DahliaSuntouch_OnCombat")
RegisterUnitEvent(27680, 2, "DahliaSuntouch_OnLeaveCombat")
RegisterUnitEvent(27680, 3, "DahliaSuntouch_OnKilledTarget")
RegisterUnitEvent(27680, 4, "DahliaSuntouch_OnDied")