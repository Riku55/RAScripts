// ~Homebrew~ Mayor of Sanctuary, The
// #ID = 29152

// Variables and functions:

function max_hp() => byte(0xccc6)
function current_hp() => byte(0x00ccc4)
function screen_transition() => byte(0x00C0EE)
function gates_open() => byte(0xcdd1)
function in_game() => byte(0x00c25f) == 3 || byte(0x00c25f) == 4
function current_scene() => word(0x00c6ae)
function box_dialog() => byte(0x00ca35)
function gave_homestead_seal() => byte(0x00cd43)
function gave_shika_cupcake() => byte(0x00cd4d)
function target_hit_count() => byte(0x00cd39)

function enemy_1_health() => byte(0x00cd7a)
function enemy_2_health() => byte(0x00cd7b)
function enemy_3_health() => byte(0x00cd7c)
function enemy_4_health() => byte(0x00cd7d)

AttackCoordinates = [
    byte(0x00c008),
    byte(0x00c010),
    byte(0x00c018)
]

Hearts = [
    byte(0xccc7), // Easy Maze
    byte(0xccc8), // Catacombs
    byte(0xccc9), // Cave entrance
    byte(0xccf3), // Greenhouse
    byte(0xccf4)  // Shrine prayer
]

Save_stones = [
    byte(0xcd53), // Mayor house
    byte(0xcd54), // Cave exit
    byte(0xcd55), // Manor top
    byte(0xcd56), // Hanae house
    byte(0xcd57), // Goku
    byte(0xcd58)  // Manor Entrance
]

Keys = [
    byte(0xccce), // Daisuke
    byte(0xcccf), // Renzo
    byte(0xccd0), // Toshiko
    byte(0xccd1), // Junpei
    byte(0xccd2), // Kohi
    byte(0xccd3), // Luigi
    byte(0xccd4), // Hanae
    byte(0xccd5), // Tomoka
    byte(0xccd6)  // Kokoro
]

Collectables = [
    byte(0xcce1), // Mayor Award
    byte(0xcce2), // Coco Photo
    byte(0xcce3), // Homestead Seal
    byte(0xcce4), // Hanae's Letter
    byte(0xcce5), // Danzo
    byte(0xcce6), // Portable Soundtrack
    byte(0xcce7), // Golden Egg
    byte(0xcce8), // Finger Harp
    byte(0xcce9), // Trespasser!
    byte(0xcd30), // Lucky Omamori
    byte(0xcd31), // Eye of Daruma
    byte(0xcd32)  // Polobi Portrait
]

Inventory = [
    byte(0xccd7), // Daisuke's Axe
    byte(0xccd8), // Shovel
    byte(0xccd9), // Cupcake
    byte(0xccda), // Batteries
    byte(0xcd4a), // Wand 2.0
    byte(0xcd52)  // Hex Mirror
]

RPTitleScreen = [0x0000, 0x0089, 0x0045, 0x0001, 0x0047, 0x0048]
RPMenu = [0x0004, 0x0005, 0x0007]
RPSoundtrack = [0x008e, 0x00b6]
RPYuuHouse = [0x0002, 0x004d, 0x004c, 0x004b, 0x0057, 0x0006, 0x0101, 0x0003, 0x0021, 0x0076]
RPForest = [0x0009, 0x000b, 0x00b5, 0x005d, 0x003a, 0x003b, 0x0090, 0x00bb, 0x007b, 0x003c, 0x000a,
            0x000c, 0x003f, 0x0044, 0x00a6, 0x00a7, 0x00a8, 0x000f, 0x009a, 0x0091, 0x0040, 0x000e]
RPCave = [0x0032, 0x00a2, 0x0033, 0x0034, 0x0102, 0x0035, 0x0036, 0x00ad, 0x003d, 0x00a5]
RPDaisuke = [0x000d, 0x005f, 0x0058, 0x002b]
RPAnzen = [0x0051, 0x0010, 0x0011, 0x00de, 0x0015, 0x001b, 0x0016, 0x0019, 0x0066, 0x0037, 0x0022,
           0x001a, 0x001e, 0x00c7, 0x0042, 0x001d, 0x004e, 0x0043, 0x007a, 0x005b, 0x005e, 0x00cb,
           0x008c, 0x00a1]
