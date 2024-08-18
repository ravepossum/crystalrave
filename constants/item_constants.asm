; item ids
; indexes for:
; - ItemNames (see data/items/names.asm)
; - ItemDescriptions (see data/items/descriptions.asm)
; - ItemAttributes (see data/items/attributes.asm)
; - ItemEffects (see engine/items/item_effects.asm)
	const_def
	const NO_ITEM      ; 0000
	const BRIGHTPOWDER ; 0001
	const TOWN_MAP     ; 0002
	const MOON_STONE   ; 0003
	const ANTIDOTE     ; 0004
	const BURN_HEAL    ; 0005
	const ICE_HEAL     ; 0006
	const AWAKENING    ; 0007
	const PARLYZ_HEAL  ; 0008
	const FULL_RESTORE ; 0009
	const MAX_POTION   ; 000A
	const HYPER_POTION ; 000B
	const SUPER_POTION ; 000C
	const POTION       ; 000D
	const ESCAPE_ROPE  ; 000E
	const REPEL        ; 000F
	const MAX_ELIXER   ; 0010
	const FIRE_STONE   ; 0011
	const THUNDERSTONE ; 0012
	const WATER_STONE  ; 0013
	const ITEM_19      ; 0014
	const HP_UP        ; 0015
	const PROTEIN      ; 0016
	const IRON         ; 0017
	const CARBOS       ; 0018
	const LUCKY_PUNCH  ; 0019
	const CALCIUM      ; 001A
	const RARE_CANDY   ; 001B
	const X_ACCURACY   ; 001C
	const LEAF_STONE   ; 001D
	const METAL_POWDER ; 001E
	const NUGGET       ; 001F
	const POKE_DOLL    ; 0020
	const FULL_HEAL    ; 0021
	const REVIVE       ; 0022
	const MAX_REVIVE   ; 0023
	const GUARD_SPEC   ; 0024
	const SUPER_REPEL  ; 0025
	const MAX_REPEL    ; 0026
	const DIRE_HIT     ; 0027
	const ITEM_2D      ; 0028
	const FRESH_WATER  ; 0029
	const SODA_POP     ; 002A
	const LEMONADE     ; 002B
	const X_ATTACK     ; 002C
	const ITEM_32      ; 002D
	const X_DEFEND     ; 002E
	const X_SPEED      ; 002F
	const X_SPECIAL    ; 0030
	const POKE_FLUTE   ; 0031
	const SILVER_LEAF  ; 0032
	const PP_UP        ; 0033
	const ETHER        ; 0034
	const MAX_ETHER    ; 0035
	const ELIXER       ; 0036
	const MOOMOO_MILK  ; 0037
	const QUICK_CLAW   ; 0038
	const PSNCUREBERRY
	const GOLD_LEAF
	const SOFT_SAND
	const SHARP_BEAK
	const PRZCUREBERRY
	const BURNT_BERRY
	const ICE_BERRY
	const POISON_BARB
	const KINGS_ROCK
	const BITTER_BERRY
	const MINT_BERRY
	const RED_APRICORN
	const TINYMUSHROOM
	const BIG_MUSHROOM
	const SILVERPOWDER
	const BLU_APRICORN
	const ITEM_5A
	const AMULET_COIN
	const YLW_APRICORN
	const GRN_APRICORN
	const CLEANSE_TAG
	const MYSTIC_WATER
	const TWISTEDSPOON
	const WHT_APRICORN
	const BLACKBELT_I
	const BLK_APRICORN
	const ITEM_64
	const PNK_APRICORN
	const BLACKGLASSES
	const SLOWPOKETAIL
	const PINK_BOW
	const STICK
	const SMOKE_BALL
	const NEVERMELTICE
	const MAGNET
	const MIRACLEBERRY
	const PEARL
	const BIG_PEARL
	const EVERSTONE
	const SPELL_TAG
	const RAGECANDYBAR
	const MIRACLE_SEED
	const THICK_CLUB
	const FOCUS_BAND
	const ITEM_78
	const ENERGYPOWDER
	const ENERGY_ROOT
	const HEAL_POWDER
	const REVIVAL_HERB
	const HARD_STONE
	const LUCKY_EGG
	const STARDUST
	const STAR_PIECE
	const ITEM_87
	const ITEM_88
	const ZINC
	const CHARCOAL
	const BERRY_JUICE
	const SCOPE_LENS
	const ITEM_8D
	const ITEM_8E
	const METAL_COAT
	const DRAGON_FANG
	const ITEM_91
	const LEFTOVERS
	const ITEM_93
	const ITEM_94
	const ITEM_95
	const MYSTERYBERRY
	const DRAGON_SCALE
	const BERSERK_GENE
	const ITEM_99
	const ITEM_9A
	const ITEM_9B
	const SACRED_ASH
	const FLOWER_MAIL
	const ITEM_A2
	const LIGHT_BALL
	const NORMAL_BOX
	const GORGEOUS_BOX
	const SUN_STONE
	const POLKADOT_BOW
	const ITEM_AB
	const UP_GRADE
	const BERRY
	const GOLD_BERRY
	const ITEM_B0
	const ITEM_B3
	const BRICK_PIECE
	const SURF_MAIL
	const LITEBLUEMAIL
	const PORTRAITMAIL
	const LOVELY_MAIL
	const EON_MAIL
	const MORPH_MAIL
	const BLUESKY_MAIL
	const MUSIC_MAIL
	const MIRAGE_MAIL
	const ITEM_BE
	const ITEM_DC
	const ITEM_C3
	const ITEM_FA
