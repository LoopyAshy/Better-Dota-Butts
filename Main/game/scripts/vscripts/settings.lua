-- In this file you can set up all the properties and settings for your game mode.
CUSTOM_DEBUG_COMMANDS = false					-- This makes testing easier but should be turned off for release

ENABLE_HERO_RESPAWN = true              -- Should the heroes automatically respawn on a timer or stay dead until manually respawned
UNIVERSAL_SHOP_MODE = false             -- Should the main shop contain Secret Shop items as well as regular items
ALLOW_SAME_HERO_SELECTION = false       -- Should we let people select the same hero as each other

CUSTOM_STAGE_TIMES = false 				-- Needed for the timers below it to function
--
HERO_SELECTION_TIME = 120.0              -- How long should we let people select their hero?
PRE_GAME_TIME = 30.0                    -- How long after people select their heroes should the horn blow and the game start?
POST_GAME_TIME = 60.0                   -- How long should we let people look at the scoreboard before closing the server automatically?
SHOWCASE_TIME = 30.0						--
STRATEGY_TIME = 30.0						-- 
--

TREE_REGROW_TIME = 300.0                 -- How long should it take individual trees to respawn after being cut down/destroyed?

ALTERNATIVE_GPM_GENERATOR = true	-- This exists due to how gold per tick keeps breaking
GOLD_PER_TICK = 1                     -- How much gold should players get per tick?
GOLD_TICK_TIME = 0.66                      -- How long should we wait in seconds between gold ticks?

CUSTOM_STARTING_GOLD = false
--
NORMAL_START_GOLD = 600					-- Starting Gold if picked normally -default is 600
RANDOM_START_GOLD = 800					-- Starting Gold if randomed -default is 800
--
CUSTOM_XP_MULTIPLIER = 1.0				-- How much to multiple xp by

RECOMMENDED_BUILDS_DISABLED = false     -- Should we disable the recommened builds for heroes
CAMERA_DISTANCE_OVERRIDE = 1134.0       -- How far out should we allow the camera to go?  1134 is the default in Dota

MINIMAP_ICON_SIZE = 1                   -- What icon size should we use for our heroes?
MINIMAP_CREEP_ICON_SIZE = 1             -- What icon size should we use for creeps?
MINIMAP_RUNE_ICON_SIZE = 1              -- What icon size should we use for runes?

CUSTOM_RUNE_TIMES = false
--
BOUNTY_RUNE_SPAWN_TIME = 120                   -- How long in seconds should we wait between bounty rune spawns?
POWER_RUNE_SPAWN_TIME = 120                   -- How long in seconds should we wait between power rune spawns?
--

CUSTOM_BUYBACK_COST_ENABLED = false      -- Should we use a custom buyback cost setting?
CUSTOM_BUYBACK_COOLDOWN_ENABLED = false  -- Should we use a custom buyback time?
BUYBACK_ENABLED = true                 -- Should we allow people to buyback when they die?

DISABLE_FOG_OF_WAR_ENTIRELY = false     -- Should we disable fog of war entirely for both teams?
USE_UNSEEN_FOG_OF_WAR = false           -- Should we make unseen and fogged areas of the map completely black until uncovered by each team? 

               
                                            -- Note: DISABLE_FOG_OF_WAR_ENTIRELY must be false for USE_UNSEEN_FOG_OF_WAR to work
FILL_EMPTY_SLOTS_WITH_BOTS = false
USE_STANDARD_DOTA_BOT_THINKING = true  -- Should we have bots act like they would in Dota? (This requires 3 lanes, normal items, etc)
USE_STANDARD_HERO_GOLD_BOUNTY = true    -- Should we give gold for hero kills the same as in Dota, or allow those values to be changed?

USE_CUSTOM_TOP_BAR_VALUES = false        -- Should we do customized top bar values or use the default kill count per team?
TOP_BAR_VISIBLE = true                  -- Should we display the top bar score/count at all?
SHOW_KILLS_ON_TOPBAR = true             -- Should we display kills only on the top bar? (No denies, suicides, kills by neutrals)  Requires USE_CUSTOM_TOP_BAR_VALUES