RPGenji = [0x003e, 0x0060, 0x009c]
RPRenzo = [0x0012, 0x002e, 0x0056, 0x001f, 0x002c, 0x002d, 0x006c, 0x006b, 0x006a, 0x0069, 0x0068, 0x0067]
RPToshiko= [0x0018, 0x0028, 0x0094, 0x0087, 0x004a]
RPTurtles = [0x0092, 0x001c]
RPGraveyard = [0x0103, 0x009b, 0x0014, 0x0013]
RPJunpei = [0x0017, 0x0024, 0x0041]
RPCatacombs = [0x0050, 0x004f, 0x0061, 0x00b1, 0x0062, 0x00ce, 0x0063, 0x0064, 0x0027, 0x00ac, 0x0065,
               0x0026, 0x00ab, 0x00aa, 0x0049, 0x0025]
RPHanae = [0x002a]
RPKohi = [0x0020]
RPMaze = [0x0008, 0x00b0, 0x0023, 0x00af]
RPLuigi = [0x0029, 0x0059, 0x0052, 0x0053]
RPEmptyHouse = [0x008f, 0x0093]
RPBox = [0x00a9]
RPTemple = [0x00c9]
RPTomoka = [0x0030, 0x00ae, 0x00cc, 0x00ca]
RPKokoro = [0x002f]
RPAyumu = [0x0031]
RPGameboy = [0x005a, 0x0088]
RPDanzo = [0x0046, 0x007c, 0x0083, 0x0084, 0x0086, 0x0085, 0x009d, 0x009e, 0x009f, 0x00a0, 0x00be,
           0x00bf, 0x00c2, 0x00c1, 0x00c3, 0x00c4, 0x00c5, 0x00c6]
RPTrespasser = [0x00b7, 0x00b8, 0x00ba, 0x00b9, 0x00d8, 0x00d7]
RPManorOutside = [0x006d, 0x00b4, 0x0039, 0x006e, 0x006f, 0x00a4, 0x008a, 0x008b, 0x00a3]
RPManorInside = [0x00b3, 0x00e1, 0x0054, 0x0070, 0x0072, 0x0073, 0x0074, 0x00db, 0x0071, 0x0104, 0x00df, 0x00e3,
                 0x00e4, 0x00e5, 0x00e6, 0x00e7, 0x00e8, 0x00e9, 0x00ea, 0x00eb, 0x00ec, 0x00e2, 0x0055, 0x00cf,
                 0x00d6, 0x005c, 0x00fd, 0x00dd, 0x00d0, 0x00f7, 0x0099, 0x0075, 0x008d, 0x008d, 0x00da]
RPFlashback = [0x00f2, 0x00f5, 0x00f3, 0x00f6, 0x00f4]
RPOOak= [0x00fe, 0x00ff]
RPEnd = [0x00f8, 0x00fc, 0x00f9, 0x00fa, 0x00d3, 0x00d4, 0x00d5, 0x00bc, 0x00fb, 0x00d1]
RPCredits = [0x0077, 0x0078, 0x0079, 0x0096, 0x0097]
RPLetter = [0x0095]
RPPortrait = [0x00b2]
RPSecretBook= [0x00ed, 0x00ee, 0x00ef, 0x00f0, 0x00f1]
RPOOakTree = [0x0100]

StartNewGameCondition = once(current_scene() == 0x0003 && prev(current_scene()) == 0x0101)
TakeDamageCondition = never(current_hp() < prev(current_hp()))
FinishGameCondition = trigger_when(current_scene() == 0x00d1 && prev(current_scene()) == 0x00fb)
FinishGameConditionWithoutTriggers = current_scene() == 0x00d1 && prev(current_scene()) == 0x00fb

PerfectTargetPracticeStart = once(current_scene() == 0x0004a && prev(current_scene()) == 0x0087)
PerfectTargetPracticeCancel = never(any_of(AttackCoordinates, a => a == 0x70))
PerfectTargetPracticeSubmit = trigger_when(repeated(3, target_hit_count() == 5 && prev(target_hit_count()) == 4))


