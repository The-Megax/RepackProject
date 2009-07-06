--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TheWindreaver_OnCombat(Unit, Event)
Unit:RegisterEvent("TheWindreaver_ChainLightning", 8000, 0)
Unit:RegisterEvent("TheWindreaver_EnvelopingWinds", 12000, 0)
Unit:RegisterEvent("TheWindreaver_LightningCloud", 6000, 0)
Unit:RegisterEvent("TheWindreaver_Shock", 4000, 0)
end

function TheWindreaver_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23106, pUnit:GetMainTank()) 
end

function TheWindreaver_EnvelopingWinds(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23103, pUnit:GetRandomPlayer(0)) 
end

function TheWindreaver_LightningCloud(pUnit, Event) 
pUnit:CastSpell(23105) 
end

function TheWindreaver_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23104, pUnit:GetMainTank()) 
end

function TheWindreaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TheWindreaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TheWindreaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14454, 1, "TheWindreaver_OnCombat")
RegisterUnitEvent(14454, 2, "TheWindreaver_OnLeaveCombat")
RegisterUnitEvent(14454, 3, "TheWindreaver_OnKilledTarget")
RegisterUnitEvent(14454, 4, "TheWindreaver_OnDied")