ENABLE_TOWER_BACKDOOR_PROTECTION = true -- Should we enable backdoor protection for our towers?
DISABLE_GOLD_SOUNDS = false             -- Should we disable the gold sound when players get gold?

END_GAME_ON_KILLS = false                -- Should the game end after a certain number of kills?
KILLS_TO_END_GAME_FOR_TEAM = 50         -- How many kills for a team should signify an end of game?

--USE_CUSTOM_HERO_LEVELS = false           -- Should we allow heroes to have custom levels?
MAX_LEVEL = 25                          -- What level should we let heroes get to?
USE_CUSTOM_XP_VALUES = false            -- Should we use custom XP values to level up heroes, or the default Dota numbers? this must be true to modify max level.

-- Fill this table up with the required XP per level if you want to change it, keep in mind that USE_CUSTOM_XP_VALUES must be true
-- Also if you use wish to have custom max level go above 25 then this table is required to be modified
if USE_CUSTOM_XP_VALUES == true then
	XP_PER_LEVEL_TABLE = {
			0, -- 1
	      230, -- 2
	      600, -- 3
	      1080, -- 4
	     1680, -- 5
	     2300, -- 6
	     2940, -- 7
	     3600, -- 8
	     4280, -- 9
	     5080, -- 10
	     5900, -- 11
	     6740, -- 12
	     7640, -- 13
	     8865, -- 14
	    10115, -- 15
	    11390, -- 16
	    12690, -- 17
	    14015, -- 18
	    15415, -- 19
	    16905, -- 20
	    18405, -- 21
	    20155, -- 22
	    22155, -- 23
	    24405, -- 24
	    26905, -- 25
	}
end
-- for i=1,MAX_LEVEL do
--   XP_PER_LEVEL_TABLE[i] = 230+(140*(i-1))
-- end

ENABLE_FIRST_BLOOD = true               -- Should we enable first blood for the first kill in this game?
HIDE_KILL_BANNERS = false               -- Should we hide the kill banners that show when a player is killed?
LOSE_GOLD_ON_DEATH = true               -- Should we have players lose the normal amount of dota gold on death?
SHOW_ONLY_PLAYER_INVENTORY = false      -- Should we only allow players to see their own inventory even when selecting other units?
DISABLE_STASH_PURCHASING = false        -- Should we prevent players from being able to buy items into their stash when not at a shop?
DISABLE_ANNOUNCER = false               -- Should we disable the announcer from working in the game?
FORCE_PICKED_HERO = nil                 -- What hero should we force all players to spawn as? (e.g. "npc_dota_hero_axe").  Use nil to allow players to pick their own hero.

FIXED_RESPAWN_TIME = -1                 -- What time should we use for a fixed respawn timer?  Use -1 to keep the default dota behavior.
FOUNTAIN_CONSTANT_MANA_REGEN = -1       -- What should we use for the constant fountain mana regen?  Use -1 to keep the default dota behavior.
FOUNTAIN_PERCENTAGE_MANA_REGEN = -1     -- What should we use for the percentage fountain mana regen?  Use -1 to keep the default dota behavior.
FOUNTAIN_PERCENTAGE_HEALTH_REGEN = -1   -- What should we use for the percentage fountain health regen?  Use -1 to keep the default dota behavior.
MAXIMUM_ATTACK_SPEED = 700              -- What should we use for the maximum attack speed?
MINIMUM_ATTACK_SPEED = 20               -- What should we use for the minimum attack speed?


START_AT_NIGHT = false
DISABLE_DAYNIGHT_CYCLE = false

ENABLE_PAUSING = true

CUSTOM_SCAN_COOLDOWN = -1				-- -1 Means use default