// Helper functions:

function FlagsCompleteMeasured(Flags)
{
    return sum_of(Flags, f => prev(f)) == length(Flags) - 1 &&
        measured(sum_of(Flags, f => f) == length(Flags)) 
}

// Without measure, needed for Inventory
function FlagsComplete(Flags)
{
    return sum_of(Flags, f => prev(f)) == length(Flags) - 1 &&
        sum_of(Flags, f => f) == length(Flags)
}

// Needed for cheevos where the measurable is not the final unlock condition and the user could save&reset in between
function FlagsCompleteMeasuredWithoutSaveProtection(Flags)
{
    return measured(sum_of(Flags, f => f) == length(Flags)) 
}

function UnlockFlag(Flag)
{
    return Flag == 1 && prev(Flag) == 0
}


// Rich Presence:

scene_dict = {}

function addArrayToDict(dict, arr, string) {
  i = 0
  for i in range(0, length(arr) -1) {
    dict[arr[i]] = string
  }
}

function createLookupTable() {
  addArrayToDict(scene_dict, RPTitleScreen, "in the title screen")
  addArrayToDict(scene_dict, RPMenu, "in the menus")
  addArrayToDict(scene_dict, RPYuuHouse, "in his house")
  addArrayToDict(scene_dict, RPSoundtrack, "listening to the soundtrack")
  addArrayToDict(scene_dict, RPForest, "walking through the forest")
  addArrayToDict(scene_dict, RPCave, "in a cave")
  addArrayToDict(scene_dict, RPDaisuke, "visiting Daisuke")
  addArrayToDict(scene_dict, RPAnzen, "strolling through Anzen")
  addArrayToDict(scene_dict, RPGenji, "visiting Genji")
  addArrayToDict(scene_dict, RPRenzo, "visiting Renzo")
  addArrayToDict(scene_dict, RPToshiko, "visiting Toshiko")
  addArrayToDict(scene_dict, RPTurtles, "visiting the turtles")
  addArrayToDict(scene_dict, RPGraveyard, "at the graveyard")
  addArrayToDict(scene_dict, RPJunpei, "visiting Junpei")
  addArrayToDict(scene_dict, RPCatacombs, "inside the Catacombs")
  addArrayToDict(scene_dict, RPHanae, "visiting Hanae")
  addArrayToDict(scene_dict, RPKohi, "visiting Kohi")
  addArrayToDict(scene_dict, RPMaze, "wandering through a maze")
  addArrayToDict(scene_dict, RPLuigi, "visiting Luigi")
  addArrayToDict(scene_dict, RPEmptyHouse, "in an empty house")
  addArrayToDict(scene_dict, RPBox, "in a mysterious box")
  addArrayToDict(scene_dict, RPTemple, "visiting a temple")
  addArrayToDict(scene_dict, RPTomoka, "visiting Tomoka")
  addArrayToDict(scene_dict, RPKokoro, "visiting Kokoro")
  addArrayToDict(scene_dict, RPGameboy, "playing GameBoy")
  addArrayToDict(scene_dict, RPDanzo, "playing Danzo")
  addArrayToDict(scene_dict, RPTrespasser, "playing Trespasser!")
  addArrayToDict(scene_dict, RPManorOutside, "outside the manor")
  addArrayToDict(scene_dict, RPManorInside, "inside the manor")
  addArrayToDict(scene_dict, RPFlashback, "in a flashback")
  addArrayToDict(scene_dict, RPOOak, "at a dangerous place")
  addArrayToDict(scene_dict, RPEnd, "watching the cycle of life")
  addArrayToDict(scene_dict, RPCredits, "in the credits")
  addArrayToDict(scene_dict, RPLetter, "reading a letter")
  addArrayToDict(scene_dict, RPPortrait, "looking at an old portrait")
  addArrayToDict(scene_dict, RPAyumu, "visiting Ayumu")
  addArrayToDict(scene_dict, RPSecretBook, "reading a secret book")
  addArrayToDict(scene_dict, RPOOakTree, "visiting the O'Oak Tree")
}

