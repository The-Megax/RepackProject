--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NerubarSkyDarkener_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarSkyDarkener_VenomSpit", 8000, 0)
Unit:RegisterEvent("NerubarSkyDarkener_WebBolt", 10000, 0)
end

function NerubarSkyDarkener_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45577, pUnit:GetMainTank()) 
end

function NerubarSkyDarkener_WebBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45587, pUnit:GetMainTank()) 
end

function NerubarSkyDarkener_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarSkyDarkener_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarSkyDarkener_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25451, 1, "NerubarSkyDarkener_OnCombat")
RegisterUnitEvent(25451, 2, "NerubarSkyDarkener_OnLeaveCombat")
RegisterUnitEvent(25451, 3, "NerubarSkyDarkener_OnKilledTarget")
RegisterUnitEvent(25451, 4, "NerubarSkyDarkener_OnDied")