-- NOTE: You always need at least 2 non-bounty (non-regen while broken) type runes to be able to spawn or your game will crash!
CUSTOM_RUNE_RULES = false
ENABLED_RUNES = {}                      -- Which runes should be enabled to spawn in our game mode? (only works if custom_rune_rules is true)
ENABLED_RUNES[DOTA_RUNE_DOUBLEDAMAGE] = true
ENABLED_RUNES[DOTA_RUNE_HASTE] = true
ENABLED_RUNES[DOTA_RUNE_ILLUSION] = true
ENABLED_RUNES[DOTA_RUNE_INVISIBILITY] = true
ENABLED_RUNES[DOTA_RUNE_REGENERATION] = true
ENABLED_RUNES[DOTA_RUNE_BOUNTY] = true


MAX_NUMBER_OF_TEAMS = 2                -- How many potential teams can be in this game mode?
USE_CUSTOM_TEAM_COLORS = false          -- Should we use custom team colors?
USE_CUSTOM_TEAM_COLORS_FOR_PLAYERS = false          -- Should we use custom team colors to color the players/minimap?
LOCK_TEAMS = false


TEAM_COLORS = {}                        -- If USE_CUSTOM_TEAM_COLORS is set, use these colors.
TEAM_COLORS[DOTA_TEAM_GOODGUYS] = { 61, 210, 150 }  --    Teal
TEAM_COLORS[DOTA_TEAM_BADGUYS]  = { 243, 201, 9 }   --    Yellow
TEAM_COLORS[DOTA_TEAM_CUSTOM_1] = { 197, 77, 168 }  --    Pink
TEAM_COLORS[DOTA_TEAM_CUSTOM_2] = { 255, 108, 0 }   --    Orange
TEAM_COLORS[DOTA_TEAM_CUSTOM_3] = { 52, 85, 255 }   --    Blue
TEAM_COLORS[DOTA_TEAM_CUSTOM_4] = { 101, 212, 19 }  --    Green
TEAM_COLORS[DOTA_TEAM_CUSTOM_5] = { 129, 83, 54 }   --    Brown
TEAM_COLORS[DOTA_TEAM_CUSTOM_6] = { 27, 192, 216 }  --    Cyan
TEAM_COLORS[DOTA_TEAM_CUSTOM_7] = { 199, 228, 13 }  --    Olive
TEAM_COLORS[DOTA_TEAM_CUSTOM_8] = { 140, 42, 244 }  --    Purple


USE_AUTOMATIC_PLAYERS_PER_TEAM = true   -- Should we set the number of players to 10 / MAX_NUMBER_OF_TEAMS?

CUSTOM_TEAM_PLAYER_COUNT = {}           -- If we're not automatically setting the number of players per team, use this table
CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_GOODGUYS] = 5
CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_BADGUYS]  = 5
CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_CUSTOM_1] = 1
CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_CUSTOM_2] = 0
CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_CUSTOM_3] = 0
CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_CUSTOM_4] = 0
CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_CUSTOM_5] = 0
CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_CUSTOM_6] = 0
CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_CUSTOM_7] = 0
CUSTOM_TEAM_PLAYER_COUNT[DOTA_TEAM_CUSTOM_8] = 0

ADD_ON_FIRST_SPAWN_ITEMS = {
	--{"item_heart", 1}, -- itemname, amount
	--{"item_travel_boots_2", 1}
}
ADD_ON_FIRST_SPAWN_MODIFIERS = {
	--{"ItemStatConverter", "modifiers/unusedmodifiers/ItemStatConverter.lua", {}, true} -- modifiername, modifierscriptfile, modifierparams, custommodifier?(is this a custom modifier if not modifierscriptfile will be ignored)
}
CUSTOM_CHAT_COMMANDS = {
	--{"toggleday", "ToggleDayNight", ChatCommand, "hostonly"}, --
	--{"togglenight", "ToggleDayNight", ChatCommand, "hostonly"}, --examples
}

function ChatCommand:ToggleDayNight(keys)
	if IsServer() then
		-- Do crap here.
	end
end