--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Bouldertfistmage_Frostbolt(Unit, event, miscunit, misc)
	print "Bouldertfistmage Frostbolt"
	Unit:FullCastSpellOnTarget(9672,Unit:GetMainTank())
end

function Bouldertfistmage_Fireblast(Unit, event, miscunit, misc)
	print "Bouldertfistmage Fireblast"
	Unit:FullCastSpell(20795)
end

function Bouldertfistmage_Bloodlust(Unit, event, miscunit, misc)
	print "Bouldertfistmage Bloodlust"
	Unit:FullCastSpell(6742)
end

function Bouldertfistmage(unit, event, miscunit, misc)
	print "Bouldertfistmage"
	unit:RegisterEvent("Bouldertfistmage_Frostbolt",15000,0)
	unit:RegisterEvent("Bouldertfistmage_Fireblast",50000,0)
	unit:RegisterEvent("Bouldertfistmage_Bloodlust",20000,0)
end

function Bouldertfistmage_Death(Unit)
	Unit:RemoveEvents()
end

function Bouldertfistmage_OnLeaveCombat(Unit)
	Unit:RemoveEvents()
end


RegisterUnitEvent(17137, 2, "Bouldertfistmage_OnLeaveCombat")
RegisterUnitEvent(17137, 4, "Bouldertfistmage_Death")
RegisterUnitEvent(17137, 1,"Bouldertfistmage")