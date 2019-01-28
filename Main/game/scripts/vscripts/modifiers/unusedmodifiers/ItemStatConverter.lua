require('settings')
if ItemStatConverter == nil then
	ItemStatConverter = class({})
end

local strengthitems = {
  {"item_abyssal_blade", 10},
  {"item_ultimate_scepter", 10},
  {"item_belt_of_strength", 6},
  {"item_black_king_bar", 10},
  {"item_bracer", 6},
  {"item_buckler", 2},
  {"item_circlet", 2},
  {"item_crimson_guard", 2},
  {"item_crown", 4},
  {"item_dagon", 5},
  {"item_dagon_2", 5},
  {"item_dagon_3", 5},
  {"item_dagon_4", 5},
  {"item_dagon_5", 5},
  {"item_dragon_lance", 12},
  {"item_ancient_janggo", 6},
  {"item_echo_sabre", 12},
  {"item_ethereal_blade", 10},
  {"item_skadi", 25},
  {"item_gauntlets", 3},
  {"item_ghost", 5},
  {"item_guardian_greaves", 5},
  {"item_headdress", 2},
  {"item_heart", 45},
  {"item_heavens_halberd", 20},
  {"item_helm_of_the_dominator", 2},
  {"item_hurricane_pike", 15},
  {"item_branches", 1},
  {"item_kaya_and_sange", 16},
  {"item_sphere", 13},
  {"item_magic_wand", 3},
  {"item_manta", 10},
  {"item_mekansm", 5},
  {"item_meteor_hammer", 12},
  {"item_necronomicon", 10},
  {"item_necronomicon_2", 15},
  {"item_necronomicon_3", 20},
  {"item_null_talisman", 3},
  {"item_ogre_axe", 10},
  {"item_pipe", 2},
  {"item_reaver", 25},
  {"item_rod_of_atos", 12},
  {"item_sange", 16},
  {"item_sange_and_yasha", 16},
  {"item_satanic", 25},
  {"item_sheepstick", 10},
  {"item_silver_edge", 15},
  {"item_basher", 10},
  {"item_solar_crest", 10},
  {"item_soul_ring", 6},
  {"item_spirit_vessel", 2},
  {"item_ultimate_orb", 10},
  {"item_urn_of_shadows", 2},
  {"item_veil_of_discord", 6},
  {"item_vladmir", 2},
  {"item_wraith_band", 3},
}

local agilityitems = {
  {"item_ultimate_scepter", 10},
  {"item_boots_of_elves", 6},
  {"item_blade_of_alacrity", 10},
  {"item_bracer", 3},
  {"item_buckler", 2},
  {"item_butterfly", 35},
  {"item_circlet", 2},
  {"item_crimson_guard", 2},
  {"item_crown", 4},
  {"item_dagon", 5},
  {"item_dagon_2", 5},
  {"item_dagon_3", 5},
  {"item_dagon_4", 5},
  {"item_dagon_5", 5},
  {"item_diffusal_blade", 20},
  {"item_diffusal_blade_2", 20},
  {"item_dragon_lance", 12},
  {"item_ancient_janggo", 6},
  {"item_eagle", 25},
  {"item_ethereal_blade", 40},
  {"item_skadi", 25},
  {"item_ghost", 5},
  {"item_guardian_greaves", 5},
  {"item_headdress", 2},
  {"item_helm_of_the_dominator", 2},
  {"item_hurricane_pike", 20},
  {"item_branches", 1},
  {"item_sphere", 13},
  {"item_magic_wand", 3},
  {"item_manta", 26},
  {"item_mekansm", 5},
  {"item_null_talisman", 3},
  {"item_pipe", 2},
  {"item_rod_of_atos", 12},
  {"item_sange_and_yasha", 16},
  {"item_sheepstick", 10},
  {"item_silver_edge", 15},
  {"item_slippers", 3},
  {"item_solar_crest", 10},
  {"item_spirit_vessel", 2},
  {"item_ultimate_orb", 10},
  {"item_veil_of_discord", 6},
  {"item_vladmir", 2},
  {"item_wraith_band", 6},
  {"item_yasha", 16},
  {"item_yasha_and_kaya", 16},
}