createLookupTable()

rich_presence_conditional_display(
    !in_game(),
    "Yuu is {0}",
    rich_presence_lookup("Scene", current_scene(), scene_dict, "somewhere in Sanctuary")
)

rich_presence_display("Yuu is {0} [{1}♡]",
    rich_presence_lookup("Scene", current_scene(), scene_dict, "somewhere in Sanctuary"),
    rich_presence_value("Health", max_hp())
)


// Progression Achievements:

achievement(
    id = 417707,
    badge = "473014",
    title = "Finally Another Soul",
    points = 5,
    description = "Reach Anzen Village",
    trigger = current_scene() == 0x000d && prev(current_scene()) == 0x000e && in_game(),
    type = "progression"
)

achievement(
    id= 417697,
    badge = "473022",
    title = "Save the Chicks", 
    points = 2,
    description = "Return all chicks to Renzo and receive your reward",
    trigger = UnlockFlag(byte(0xcccf))&& in_game(),
    type = "progression"
)

achievement(
    id = 417698,
    badge = "473008",
    title = "Target Practice",
    points = 2,
    description = "Complete target practice with Toshiko and receive your reward",
    trigger = UnlockFlag(byte(0xccd0)) && in_game(),
    type = "progression"
)

achievement(
    id = 417699,
    badge = "473021",
    title = "A Tiny Maze",
    points = 2,
    description = "Get through Hanae's first maze and receive your reward",
    trigger = UnlockFlag(byte(0xccc7)) && in_game(),
    type = "progression"
)

achievement(
    id = 417700,
    badge = "473020",
    title = "I'm the Chef Now!",
    points = 2,
    description = "Help Luigi finish his last order and receive your reward",
    trigger = UnlockFlag(byte(0x00ccd9)) && in_game(),
    type = "progression"
)

achievement(
    id = 417701,
    badge = "473019",
    title = "From Chef to Cemetery Gardener",
    points = 5,
    description = "Bring peace to the spirits and receive your reward",
    trigger = UnlockFlag(byte(0xccd1)) && in_game(),
    type = "progression"
)

achievement(
    id = 417702,
    badge = "473018",
    title = "It's You, Yuu!",
    points = 2,
    description = "Find some batteries for Ayumu and receive your reward",
    trigger = UnlockFlag(byte(0xccd6)) && in_game(),
    type = "progression"
)

achievement(
    id = 417695,
    badge = "473024",
    title = "By the People",
    points = 10,
    description = "Collect all keys and unlock the mansion's gates",
    trigger = FlagsCompleteMeasuredWithoutSaveProtection(Keys)
    && gates_open() == 1 && prev(gates_open()) == 0 && in_game(),
    type = "progression"
)

achievement(
    id = 417714,
    badge = "472992",
    title = "Fully Equipped",
    points = 5,
    description = "Find all collectable inventory items",
    trigger = FlagsComplete(Inventory) && in_game(),
    type = "progression"
)

achievement(
    id = 417715,
    badge = "472991",
    title = "The Light Will Return",
    points = 25,
    description = "Hold Sanctuary's future in your hand",
    trigger = current_scene() == 0x00d1 && prev(current_scene()) == 0x00fb && in_game(),
    type = "win_condition"
)


// Side Quest Achievements:

achievement(
    id = 417711,
    badge = "472995",
    title = "A Proud House Owner",
    points = 3,
    description = "Give Genji the Homestead Seal and pay him a visit in his new home",
    trigger = gave_homestead_seal() == 0x01 && current_scene() == 0x009c && in_game()
)

// description is non-descriptive for humorous purpose and the achievement is pretty self-explanatory by game context
achievement(
    id = 417708,
    badge = "472998",
    title = "Danzo",
    points = 2,
    description = "DANZŌOOOOOOOOOOO!",
    trigger = UnlockFlag(byte(0xcce5)) && in_game()
)

achievement(
    id = 417703,
    badge = "473017",
    title = "A Royal Meal",
    points = 3,
    description = "Beat the Trespasser! mini game",
    trigger = current_scene() == 0x00d7 && prev(current_scene()) == 0x00d8 && in_game()
)

