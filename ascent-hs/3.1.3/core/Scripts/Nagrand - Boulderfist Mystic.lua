--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Boulderfistmystic_LightningBolt(Unit, event, miscunit, misc)
    Unit:FullCastSpellOnTarget(9532,Unit:GetMainTank())
end

function Boulderfistmystic_EarthShock(Unit, event, miscunit, misc)
    Unit:FullCastSpellOnTarget(13281,Unit:GetMainTank())
end

function Boulderfistmystic_HealingTouch(Unit, event, miscunit, misc)
    if Unit:GetHealthPct() < 30 then
    Unit:FullCastSpell(11431)
	end
end

function Boulderfistmystic(Unit, event, miscunit, misc)
    Unit:RegisterEvent("Boulderfistmystic_LightningBolt",8500,0)
	Unit:RegisterEvent("Boulderfistmystic_Earthshock",6700,0)
	Unit:RegisterEvent("Boulderfistmystic_HealingTouch",3000,0)
end

function Boulderfistmystic_Death(Unit)
    Unit:RemoveEvents()
end

function Boulderfistmystic_OnLeaveCombat(Unit)
    Unit:RemoveEvents()
end

RegisterUnitEvent(17135,1,"Boulderfistmystic")
RegisterUnitEvent(17135,2,"Boulderfistmystic_OnLeaveCombat")
RegisterUnitEvent(17135,3,"Boulderfistmystic_Death")