local intellectitems = {
  {"item_ultimate_scepter", 10},
  {"item_blade_mail", 10},
  {"item_bloodthorn", 25},
  {"item_bracer", 3},
  {"item_buckler", 2},
  {"item_circlet", 2},
  {"item_crimson_guard", 2},
  {"item_crown", 4},
  {"item_dagon", 18},
  {"item_dagon_2", 21},
  {"item_dagon_3", 24},
  {"item_dagon_4", 27},
  {"item_dagon_5", 30},
  {"item_diffusal_blade", 10},
  {"item_diffusal_blade_2", 10},
  {"item_ancient_janggo", 6},
  {"item_echo_sabre", 10},
  {"item_ethereal_blade", 10},
  {"item_cyclone", 10},
  {"item_skadi", 25},
  {"item_force_staff", 10},
  {"item_ghost", 5},
  {"item_guardian_greaves", 5},
  {"item_headdress", 2},
  {"item_helm_of_the_dominator", 2},
  {"item_hurricane_pike", 13},
  {"item_branches", 1},
  {"item_kaya", 16},
  {"item_kaya_and_sange", 16},
  {"item_sphere", 13},
  {"item_magic_wand", 3},
  {"item_manta", 10},
  {"item_mantle", 3},
  {"item_mekansm", 5},
  {"item_meteor_hammer", 12},
  {"item_mystic_staff", 25},
  {"item_null_talisman", 6},
  {"item_oblivion_staff", 10},
  {"item_octarine_core", 25},
  {"item_orchid", 25},
  {"item_pipe", 2},
  {"item_robe", 6},
  {"item_rod_of_atos", 20},
  {"item_sheepstick", 35},
  {"item_shivas_guard", 30},
  {"item_silver_edge", 15},
  {"item_solar_crest", 10},
  {"item_spirit_vessel", 2},
  {"item_staff_of_wizardry", 10},
  {"item_ultimate_orb", 10},
  {"item_urn_of_shadows", 2},
  {"item_veil_of_discord", 15},
  {"item_vladmir", 2},
  {"item_wraith_band", 3},
  {"item_yasha_and_kaya", 16},
}



function ItemStatConverter:GetAttributes() 
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end

function ItemStatConverter:DeclareFunctions() --we want to use these functions in this item
    local funcs = {
        MODIFIER_PROPERTY_STATS_AGILITY_BONUS,
        MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
        MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
    }

    return funcs
end

function ItemStatConverter:OnCreated(kv) 
	local owner = self:GetParent()
	self.strength = 0
	self.agility = 0
	self.intellect = 0
	self:StartIntervalThink(0.1)
end

function ItemStatConverter:OnIntervalThink( kv )
	self.strength = 0
	self.agility = 0
	self.intellect = 0
	if (IsServer()) then
		for c = 0, 5, 1 do
			local item = self:GetCaster():GetItemInSlot(c)
			if item ~= nil then
				for i,s in ipairs(strengthitems) do
					if (s[1] == item:GetName()) then
						self.strength = self.strength + -s[2]
						self.agility = self.agility + s[2]
					end
				end
				for i,s in ipairs(agilityitems) do
					if s[1] == item:GetName() then
						self.agility = self.agility + -s[2]
						self.intellect = self.intellect + s[2]
					end
				end
				for i,s in ipairs(intellectitems) do
					if s[1] == item:GetName() then
						self.intellect = self.intellect + -s[2]
						self.strength = self.strength + s[2]
					end
				end
			end
		end
	end
end

function ItemStatConverter:GetModifierBonusStats_Agility()
		return self.agility
end

function ItemStatConverter:GetModifierBonusStats_Strength()
		return self.strength
end

function ItemStatConverter:GetModifierBonusStats_Intellect()
		return self.intellect
end

function ItemStatConverter:IsHidden()
    return true
end

function ItemStatConverter:IsPermanent() 
	return true
end

function ItemStatConverter:IsPurgable()
	return false
end