achievement(
    id = 417705,
    badge = "473001",
    title = "A Huge Maze",
    points = 5,
    description = "Get through Hanae's second maze and receive your reward",
    trigger = UnlockFlag(byte(0xcce4)) && in_game()
)

achievement(
    id = 417706,
    badge = "473015",
    title = "Perseverance & Luck",
    points = 2,
    description = "Solve the puzzle at the temple and receive your reward",
    trigger = UnlockFlag(byte(0xcd31)) && in_game()
)


// Collection Achievements:

achievement(
    id = 417155,
    badge = "473026",
    title = "Nothing to Worry About",
    points = 10,
    description = "Collect all heart upgrades",
    trigger = FlagsCompleteMeasured(Hearts) && in_game()
)

achievement(
    id = 417694,
    badge = "473025",
    title = "Just a Part of Sanctuary",
    points = 5,
    description = "Unlock all Kioku Save Stones",
    trigger = FlagsCompleteMeasured(Save_stones) && in_game()
)

achievement(
    id = 417696,
    badge = "473023",
    title = "Expanding the Lore",
    points = 25,
    description = "Find all 12 collectables",
    trigger = FlagsCompleteMeasured(Collectables) && in_game()
)


// Easter egg Achievements:

achievement(
    id = 417710,
    badge = "472996",
    title = "The Inside of Toshiko's Mind",
    points = 2,
    description = "Stay inside the mysterious box for a long time",
    trigger = current_scene() == 0x00a9 && box_dialog() == 0xf6  && in_game()
)
// fast forward is recommended

achievement(
    id = 417709,
    badge = "472997",
    title = "Be Careful What You Wish For",
    points = 1,
    description = "Get some rest at the shrine",
    trigger = current_scene() == 0x0003 && prev(current_scene()) == 0x003c && in_game(),
    type = "missable"
)
// missable but can easily be achieved from a new file in one minute

achievement(
    id = 417712,
    badge = "472994",
    title = "All It Takes",
    points = 2,
    description = "Give Shika the deer a bite ouf your cupcake",
    trigger = gave_shika_cupcake() == 1 && current_scene() == 0x0069 && in_game()
)

achievement(
    id = 417743,
    badge = "472990",
    title = "The Great O'Oak Tree",
    points = 3,
    description = "Find the hidden O'Oak Tree in the manor area",
    trigger = current_scene() == 0x0100 && prev(current_scene()) == 0x00a3 && in_game()
)


// Challenge Achievements:

achievement(
    id = 417713,
    badge = "472993",
    title = "Still as Capable",
    points = 25,
    description = "Beat the whole game in one session without receiving any damage",
    trigger = StartNewGameCondition && TakeDamageCondition && FinishGameCondition,
    type = "missable"
)
// takes half an hour and I did it first try in my test, it's really not that hard

achievement(
    id = 417704,
    badge = "473016",
    title = "Eyes and Ears",
    points = 5,
    description = "Complete target practice without missing a single shot",
    trigger = PerfectTargetPracticeStart && PerfectTargetPracticeCancel && PerfectTargetPracticeSubmit,
    type = "missable"
)
// the only real missable in this set. You can get to this point from a new save in 3-5 minutes though


// Leaderboards:

leaderboard(
    id = 95179,
    title = "Pacifist",
    description = "Beat the whole game in one session killing as few masked spirits as possible",
    start = StartNewGameCondition,
    cancel = always_false(),
    submit = FinishGameConditionWithoutTriggers,
    value = measured(
        tally(0,
            (enemy_1_health() == 0 && prev(enemy_1_health()) > 0),
            (enemy_2_health() == 0 && prev(enemy_2_health()) > 0),
            (enemy_3_health() == 0 && prev(enemy_3_health()) > 0),
            (enemy_4_health() == 0 && prev(enemy_4_health()) > 0 && current_scene() != 0x0010)
            )
        ) && unless(screen_transition() == 0x01 || current_scene() == 0x004a || current_scene() == 0x00fe || current_scene() == 0x0043 ),
    lower_is_better = true
)