DEF NUM_ITEM_POCKET EQU const_value - 1

	const_align 8 ; Key items assume the value of HIGH(FIRST_KEY_ITEM) when storing in bag.
DEF FIRST_KEY_ITEM EQU const_value
	const BICYCLE
	const COIN_CASE
	const ITEMFINDER
	const OLD_ROD
	const GOOD_ROD
	const SUPER_ROD
	const RED_SCALE
	const SECRETPOTION
	const S_S_TICKET
	const MYSTERY_EGG
	const CLEAR_BELL
	const SILVER_WING
	const GS_BALL
	const BLUE_CARD
	const CARD_KEY
	const MACHINE_PART
	const EGG_TICKET
	const LOST_ITEM
	const BASEMENT_KEY
	const PASS
	const SQUIRTBOTTLE
	const RAINBOW_WING
	const EXP_SHARE    
DEF NUM_KEY_ITEM_POCKET EQU const_value - FIRST_KEY_ITEM
assert NUM_KEY_ITEM_POCKET <= $ff

	const_align 8; Ball items assume the value of HIGH(FIRST_BALL_ITEM) when storing in bag.
DEF FIRST_BALL_ITEM EQU const_value
	const MASTER_BALL
	const ULTRA_BALL
	const GREAT_BALL
	const POKE_BALL
	const HEAVY_BALL
	const LEVEL_BALL
	const LURE_BALL
	const FAST_BALL
	const FRIEND_BALL
	const MOON_BALL
	const LOVE_BALL
	const PARK_BALL
DEF NUM_BALL_ITEM_POCKET EQU const_value - FIRST_BALL_ITEM
assert NUM_BALL_ITEM_POCKET <= $ff
DEF NUM_ITEMS EQU const_value - 1

DEF __tmhm_value__ = 1

MACRO add_tmnum
	DEF \1_TMNUM EQU __tmhm_value__
	DEF __tmhm_value__ += 1
ENDM

MACRO add_tm
; Defines three constants:
; - TM_\1: the item id, starting at $bf
; - \1_TMNUM: the learnable TM/HM flag, starting at 1
; - TM##_MOVE: alias for the move id, equal to the value of \1
	const TM_\1
	DEF TM{02d:__tmhm_value__}_MOVE = \1
	add_tmnum \1
ENDM

	const_align 8 ; TMHM items assume the value of HIGH(FIRST_TMHM_ITEM) when storing in bag.
DEF FIRST_TMHM_ITEM EQU const_value
; see data/moves/tmhm_moves.asm for moves
DEF TM01 EQU const_value
	add_tm DYNAMICPUNCH
	add_tm HEADBUTT
	add_tm CURSE
	add_tm ROLLOUT
	add_tm ROAR
	add_tm TOXIC
	add_tm ZAP_CANNON
	add_tm ROCK_SMASH
	add_tm PSYCH_UP
	add_tm HIDDEN_POWER
	add_tm SUNNY_DAY
	add_tm SWEET_SCENT
	add_tm SNORE
	add_tm BLIZZARD
	add_tm HYPER_BEAM
	add_tm ICY_WIND
	add_tm PROTECT
	add_tm RAIN_DANCE
	add_tm GIGA_DRAIN
	add_tm ENDURE
	add_tm FRUSTRATION
	add_tm SOLARBEAM
	add_tm IRON_TAIL
	add_tm DRAGONBREATH
	add_tm THUNDER
	add_tm EARTHQUAKE
	add_tm RETURN
	add_tm DIG
	add_tm PSYCHIC_M
	add_tm SHADOW_BALL
	add_tm MUD_SLAP
	add_tm DOUBLE_TEAM
	add_tm ICE_PUNCH
	add_tm SWAGGER
	add_tm SLEEP_TALK
	add_tm SLUDGE_BOMB
	add_tm SANDSTORM
	add_tm FIRE_BLAST
	add_tm SWIFT
	add_tm DEFENSE_CURL
	add_tm THUNDERPUNCH
	add_tm DREAM_EATER
	add_tm DETECT
	add_tm REST
	add_tm ATTRACT
	add_tm THIEF
	add_tm STEEL_WING
	add_tm FIRE_PUNCH
	add_tm FURY_CUTTER
	add_tm NIGHTMARE
DEF NUM_TMS EQU __tmhm_value__ - 1

MACRO add_hm
; Defines three constants:
; - HM_\1: the item id, starting at $f3
; - \1_TMNUM: the learnable TM/HM flag, starting at 51
; - HM##_MOVE: alias for the move id, equal to the value of \1
	const HM_\1
	DEF HM_VALUE = __tmhm_value__ - NUM_TMS
	DEF HM{02d:HM_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF HM01 EQU const_value
	add_hm CUT
	add_hm FLY
	add_hm SURF
	add_hm STRENGTH
	add_hm FLASH
	add_hm WHIRLPOOL
	add_hm WATERFALL
DEF NUM_HMS EQU __tmhm_value__ - NUM_TMS - 1

assert (NUM_TMS + NUM_HMS) < $ff, "TMs/HMs can't exceed 255 due to GetTMHMNumber."

MACRO add_mt
; Defines two constants:
; - \1_TMNUM: the learnable TM/HM flag, starting at 58
; - MT##_MOVE: alias for the move id, equal to the value of \1
	DEF MT_VALUE = __tmhm_value__ - NUM_TMS - NUM_HMS
	DEF MT{02d:MT_VALUE}_MOVE = \1
	add_tmnum \1
ENDM

DEF MT01 EQU const_value
	add_mt FLAMETHROWER
	add_mt THUNDERBOLT
	add_mt ICE_BEAM
DEF NUM_TUTORS = __tmhm_value__ - NUM_TMS - NUM_HMS - 1

DEF NUM_TM_HM_TUTOR EQU NUM_TMS + NUM_HMS + NUM_TUTORS

DEF USE_SCRIPT_VAR EQU $00
DEF ITEM_FROM_MEM  EQU $ffff

; leftovers from red
DEF SAFARI_BALL    EQU $08 ; MOON_STONE
DEF MOON_STONE_RED EQU $0a ; BURN_HEAL
DEF FULL_HEAL_RED  EQU $34 ; X_SPEED
