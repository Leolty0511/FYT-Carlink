.class public Lcom/google/android/projection/protocol/RadioStub;
.super Lcom/google/android/projection/protocol/Radio;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;,
        Lcom/google/android/projection/protocol/RadioStub$StationPresetsRunnable;,
        Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;
    }
.end annotation


# static fields
.field private static final STATUS_INVALID_INPUT:I = -0x14

.field private static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RadioStub"

.field private static final mRadioTextTable:[Ljava/lang/String;


# instance fields
.field private mCurrentStation:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/projection/protocol/Radio$RadioStationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mProgramLists:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$RadioStationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

.field private mRadioProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$RadioProperties;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioState:Lcom/google/android/projection/protocol/Radio$RadioState;

.field private final mRadioStateLock:Ljava/lang/Object;

.field private final mRandom:Ljava/util/Random;

.field private mScanRunnable:Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x25d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Pablo Honey - Radiohead"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Kind Of Blue (Legacy Edition) - Miles Davis"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Audioslave - Audioslave"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Disney\'s Greatest Volume 1 - Various"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "The Essential Billy Joel - Billy Joel"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "All Eyez On Me - 2Pac"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Lest We Forget - The Best Of - Marilyn Manson"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Sublime - Sublime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Backstreet Boys - Backstreet Boys"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "The Essential Bruce Springsteen - Bruce Springsteen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Moondance - VAN MORRISON"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Tracy Chapman - Tracy Chapman"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "The Essential Clash - The Clash"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Toxicity - System Of A Down"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Anthology: Through The Years - Tom Petty And The Heartbreakers"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Spice - Spice Girls"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Life After Death - The Notorious B.I.G."

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Time Well Wasted - Brad Paisley"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Continuum - John Mayer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Come Away With Me - Norah Jones"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Three Cheers For Sweet Revenge - My Chemical Romance"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "FutureSex_LoveSounds - Justin Timberlake"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Ocean Avenue - Yellowcard"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "City Of Evil - Avenged Sevenfold"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Your Man - Josh Turner"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "RENT - Original Motion Picture Soundtrack - RENT Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Begin To Hope - regina spektor"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "The Poison (Deluxe Version) - Bullet For My Valentine"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Robbers & Cowards - Cold War Kids"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "In the Aeroplane Over the Sea - Neutral Milk Hotel"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Tragic Kingdom - No Doubt"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Because Of The Times - Kings Of Leon"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Bangarang EP - Skrillex"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Parachutes - Coldplay"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v3, "The Essential Daryl Hall & John Oates - Daryl Hall & John Oates"

    aput-object v3, v0, v1

    const/16 v1, 0x23

    const-string v3, "RIOT! - Paramore"

    aput-object v3, v0, v1

    const/16 v1, 0x24

    const-string v3, "Wicked - Various Artists"

    aput-object v3, v0, v1

    const/16 v1, 0x25

    const-string v3, "Viva La Vida Or Death And All His Friends - Coldplay"

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v4, "The Essential Paul Simon - Paul Simon"

    aput-object v4, v0, v1

    const/16 v1, 0x27

    const-string v4, "Boxer - The National"

    aput-object v4, v0, v1

    const/16 v1, 0x28

    const-string v4, "Sound Of Silver - LCD Soundsystem"

    aput-object v4, v0, v1

    const/16 v1, 0x29

    const-string v4, "Little Voice - Sara Bareilles"

    aput-object v4, v0, v1

    const/16 v1, 0x2a

    const-string v4, "The Reminder - Feist"

    aput-object v4, v0, v1

    const/16 v1, 0x2b

    const-string v4, "Taylor Swift - Taylor Swift"

    aput-object v4, v0, v1

    const/16 v1, 0x2c

    const-string v5, "The Temper Trap - The Temper Trap"

    aput-object v5, v0, v1

    const/16 v1, 0x2d

    const-string v5, "Coco - Colbie Caillat"

    aput-object v5, v0, v1

    const/16 v1, 0x2e

    const-string v5, "19 - Adele"

    aput-object v5, v0, v1

    const/16 v1, 0x2f

    const-string v6, "Exile On Mainstream - Matchbox Twenty"

    aput-object v6, v0, v1

    const/16 v1, 0x30

    const-string v6, "So Wrong, It\'s Right - All Time Low"

    aput-object v6, v0, v1

    const/16 v1, 0x31

    const-string v6, "Saturdays = Youth - M83"

    aput-object v6, v0, v1

    const/16 v1, 0x32

    const-string v6, "Lady Antebellum - Lady Antebellum"

    aput-object v6, v0, v1

    const/16 v1, 0x33

    const-string v6, "Crystal Castles - Crystal Castles"

    aput-object v6, v0, v1

    const/16 v1, 0x34

    const-string v6, "It\'s Not Me, It\'s You - Lily Allen"

    aput-object v6, v0, v1

    const/16 v1, 0x35

    const-string v6, "Now You\'re Gone - Basshunter"

    aput-object v6, v0, v1

    const/16 v1, 0x36

    const-string v6, "Heavier Things - John Mayer"

    aput-object v6, v0, v1

    const/16 v1, 0x37

    const-string v6, "Peaceful, The World Lays Me Down - Noah And The Whale"

    aput-object v6, v0, v1

    const/16 v1, 0x38

    const-string v6, "Breakaway - Kelly Clarkson"

    aput-object v6, v0, v1

    const/16 v1, 0x39

    const-string v7, "Dark Horse - Nickelback"

    aput-object v7, v0, v1

    const/16 v1, 0x3a

    const-string v7, "Songs For You, Truths For Me - James Morrison"

    aput-object v7, v0, v1

    const/16 v1, 0x3b

    const-string v7, "Be OK - Ingrid Michaelson"

    aput-object v7, v0, v1

    const/16 v1, 0x3c

    const-string v7, "Homesick - A Day To Remember"

    aput-object v7, v0, v1

    const/16 v1, 0x3d

    const-string v7, "R.O.O.T.S. - Flo Rida"

    aput-object v7, v0, v1

    const/16 v1, 0x3e

    const-string v7, "Californication - Red Hot Chili Peppers"

    aput-object v7, v0, v1

    const/16 v1, 0x3f

    const-string v7, "21st Century Breakdown - Green Day"

    aput-object v7, v0, v1

    const/16 v1, 0x40

    const-string v7, "City Of Black & White - Mat Kearney"

    aput-object v7, v0, v1

    const/16 v1, 0x41

    const-string v7, "Aim and Ignite [Deluxe Version] - fun."

    aput-object v7, v0, v1

    const/16 v1, 0x42

    const-string v7, "Raymond v Raymond - Usher"

    aput-object v7, v0, v1

    const/16 v1, 0x43

    const-string v7, "Breakthrough - Colbie Caillat"

    aput-object v7, v0, v1

    const/16 v1, 0x44

    const-string v7, "Dear Agony - Breaking Benjamin"

    aput-object v7, v0, v1

    const/16 v1, 0x45

    const-string v8, "The Very Best Of Enya - Enya"

    aput-object v8, v0, v1

    const/16 v1, 0x46

    const-string v8, "Michael Jackson\'s This Is It - Michael Jackson"

    aput-object v8, v0, v1

    const/16 v1, 0x47

    const-string v8, "My World - Justin Bieber"

    aput-object v8, v0, v1

    const/16 v1, 0x48

    const-string v8, "Immersion - Pendulum"

    aput-object v8, v0, v1

    const/16 v1, 0x49

    const-string v8, "B.o.B Presents: The Adventures of Bobby Ray - B.o.B"

    aput-object v8, v0, v1

    const/16 v1, 0x4a

    const-string v9, "Jason Derulo - Jason Derulo"

    aput-object v9, v0, v1

    const/16 v1, 0x4b

    const-string v9, "Tourist History - Two Door Cinema Club"

    aput-object v9, v0, v1

    const/16 v1, 0x4c

    const-string v10, "Love Like Crazy - Lee Brice"

    aput-object v10, v0, v1

    const/16 v1, 0x4d

    const-string v10, "Brothers - The Black Keys"

    aput-object v10, v0, v1

    const/16 v1, 0x4e

    const-string v10, "High Violet (Expanded Edition) - The National"

    aput-object v10, v0, v1

    const/16 v1, 0x4f

    const-string v10, "The Shepherd\'s Dog - Iron and Wine"

    aput-object v10, v0, v1

    const/16 v1, 0x50

    const-string v10, "Black Sands - Bonobo"

    aput-object v10, v0, v1

    const/16 v1, 0x51

    const-string v10, "Meet The Orphans - Don Omar"

    aput-object v10, v0, v1

    const/16 v1, 0x52

    const-string v11, "To The Sea - Jack Johnson"

    aput-object v11, v0, v1

    const/16 v1, 0x53

    const-string v11, "Nightmare - Avenged Sevenfold"

    aput-object v11, v0, v1

    const/16 v1, 0x54

    const-string v11, "Euphoria - Enrique Iglesias"

    aput-object v11, v0, v1

    const/16 v1, 0x55

    const-string v11, "Mylo Xyloto - Coldplay"

    aput-object v11, v0, v1

    const/16 v1, 0x56

    const-string v11, "Speak Now - Taylor Swift"

    aput-object v11, v0, v1

    const/16 v1, 0x57

    const-string v11, "All About Tonight - Blake Shelton"

    aput-object v11, v0, v1

    const/16 v1, 0x58

    const-string v11, "You Get What You Give - Zac Brown Band"

    aput-object v11, v0, v1

    const/16 v1, 0x59

    const-string v11, "The Essential Dixie Chicks - Dixie Chicks"

    aput-object v11, v0, v1

    const/16 v1, 0x5a

    const-string v11, "Sidewalks - Matt & Kim"

    aput-object v11, v0, v1

    const/16 v1, 0x5b

    const-string v11, "The Band Perry - The Band Perry"

    aput-object v11, v0, v1

    const/16 v1, 0x5c

    const-string v11, "Leave A Whisper - Shinedown"

    aput-object v11, v0, v1

    const/16 v1, 0x5d

    const-string v11, "Enema Of The State - blink-182"

    aput-object v11, v0, v1

    const/16 v1, 0x5e

    const-string v11, "The King Is Dead - The Decemberists"

    aput-object v11, v0, v1

    const/16 v1, 0x5f

    const-string v11, "Scary Monsters and Nice Sprites EP - Skrillex"

    aput-object v11, v0, v1

    const/16 v1, 0x60

    const-string v11, "34 Number Ones - Alan Jackson"

    aput-object v11, v0, v1

    const/16 v1, 0x61

    const-string v12, "Fleet Foxes - Fleet Foxes"

    aput-object v12, v0, v1

    const/16 v1, 0x62

    const-string v12, "Pink Friday - Nicki Minaj"

    aput-object v12, v0, v1

    const/16 v1, 0x63

    const-string v12, "Sale El Sol - Shakira"

    aput-object v12, v0, v1

    const/16 v1, 0x64

    const-string v12, "Get Closer (Deluxe Version) - Keith Urban"

    aput-object v12, v0, v1

    const/16 v1, 0x65

    const-string v12, "Timestretch - Bassnectar"

    aput-object v12, v0, v1

    const/16 v1, 0x66

    const-string v12, "Man On The Moon II: The Legend Of Mr. Rager - Kid Cudi"

    aput-object v12, v0, v1

    const/16 v1, 0x67

    const-string v13, "Holding Onto Strings Better Left to Fray (Deluxe Version) - Seether"

    aput-object v13, v0, v1

    const/16 v1, 0x68

    const-string v13, "Raw - Hopsin"

    aput-object v13, v0, v1

    const/16 v1, 0x69

    const-string v13, "Prince Royce - Prince Royce"

    aput-object v13, v0, v1

    const/16 v1, 0x6a

    const-string v13, "Enjoy Yourself - Billy Currington"

    aput-object v13, v0, v1

    const/16 v1, 0x6b

    const-string v13, "American Tragedy - Hollywood Undead"

    aput-object v13, v0, v1

    const/16 v1, 0x6c

    const-string v13, "Victorious: Music From The Hit TV Show feat. Victoria Justice - Victorious Cast"

    aput-object v13, v0, v1

    const/16 v1, 0x6d

    const-string v13, "Vices & Virtues - Panic! At The Disco"

    aput-object v13, v0, v1

    const/16 v1, 0x6e

    const-string v13, "Wasting Light - Foo Fighters"

    aput-object v13, v0, v1

    const/16 v1, 0x6f

    const-string v13, "Goblin (Deluxe Edition) - Tyler, The Creator"

    aput-object v13, v0, v1

    const/16 v1, 0x70

    const-string v13, "Young the Giant - Young the Giant"

    aput-object v13, v0, v1

    const/16 v1, 0x71

    const-string v13, "Grouplove - Grouplove"

    aput-object v13, v0, v1

    const/16 v1, 0x72

    const-string v13, "We The Best Forever - DJ Khaled"

    aput-object v13, v0, v1

    const/16 v1, 0x73

    const-string v13, "Ritual Union - Little Dragon"

    aput-object v13, v0, v1

    const/16 v1, 0x74

    const-string v13, "Circuital - My Morning Jacket"

    aput-object v13, v0, v1

    const/16 v1, 0x75

    const-string v13, "When The Sun Goes Down - Selena Gomez & The Scene"

    aput-object v13, v0, v1

    const/16 v1, 0x76

    const-string v13, "Planet Pit (Deluxe Version) - Pitbull"

    aput-object v13, v0, v1

    const/16 v1, 0x77

    const-string v13, "In Light - Givers"

    aput-object v13, v0, v1

    const/16 v1, 0x78

    const-string v13, "Section.80 - Kendrick Lamar"

    aput-object v13, v0, v1

    const/16 v1, 0x79

    const-string v14, "Divergent Spectrum - Bassnectar"

    aput-object v14, v0, v1

    const/16 v1, 0x7a

    const-string v14, "Neighborhoods - blink-182"

    aput-object v14, v0, v1

    const/16 v1, 0x7b

    const-string v14, "Mayday Parade - Mayday Parade"

    aput-object v14, v0, v1

    const/16 v1, 0x7c

    const-string v14, "Neon - Chris Young"

    aput-object v14, v0, v1

    const/16 v1, 0x7d

    const-string v14, "Within and Without - Washed Out"

    aput-object v14, v0, v1

    const/16 v1, 0x7e

    const-string v14, "Never Trust A Happy Song - Grouplove"

    aput-object v14, v0, v1

    const/16 v1, 0x7f

    const-string v14, "Unbroken - Demi Lovato"

    aput-object v14, v0, v1

    const/16 v1, 0x80

    const-string v14, "Vows - Kimbra"

    aput-object v14, v0, v1

    const/16 v1, 0x81

    const-string v14, "Audio, Video, Disco. - Justice"

    aput-object v14, v0, v1

    const/16 v1, 0x82

    const-string v14, "Take A Back Road - Rodney Atkins"

    aput-object v14, v0, v1

    const/16 v1, 0x83

    const-string v14, "Life Is Good - Nas"

    aput-object v14, v0, v1

    const/16 v1, 0x84

    const-string v14, "Halfway To Heaven - Brantley Gilbert"

    aput-object v14, v0, v1

    const/16 v1, 0x85

    const-string v14, "Fire & Ice - Kaskade"

    aput-object v14, v0, v1

    const/16 v1, 0x86

    const-string v14, "Strange Clouds - B.o.B"

    aput-object v14, v0, v1

    const/16 v1, 0x87

    const-string v14, "What We Saw From The Cheap Seats - Regina Spektor"

    aput-object v14, v0, v1

    const/16 v1, 0x88

    const-string v14, "Glee: The Music, Volume 7 - Glee Cast"

    aput-object v14, v0, v1

    const/16 v1, 0x89

    const-string v14, "Pink Friday ... Roman Reloaded - Nicki Minaj"

    aput-object v14, v0, v1

    const/16 v1, 0x8a

    const-string v15, "Born To Die - Lana Del Rey"

    aput-object v15, v0, v1

    const/16 v1, 0x8b

    const-string v15, "Reign of Terror - Sleigh Bells"

    aput-object v15, v0, v1

    const/16 v1, 0x8c

    const-string v15, "My Head Is An Animal - Of Monsters and Men"

    aput-object v15, v0, v1

    const/16 v1, 0x8d

    const-string v15, "channel ORANGE - Frank Ocean"

    aput-object v15, v0, v1

    const/16 v1, 0x8e

    const-string v15, "Love Is A Four Letter Word - Jason Mraz"

    aput-object v15, v0, v1

    const/16 v1, 0x8f

    const-string v15, "The Hunger Games: Songs From District 12 And Beyond - Various Artists"

    aput-object v15, v0, v1

    const/16 v1, 0x90

    const-string v16, "Visions - Grimes"

    aput-object v16, v0, v1

    const/16 v1, 0x91

    const-string v16, "Handwritten - The Gaslight Anthem"

    aput-object v16, v0, v1

    const/16 v1, 0x92

    const-string v16, "The Idler Wheel Is Wiser Than the Driver of the Screw and Whipping Cords Will Serve You More Than Ropes Will Ever Do - Fiona Apple"

    aput-object v16, v0, v1

    const/16 v1, 0x93

    const-string v16, "Neck Of The Woods - Silversun Pickups"

    aput-object v16, v0, v1

    const/16 v1, 0x94

    const-string v16, "Changed - Rascal Flatts"

    aput-object v16, v0, v1

    const/16 v1, 0x95

    const-string v16, "Blown Away - Carrie Underwood"

    aput-object v16, v0, v1

    const/16 v1, 0x96

    const-string v17, "The Lateness Of The Hour - Alex Clare"

    aput-object v17, v0, v1

    const/16 v1, 0x97

    const-string v17, "Welcome To The Fishbowl - Kenny Chesney"

    aput-object v17, v0, v1

    const/16 v1, 0x98

    const-string v17, "Dance Again...The Hits - Jennifer Lopez"

    aput-object v17, v0, v1

    const/16 v1, 0x99

    const-string v17, "Part Of Me - Katy Perry"

    aput-object v17, v0, v1

    const/16 v1, 0x9a

    const-string v17, "We Found Love - Rihanna"

    aput-object v17, v0, v1

    const/16 v1, 0x9b

    const-string v17, "Tha Carter IV - Lil Wayne"

    aput-object v17, v0, v1

    const/16 v1, 0x9c

    const-string v17, "Pink Friday (Deluxe Edition) - Nicki Minaj"

    aput-object v17, v0, v1

    const/16 v1, 0x9d

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "The Marshall Mathers LP - Eminem"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "The Way - Benedict Francis"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "Hot Rocks (1964-1971) (Remastered) - The Rolling Stones"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "Stammtischzeit 2 - Diverse"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "Give Me Everything (Feat. Afrojack, Nayer & Ne-Yo) - Pitbull"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "Vapour - Tom Garrad-Cole"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "Yeezus - Kanye West"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "Femme Fatale (Deluxe Version) - Britney Spears"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "Rendezvous - Walter Beasley"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "Primetime - Baby Oliver"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "Sasakyan Kita - K And The Boxers"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "Power Trip (feat. Miguel) - J. Cole"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "The Very Best Of Enya (Deluxe) - Enya"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "Frozen (Original Motion Picture Soundtrack) - Various Artists"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Distant Lights - Burial"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "Mastermind (Deluxe) - Rick Ross"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Swimming Pools (Drank) - Kendrick Lamar"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    aput-object v7, v0, v1

    const/16 v1, 0xb0

    const-string v2, "Greatest Hits - Fleetwood Mac"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "Gian Francesco Malipiero: Endecatode - Maria Chiara Pavone"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "Motivation and Watertower Grammer - Work Of Saws"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "Need You Now - Lady Antebellum"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "My Head Is An Animal - Of Monsters And Men"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "Tembang Sunda: Classical Music from West Java, Indonesia - Ida Widawati"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "Empire State Of Mind (Pt. II) - W.C.D.A."

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "Tulpentussi E.P. - Krischmann & Klingenberg"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "An Awesome Wave - alt-J"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "Tha Carter III - Lil Wayne"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "California 37 - Train"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "Saxo de Oro - Sax Gold"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "Doggystyle - Snoop Dogg"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "The Hits - Brian Poole"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "Rearviewmirror: Greatest Hits, 1991-2003 - Pearl Jam"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "Inside - James Collins"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "Never Be Yourself - Count Zero"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "Best Sexy Songs Vol.2 - The Romantic Band"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "Classical Poems - Various Artists"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "I Like Girls In Russia - Thou"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "4 - Beyonce"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "Native (Deluxe) - OneRepublic"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "La Historia - Carlos Ponce"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "Spirtual Moves 3 - Acid Germs - Various Artists"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "Contra - Vampire Weekend"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "I Am Not A Human Being - Lil Wayne"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "Sorry For Party Rocking - LMFAO"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "Warrior (Deluxe Version) - Ke$ha"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "Lil\u2019 Troy Presents Parking Lot Pimpin\u2019 - SK"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "Radioactive (Explicit Version) - YelaWolf"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "Soul of Istanbul - Soul of Istanbul"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "Naked Emperor - Naked Emperor"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "Asana: Music - Various"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    aput-object v14, v0, v1

    const/16 v1, 0xd2

    const-string v2, "The Disparrows - The Disparrows"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "Voices of the Cathedral - A Celebration Of A Cappella Chamber Music - Voices Of The Cathedral"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "Some Girls (Deluxe Version) - The Rolling Stones"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "Stronger (Deluxe Version) - Kelly Clarkson"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "Vedette - Babasonicos"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "The Come Ons - The Come Ons"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "Collide With The Sky - Pierce The Veil"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "The Foundation - Zac Brown Band"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v7, "How To Love - Lil Wayne"

    aput-object v7, v0, v1

    const/16 v1, 0xdb

    const-string v7, "T-Bone & Ty-Rat - T-Bone & Ty-Rat"

    aput-object v7, v0, v1

    const/16 v1, 0xdc

    const-string v7, "The Lumineers - The Lumineers"

    aput-object v7, v0, v1

    const/16 v1, 0xdd

    const-string v7, "Son of Sulphur - Crowpath"

    aput-object v7, v0, v1

    const/16 v1, 0xde

    const-string v7, "Brushfire Fairytales (Bonus Version) - Jack Johnson"

    aput-object v7, v0, v1

    const/16 v1, 0xdf

    const-string v7, "The Networks, The Circuits, The Streams, The Harmonies - Burnside Project"

    aput-object v7, v0, v1

    const/16 v1, 0xe0

    const-string v7, "Redeverything - Don Diego The Blood"

    aput-object v7, v0, v1

    const/16 v1, 0xe1

    const-string v7, "She Wants EP - Lee Picton"

    aput-object v7, v0, v1

    const/16 v1, 0xe2

    const-string v7, "M-Guixx - Jumping Self"

    aput-object v7, v0, v1

    const/16 v1, 0xe3

    const-string v7, "Muthana Muthukumara - Pushpavanam Kuppusamy"

    aput-object v7, v0, v1

    const/16 v1, 0xe4

    const-string v7, "Da Master\'s Plan - M Ownly"

    aput-object v7, v0, v1

    const/16 v1, 0xe5

    const-string v7, "Reggae Mentalists (Caribbean Reggae Flavors) - Various Artists"

    aput-object v7, v0, v1

    const/16 v1, 0xe6

    const-string v7, "Parifornie - 3010"

    aput-object v7, v0, v1

    const/16 v1, 0xe7

    const-string v7, "Do Or Die - Ant Banks"

    aput-object v7, v0, v1

    const/16 v1, 0xe8

    const-string v7, "New Traditions - Southern Illinois University Edwardsville Wind Symphony"

    aput-object v7, v0, v1

    const/16 v1, 0xe9

    const-string v7, "Stand Beside Me in the Sun - Mark Nevin"

    aput-object v7, v0, v1

    const/16 v1, 0xea

    const-string v7, "The Blueprint 3 - JAY Z"

    aput-object v7, v0, v1

    const/16 v1, 0xeb

    const-string v7, "Swingin\' Lena Horne - Lena Horne"

    aput-object v7, v0, v1

    const/16 v1, 0xec

    const-string v7, "Evanescence (Deluxe Version) - Evanescence"

    aput-object v7, v0, v1

    const/16 v1, 0xed

    aput-object v13, v0, v1

    const/16 v1, 0xee

    const-string v7, "Punkrock\u00b4s Dead - South City Locos"

    aput-object v7, v0, v1

    const/16 v1, 0xef

    const-string v7, "Lost Highway Saloon - Johnny Bush"

    aput-object v7, v0, v1

    const/16 v1, 0xf0

    const-string v7, "OK Computer - Radiohead"

    aput-object v7, v0, v1

    const/16 v1, 0xf1

    const-string v7, "De Dragul Tau (For Your Sake) - Marcel Pavel"

    aput-object v7, v0, v1

    const/16 v1, 0xf2

    const-string v7, "Khodah Negadar - Parsa"

    aput-object v7, v0, v1

    const/16 v1, 0xf3

    const-string v7, "Can\'t Get Enough - Tellex"

    aput-object v7, v0, v1

    const/16 v1, 0xf4

    const-string v7, "Missing You EP - Thomas Braxe"

    aput-object v7, v0, v1

    const/16 v1, 0xf5

    const-string v7, "Finally Famous - Big Sean"

    aput-object v7, v0, v1

    const/16 v1, 0xf6

    const-string v7, "Speakerboxxx/The Love Below - OutKast"

    aput-object v7, v0, v1

    const/16 v1, 0xf7

    const-string v7, "15 Hits - Ricky Naranjo Y Los Gamblers"

    aput-object v7, v0, v1

    const/16 v1, 0xf8

    const-string v7, "Live From The Greenhouse - Susan Unger"

    aput-object v7, v0, v1

    const/16 v1, 0xf9

    const-string v7, "Singendes Bayernland - Various Artists"

    aput-object v7, v0, v1

    const/16 v1, 0xfa

    const-string v7, "Unutulmaz Malatya Ezgileri - Nusret G\u00fcm\u00fc\u015fbo\u011fa"

    aput-object v7, v0, v1

    const/16 v1, 0xfb

    const-string v7, "So Far Gone - Drake"

    aput-object v7, v0, v1

    const/16 v1, 0xfc

    const-string v7, "Detour Allure - Charlemagne"

    aput-object v7, v0, v1

    const/16 v1, 0xfd

    const-string v7, "Born This Way - Lady Gaga"

    aput-object v7, v0, v1

    const/16 v1, 0xfe

    const-string v7, "Frutta Latina Best Latin America, Vol. 1 - Gruppo Latino"

    aput-object v7, v0, v1

    const/16 v1, 0xff

    const-string v7, "Looking 4 Myself (Deluxe Version) - Usher"

    aput-object v7, v0, v1

    const/16 v1, 0x100

    const-string v7, "Arrolos de Salitre - Xabier D\u00edaz e Guillerme Fern\u00e1ndez"

    aput-object v7, v0, v1

    const/16 v1, 0x101

    const-string v7, "American Capitalist (Deluxe) - Five Finger Death Punch"

    aput-object v7, v0, v1

    const/16 v1, 0x102

    const-string v7, "The Wall (2011 - Remaster) - Pink Floyd"

    aput-object v7, v0, v1

    const/16 v1, 0x103

    const-string v7, "Greatest Hits - Guns N\' Roses"

    aput-object v7, v0, v1

    const/16 v1, 0x104

    const-string v7, "Late Night Lounge - Hillton FM"

    aput-object v7, v0, v1

    const/16 v1, 0x105

    const-string v7, "Billie Holiday - Live (Digitally Remastered) - Billie Holiday"

    aput-object v7, v0, v1

    const/16 v1, 0x106

    const-string v7, "Bon Iver - Bon Iver"

    aput-object v7, v0, v1

    const/16 v1, 0x107

    const-string v7, "Love Me (Feat. Future, Drake) - Lil Wayne"

    aput-object v7, v0, v1

    const/16 v1, 0x108

    const-string v7, "The Call - Gotthard"

    aput-object v7, v0, v1

    const/16 v1, 0x109

    const-string v7, "Vampire Weekend - Vampire Weekend"

    aput-object v7, v0, v1

    const/16 v1, 0x10a

    const-string v7, "Firefly - Denga, Manus"

    aput-object v7, v0, v1

    const/16 v1, 0x10b

    const-string v7, "Karat 1 - Karat"

    aput-object v7, v0, v1

    const/16 v1, 0x10c

    const-string v7, "Stranger Than Fiction - Kevin Gates"

    aput-object v7, v0, v1

    const/16 v1, 0x10d

    const-string v7, "Viva La Vida - Prospekt\'s March Edition - Coldplay"

    aput-object v7, v0, v1

    const/16 v1, 0x10e

    const-string v7, "Pavement Tune - The Frames"

    aput-object v7, v0, v1

    const/16 v1, 0x10f

    const-string v7, "Because Of You - Ne-Yo"

    aput-object v7, v0, v1

    const/16 v1, 0x110

    const-string v7, "Oracular Spectacular - MGMT"

    aput-object v7, v0, v1

    const/16 v1, 0x111

    const-string v7, "Incarcerated (Explicit) - Lil\' Boosie"

    aput-object v7, v0, v1

    const/16 v1, 0x112

    const-string v7, "Talk That Talk - Rihanna"

    aput-object v7, v0, v1

    const/16 v1, 0x113

    const-string v7, "Scary Monsters And Nice Sprites - Skrillex"

    aput-object v7, v0, v1

    const/16 v1, 0x114

    const-string v7, "Miami Swipe - PJ Pooterhoots"

    aput-object v7, v0, v1

    const/16 v1, 0x115

    const-string v7, "B\'Day (Deluxe Edition) - Beyonce"

    aput-object v7, v0, v1

    const/16 v1, 0x116

    const-string v7, "Demian + Bonus Track - L\'Aura"

    aput-object v7, v0, v1

    const/16 v1, 0x117

    const-string v7, "Have You Ever Been Mellow - Party Animals"

    aput-object v7, v0, v1

    const/16 v1, 0x118

    const-string v7, "Love, God & Radio - Opus"

    aput-object v7, v0, v1

    const/16 v1, 0x119

    const-string v7, "Barefoot Blue Jean Night - Jake Owen"

    aput-object v7, v0, v1

    const/16 v1, 0x11a

    const-string v7, "Made4You - Funk & Soda"

    aput-object v7, v0, v1

    const/16 v1, 0x11b

    const-string v7, "Gavin Glass & The Holy Shakers - Gavin Glass"

    aput-object v7, v0, v1

    const/16 v1, 0x11c

    const-string v7, "Lego House (In The Style Of Ed Sheeran) - Ameritz Audio Karaoke"

    aput-object v7, v0, v1

    const/16 v1, 0x11d

    const-string v7, "Spotlight (Originally Performed by Gucci Mane Feat. Usher) - DJ Cover This"

    aput-object v7, v0, v1

    const/16 v1, 0x11e

    const-string v7, "The Eminem Show - Eminem"

    aput-object v7, v0, v1

    const/16 v1, 0x11f

    const-string v7, "13 Mejores Exitos - Chalino Sanchez"

    aput-object v7, v0, v1

    const/16 v1, 0x120

    const-string v7, "Jazz Monster - Shazz Man"

    aput-object v7, v0, v1

    const/16 v1, 0x121

    const-string v7, "Fortune (Deluxe Version) - Chris Brown"

    aput-object v7, v0, v1

    const/16 v1, 0x122

    const-string v13, "Flockaveli - Waka Flocka Flame"

    aput-object v13, v0, v1

    const/16 v1, 0x123

    const-string v13, "Neddi Omri La Holande - Amine Titi"

    aput-object v13, v0, v1

    const/16 v1, 0x124

    const-string v13, "The Very Best Of The Doors (Bonus Tracks) - The Doors"

    aput-object v13, v0, v1

    const/16 v1, 0x125

    const-string v13, "By Dingo - Peter\'s Farm"

    aput-object v13, v0, v1

    const/16 v1, 0x126

    const-string v13, "Drive By - Train"

    aput-object v13, v0, v1

    const/16 v1, 0x127

    const-string v13, "Random Access Memories - Daft Punk"

    aput-object v13, v0, v1

    const/16 v1, 0x128

    const-string v13, "Tu C\u00e1rcel - K-3"

    aput-object v13, v0, v1

    const/16 v1, 0x129

    const-string v13, "Riot! (With Bonus Track) - Paramore"

    aput-object v13, v0, v1

    const/16 v1, 0x12a

    const-string v13, "TM:103 Hustlerz Ambition (Deluxe) - Jeezy"

    aput-object v13, v0, v1

    const/16 v1, 0x12b

    const-string v13, "Port Of Miami - Rick Ross"

    aput-object v13, v0, v1

    const/16 v1, 0x12c

    const-string v13, "En Joan i els dofins - Carme Sol\u00e9 Vendrell"

    aput-object v13, v0, v1

    const/16 v1, 0x12d

    const-string v13, "Can\'t stop - Alain Bax"

    aput-object v13, v0, v1

    const/16 v1, 0x12e

    const-string v13, "Strauss: Complete Chamber Music, Vol. 1 - Music For Piano Quartet - Wolfgang Sawallisch"

    aput-object v13, v0, v1

    const/16 v1, 0x12f

    const-string v13, "The Adventures Of Dura Hale - Dura Hale"

    aput-object v13, v0, v1

    const/16 v1, 0x130

    const-string v13, "Swan Songs (Parental Advisory) - Hollywood Undead"

    aput-object v13, v0, v1

    const/16 v1, 0x131

    const-string v13, "Imagine Me - Personalized Music For Kids: Nayeli - The Personalized Kid Music Band"

    aput-object v13, v0, v1

    const/16 v1, 0x132

    const-string v13, "Late Registration - Kanye West"

    aput-object v13, v0, v1

    const/16 v1, 0x133

    const-string v13, "Pure Heroine - Lorde"

    aput-object v13, v0, v1

    const/16 v1, 0x134

    const-string v13, "Dubois: Piano Trios Nos. 1-2 / Promenade Sentimentale / Cantilene - Trio Hochelaga"

    aput-object v13, v0, v1

    const/16 v1, 0x135

    const-string v13, "The K.I.S.S.THEORY - Will Tell"

    aput-object v13, v0, v1

    const/16 v1, 0x136

    const-string v13, "Kids Collection - Tributo Infantil a Estopa - The Harmony Group y Alfred Tapscott"

    aput-object v13, v0, v1

    const/16 v1, 0x137

    const-string v13, "Trunk Muzik 0-60 (Parental Advisory) - YelaWolf"

    aput-object v13, v0, v1

    const/16 v1, 0x138

    const-string v13, "In Love - Toosmooth~l.O.E"

    aput-object v13, v0, v1

    const/16 v1, 0x139

    const-string v13, "Bryan Edington - Bryan Edington"

    aput-object v13, v0, v1

    const/16 v1, 0x13a

    const-string v13, "Finally Rich (Deluxe Edition) - Chief Keef"

    aput-object v13, v0, v1

    const/16 v1, 0x13b

    const-string v13, "The Idiot - Iggy Pop"

    aput-object v13, v0, v1

    const/16 v1, 0x13c

    const-string v13, "The Slim Shady LP - Eminem"

    aput-object v13, v0, v1

    const/16 v1, 0x13d

    const-string v13, "We Are Young Money - Young Money"

    aput-object v13, v0, v1

    const/16 v1, 0x13e

    aput-object v3, v0, v1

    const/16 v1, 0x13f

    const-string v3, "The Neutrals - The Neutrals"

    aput-object v3, v0, v1

    const/16 v1, 0x140

    const-string v3, "King Of The Blues Guitar - Albert King"

    aput-object v3, v0, v1

    const/16 v1, 0x141

    const-string v3, "The Black Album - JAY Z"

    aput-object v3, v0, v1

    const/16 v1, 0x142

    aput-object v6, v0, v1

    const/16 v1, 0x143

    const-string v3, "All The Right Reasons (Bonus Tracks) - Nickelback"

    aput-object v3, v0, v1

    const/16 v1, 0x144

    const-string v3, "If This Was A Movie - Taylor Swift"

    aput-object v3, v0, v1

    const/16 v1, 0x145

    const-string v3, "What Separates Me From You - A Day To Remember"

    aput-object v3, v0, v1

    const/16 v1, 0x146

    const-string v3, "Who Wants Spaghetti? - Pierce Fulton"

    aput-object v3, v0, v1

    const/16 v1, 0x147

    const-string v3, "Glee: The Music, The Christmas Album Volume 2 - Glee Cast"

    aput-object v3, v0, v1

    const/16 v1, 0x148

    const-string v3, "Saboreando Pasodobles - Pasodobles"

    aput-object v3, v0, v1

    const/16 v1, 0x149

    const-string v3, "Port Of Morrow - The Shins"

    aput-object v3, v0, v1

    const/16 v1, 0x14a

    const-string v3, "Drank In My Cup - Kirko Bangz"

    aput-object v3, v0, v1

    const/16 v1, 0x14b

    const-string v3, "40oz To Freedom (Parental Advisory) - Sublime"

    aput-object v3, v0, v1

    const/16 v1, 0x14c

    const-string v3, "Blunderbuss - Jack White"

    aput-object v3, v0, v1

    const/16 v1, 0x14d

    const-string v3, "Next Level - Bruno Renno"

    aput-object v3, v0, v1

    const/16 v1, 0x14e

    const-string v3, "Armando Hernandez Rey De La Musica Tropical - Armando Hernandez"

    aput-object v3, v0, v1

    const/16 v1, 0x14f

    const-string v3, "Up All Night - Kip Moore"

    aput-object v3, v0, v1

    const/16 v1, 0x150

    const-string v3, "I\'m Back - Glaze Cabana"

    aput-object v3, v0, v1

    const/16 v1, 0x151

    const-string v3, "Deep Nrg 2010 - Remaster"

    aput-object v3, v0, v1

    const/16 v1, 0x152

    const-string v3, "Scream & Shout (feat. Britney Spears) - will.i.am"

    aput-object v3, v0, v1

    const/16 v1, 0x153

    const-string v3, "Cuba: Contradanzas & Danzones - Rotterdam Conservatory Orquesta T\u00edpica"

    aput-object v3, v0, v1

    const/16 v1, 0x154

    const-string v3, "Pink Friday: Roman Reloaded - The Re-Up - Nicki Minaj"

    aput-object v3, v0, v1

    const/16 v1, 0x155

    const-string v3, "The Hits of Selena - Studio Musicians"

    aput-object v3, v0, v1

    const/16 v1, 0x156

    const-string v3, "Music - ILS"

    aput-object v3, v0, v1

    const/16 v1, 0x157

    const-string v3, "Jak tam jest - Seweryn Krajewski"

    aput-object v3, v0, v1

    const/16 v1, 0x158

    const-string v3, "Lullabye Mood - Lullabye Mood"

    aput-object v3, v0, v1

    const/16 v1, 0x159

    const-string v3, "Solid State Recital - Puressence"

    aput-object v3, v0, v1

    const/16 v1, 0x15a

    const-string v3, "Mystery Love - Kevin Bazinet"

    aput-object v3, v0, v1

    const/16 v1, 0x15b

    const-string v3, "Prism (Deluxe Edition) - Katy Perry"

    aput-object v3, v0, v1

    const/16 v1, 0x15c

    const-string v3, "Kanashiki Kuchibue - Single - Hibari Misora"

    aput-object v3, v0, v1

    const/16 v1, 0x15d

    const-string v3, "Relapse: Refill - Eminem"

    aput-object v3, v0, v1

    const/16 v1, 0x15e

    const-string v3, "Red River Blue (Deluxe) - Blake Shelton"

    aput-object v3, v0, v1

    const/16 v1, 0x15f

    const-string v3, "The Truth About Love (Edited) - Pink"

    aput-object v3, v0, v1

    const/16 v1, 0x160

    const-string v3, "Metanoia - Porcupine Tree"

    aput-object v3, v0, v1

    const/16 v1, 0x161

    const-string v3, "Covered In Love EP - The Duke Spirit"

    aput-object v3, v0, v1

    const/16 v1, 0x162

    const-string v3, "The R.E.D. Album - The Game"

    aput-object v3, v0, v1

    const/16 v1, 0x163

    const-string v3, "Here I Stand - Usher"

    aput-object v3, v0, v1

    const/16 v1, 0x164

    const-string v3, "More Monsters And Sprites - Skrillex"

    aput-object v3, v0, v1

    const/16 v1, 0x165

    const-string v3, "F.A.M.E. - Chris Brown"

    aput-object v3, v0, v1

    const/16 v1, 0x166

    const-string v3, "Beat Down - Downstait"

    aput-object v3, v0, v1

    const/16 v1, 0x167

    const-string v3, "F.A.M.E. (Deluxe Version) - Chris Brown"

    aput-object v3, v0, v1

    const/16 v1, 0x168

    const-string v3, "Hands All Over (Deluxe) - Maroon 5"

    aput-object v3, v0, v1

    const/16 v1, 0x169

    const-string v3, "Strauss, R.: Salome - Reiner Goldberg"

    aput-object v3, v0, v1

    const/16 v1, 0x16a

    const-string v3, "Best of Zoroofchi - Yaghob Zoroofchi"

    aput-object v3, v0, v1

    const/16 v1, 0x16b

    const-string v3, "Paganini: 24 Capricci - Salvatore Accardo"

    aput-object v3, v0, v1

    const/16 v1, 0x16c

    const-string v3, "Scream - Usher"

    aput-object v3, v0, v1

    const/16 v1, 0x16d

    const-string v3, "Night Train - Jason Aldean"

    aput-object v3, v0, v1

    const/16 v1, 0x16e

    aput-object v9, v0, v1

    const/16 v1, 0x16f

    const-string v3, "Whistle - Flo Rida"

    aput-object v3, v0, v1

    const/16 v1, 0x170

    const-string v3, "It Will Rain - Bruno Mars"

    aput-object v3, v0, v1

    const/16 v1, 0x171

    const-string v3, "Cantando Por La Paz - Sin Kontrol"

    aput-object v3, v0, v1

    const/16 v1, 0x172

    const-string v3, "Born To Die (Bonus Track Version) - Lana Del Rey"

    aput-object v3, v0, v1

    const/16 v1, 0x173

    const-string v3, "Classical Ringtones - The Ringtones"

    aput-object v3, v0, v1

    const/16 v1, 0x174

    const-string v3, "The Heist - Macklemore & Ryan Lewis"

    aput-object v3, v0, v1

    const/16 v1, 0x175

    const-string v3, "Smoke & Mirrors - Lifehouse"

    aput-object v3, v0, v1

    const/16 v1, 0x176

    const-string v3, "Apiti, vol. 3 - Nicholas"

    aput-object v3, v0, v1

    const/16 v1, 0x177

    const-string v3, "Actuar Para Vivir - Juan Carlos Baglietto"

    aput-object v3, v0, v1

    const/16 v1, 0x178

    const-string v3, "Tonights The Night (Moombahton Remixes) - Tommie Sunshine"

    aput-object v3, v0, v1

    const/16 v1, 0x179

    const-string v3, "Power To The People - Protest Songs - Various Artists"

    aput-object v3, v0, v1

    const/16 v1, 0x17a

    const-string v3, "The Christmas Song - The O\'Neill Brothers"

    aput-object v3, v0, v1

    const/16 v1, 0x17b

    const-string v3, "Undun (Explicit Version) - The Roots"

    aput-object v3, v0, v1

    const/16 v1, 0x17c

    const-string v3, "Brotid - Runi Brattaberg"

    aput-object v3, v0, v1

    const/16 v1, 0x17d

    aput-object v11, v0, v1

    const/16 v1, 0x17e

    const-string v3, "Wide Open - Jason Aldean"

    aput-object v3, v0, v1

    const/16 v1, 0x17f

    const-string v3, "Just Like You - Keyshia Cole"

    aput-object v3, v0, v1

    const/16 v1, 0x180

    const-string v3, "Ruth Etting, Vol. 1 - Ruth Etting"

    aput-object v3, v0, v1

    const/16 v1, 0x181

    const-string v3, "Based on a T.R.U. Story (Deluxe Version) - 2 Chainz"

    aput-object v3, v0, v1

    const/16 v1, 0x182

    const-string v3, "Exclusive: The Forever Edition - Chris Brown"

    aput-object v3, v0, v1

    const/16 v1, 0x183

    const-string v3, "Bangerz (Deluxe Version) - Miley Cyrus"

    aput-object v3, v0, v1

    const/16 v1, 0x184

    const-string v3, "Elephant - The White Stripes"

    aput-object v3, v0, v1

    const/16 v1, 0x185

    const-string v3, "The 20/20 Experience - Justin Timberlake"

    aput-object v3, v0, v1

    const/16 v1, 0x186

    const-string v3, "Trap Lord - A$AP Ferg"

    aput-object v3, v0, v1

    const/16 v1, 0x187

    const-string v3, "The Complete John Peel Sessions (BBC Version) - The House Of Love"

    aput-object v3, v0, v1

    const/16 v1, 0x188

    const-string v3, "Let\'s Dance Band Stand - Don Downs"

    aput-object v3, v0, v1

    const/16 v1, 0x189

    const-string v3, "Smooth Jazz Tropical Paradise - The Wave Runners"

    aput-object v3, v0, v1

    const/16 v1, 0x18a

    const-string v3, "Little Broken Hearts - Norah Jones"

    aput-object v3, v0, v1

    const/16 v1, 0x18b

    const-string v3, "The Melody Stuart Project - Amy Profaci"

    aput-object v3, v0, v1

    const/16 v1, 0x18c

    const-string v3, "No Lie (feat. Drake) - 2 Chainz"

    aput-object v3, v0, v1

    const/16 v1, 0x18d

    const-string v3, "Hell: The Sequel (Deluxe Version) - Bad Meets Evil"

    aput-object v3, v0, v1

    const/16 v1, 0x18e

    const-string v3, "18 Months - Calvin Harris"

    aput-object v3, v0, v1

    const/16 v1, 0x18f

    const-string v3, "Sigh No More - Mumford & Sons"

    aput-object v3, v0, v1

    const/16 v1, 0x190

    const-string v3, "The Head And The Heart - The Head and the Heart"

    aput-object v3, v0, v1

    const/16 v1, 0x191

    const-string v3, "Ciara - Ciara"

    aput-object v3, v0, v1

    const/16 v1, 0x192

    const-string v3, "The Blueprint (Deluxe Edition) - JAY Z"

    aput-object v3, v0, v1

    const/16 v1, 0x193

    const-string v3, "A Different Kind Of Truth - Van Halen"

    aput-object v3, v0, v1

    const/16 v1, 0x194

    const-string v3, "Beethoven, L. van: Piano Sonatas Vol. 1 - Timothy Ehlen"

    aput-object v3, v0, v1

    const/16 v1, 0x195

    const-string v3, "Tha Carter II - Lil Wayne"

    aput-object v3, v0, v1

    const/16 v1, 0x196

    const-string v3, "Tunnels & Pathways - Chad Hatcher"

    aput-object v3, v0, v1

    const/16 v1, 0x197

    const-string v3, "Modern Vampires Of The City - Vampire Weekend"

    aput-object v3, v0, v1

    const/16 v1, 0x198

    const-string v3, "Clarity - Zedd"

    aput-object v3, v0, v1

    const/16 v1, 0x199

    const-string v3, "En \u0130yileriyle Ayla Algan - Ayla Algan"

    aput-object v3, v0, v1

    const/16 v1, 0x19a

    const-string v3, "Blue Slide Park - Mac Miller"

    aput-object v3, v0, v1

    const/16 v1, 0x19b

    const-string v3, "Su Vida Artistica Vol. 1 - Olga Guillot"

    aput-object v3, v0, v1

    const/16 v1, 0x19c

    const-string v3, "Tell Me How - Faarsheed"

    aput-object v3, v0, v1

    const/16 v1, 0x19d

    const-string v3, "F.A.M.E. (Deluxe) - Chris Brown"

    aput-object v3, v0, v1

    const/16 v1, 0x19e

    const-string v3, "Some Hearts - Carrie Underwood"

    aput-object v3, v0, v1

    const/16 v1, 0x19f

    const-string v3, "Changed (Deluxe Edition) - Rascal Flatts"

    aput-object v3, v0, v1

    const/16 v1, 0x1a0

    const-string v3, "El Primero - Jamon del Mar"

    aput-object v3, v0, v1

    const/16 v1, 0x1a1

    const-string v3, "Melod\u00edas del Ayer - Imelda Cadavid"

    aput-object v3, v0, v1

    const/16 v1, 0x1a2

    const-string v3, "En La Orilla - Pamela Rodriguez"

    aput-object v3, v0, v1

    const/16 v1, 0x1a3

    const-string v3, "Stankonia - OutKast"

    aput-object v3, v0, v1

    const/16 v1, 0x1a4

    aput-object v7, v0, v1

    const/16 v1, 0x1a5

    const-string v3, "5 O\'clock - T-Pain"

    aput-object v3, v0, v1

    const/16 v1, 0x1a6

    const-string v3, "Gangnam Style (    \u2b13__  \u06d3 _) - PSY"

    aput-object v3, v0, v1

    const/16 v1, 0x1a7

    aput-object v15, v0, v1

    const/16 v1, 0x1a8

    const-string v3, "Back In Time - Corona"

    aput-object v3, v0, v1

    const/16 v1, 0x1a9

    const-string v3, "For Emma, Forever Ago - Bon Iver"

    aput-object v3, v0, v1

    const/16 v1, 0x1aa

    const-string v3, "Body Bombshell - Citizen Kain"

    aput-object v3, v0, v1

    const/16 v1, 0x1ab

    const-string v3, "Night Visions - Imagine Dragons"

    aput-object v3, v0, v1

    const/16 v1, 0x1ac

    const-string v3, "Suite Collection Vol.18 - Giuseppe Renne"

    aput-object v3, v0, v1

    const/16 v1, 0x1ad

    const-string v3, "Autobiography - The Hit Parade"

    aput-object v3, v0, v1

    const/16 v1, 0x1ae

    const-string v3, "Canzonissima, vol. 2 - High School Music Band"

    aput-object v3, v0, v1

    const/16 v1, 0x1af

    const-string v3, "Tegami - the free style"

    aput-object v3, v0, v1

    const/16 v1, 0x1b0

    const-string v3, "Best Of (Deluxe Edition) - George Strait"

    aput-object v3, v0, v1

    const/16 v1, 0x1b1

    const-string v3, "The Greatest Hits 1970-2002 (Double US CD) - Elton John"

    aput-object v3, v0, v1

    const/16 v1, 0x1b2

    const-string v3, "Chopsocky - Small"

    aput-object v3, v0, v1

    const/16 v1, 0x1b3

    const-string v3, "Project X: Original Motion Picture Soundtrack (Deluxe Edition) - Various Artists"

    aput-object v3, v0, v1

    const/16 v1, 0x1b4

    const-string v3, "Hi Power 2005 - Hi Power Soldiers"

    aput-object v3, v0, v1

    const/16 v1, 0x1b5

    const-string v3, "Lord Arthur - Lord Arthur & Marko Matematiko"

    aput-object v3, v0, v1

    const/16 v1, 0x1b6

    const-string v3, "Quiero Amar A Otra - Indio"

    aput-object v3, v0, v1

    const/16 v1, 0x1b7

    const-string v3, "Karaoke (with Competition Edits) - I Must Be a Star - Musical Creations Studio Musicians (Karaoke)"

    aput-object v3, v0, v1

    const/16 v1, 0x1b8

    const-string v3, "80\'s Star - Laera"

    aput-object v3, v0, v1

    const/16 v1, 0x1b9

    const-string v3, "Seine Grossten Erfolge, Vol. 9 - Peter Alexander"

    aput-object v3, v0, v1

    const/16 v1, 0x1ba

    const-string v3, "Do it 2 nite - Rockefeller"

    aput-object v3, v0, v1

    const/16 v1, 0x1bb

    const-string v3, "Nostalfi - NarkoSky"

    aput-object v3, v0, v1

    const/16 v1, 0x1bc

    const-string v3, "DINOZAUR\u00d6W SWIAT WITA CIE - Dinozaury"

    aput-object v3, v0, v1

    const/16 v1, 0x1bd

    const-string v3, "Save Rock And Roll - Fall Out Boy"

    aput-object v3, v0, v1

    const/16 v1, 0x1be

    const-string v3, "Nosferatu (O.S.T.) - Popol Vuh"

    aput-object v3, v0, v1

    const/16 v1, 0x1bf

    const-string v3, "S\u00f3lo Az\u00facar - Azucar Moreno"

    aput-object v3, v0, v1

    const/16 v1, 0x1c0

    const-string v3, "Platinum & Gold Collection - Tito Puente"

    aput-object v3, v0, v1

    const/16 v1, 0x1c1

    const-string v3, "#1 Girl - Mindless Behavior"

    aput-object v3, v0, v1

    const/16 v1, 0x1c2

    const-string v3, "Soft and Easy, Vol. 1 - The Syd Dale Combo"

    aput-object v3, v0, v1

    const/16 v1, 0x1c3

    aput-object v4, v0, v1

    const/16 v1, 0x1c4

    const-string v3, "The Marshall Mathers LP 2 (Deluxe) - Eminem"

    aput-object v3, v0, v1

    const/16 v1, 0x1c5

    const-string v3, "King - T.I."

    aput-object v3, v0, v1

    const/16 v1, 0x1c6

    const-string v3, "I Owe You Nothing - EP - S.O.S."

    aput-object v3, v0, v1

    const/16 v1, 0x1c7

    const-string v3, "Ready To Die (Remastered) - The Notorious B.I.G."

    aput-object v3, v0, v1

    const/16 v1, 0x1c8

    const-string v3, "All The Little Lights - Passenger"

    aput-object v3, v0, v1

    const/16 v1, 0x1c9

    const-string v3, "9 West, Incl Markus Lange Remix - 9 West"

    aput-object v3, v0, v1

    const/16 v1, 0x1ca

    const-string v3, "Mercy - Kanye West"

    aput-object v3, v0, v1

    const/16 v1, 0x1cb

    const-string v3, "Year Of The Monkey - Tommy Guerrero"

    aput-object v3, v0, v1

    const/16 v1, 0x1cc

    const-string v3, "rEVOLVEr (Deluxe Version) (Parental Advisory) - T-Pain"

    aput-object v3, v0, v1

    const/16 v1, 0x1cd

    const-string v3, "S\u00fcdlich von mir - Roland Kaiser"

    aput-object v3, v0, v1

    const/16 v1, 0x1ce

    const-string v3, "Lights - Ellie Goulding"

    aput-object v3, v0, v1

    const/16 v1, 0x1cf

    const-string v3, "Doggin\' It - [The Dave Cash Collection] - Earl King"

    aput-object v3, v0, v1

    const/16 v1, 0x1d0

    const-string v3, "Glad You Came - The Wanted"

    aput-object v3, v0, v1

    const/16 v1, 0x1d1

    const-string v3, "8701 - Usher"

    aput-object v3, v0, v1

    const/16 v1, 0x1d2

    const-string v3, "Automatic EP - AIRBUS MODULAR"

    aput-object v3, v0, v1

    const/16 v1, 0x1d3

    const-string v3, "Amplificarse - Valerio Rinaldi"

    aput-object v3, v0, v1

    const/16 v1, 0x1d4

    const-string v3, "Aitara - V\u00e4rttin\u00e4"

    aput-object v3, v0, v1

    const/16 v1, 0x1d5

    const-string v3, "Dancing In The Street (Performed live on The Ed Sullivan Show/1965) - Martha & The Vandellas"

    aput-object v3, v0, v1

    const/16 v1, 0x1d6

    const-string v3, "Da Capo - Ace of Base"

    aput-object v3, v0, v1

    const/16 v1, 0x1d7

    const-string v3, "Present The Rooftop - Jim Jones & Webstar"

    aput-object v3, v0, v1

    const/16 v1, 0x1d8

    const-string v3, "Itself - Fishtank [No. 9]"

    aput-object v3, v0, v1

    const/16 v1, 0x1d9

    aput-object v16, v0, v1

    const/16 v1, 0x1da

    const-string v3, "Aim And Ignite [Deluxe Version] - fun."

    aput-object v3, v0, v1

    const/16 v1, 0x1db

    const-string v3, "Wanderers Forever - American Werewolves"

    aput-object v3, v0, v1

    const/16 v1, 0x1dc

    aput-object v12, v0, v1

    const/16 v1, 0x1dd

    const-string v3, "Heartbeat - Single (Lounge Version) - Fly 2 Project"

    aput-object v3, v0, v1

    const/16 v1, 0x1de

    const-string v3, "The MF Life (Deluxe Version) - Melanie Fiona"

    aput-object v3, v0, v1

    const/16 v1, 0x1df

    const-string v3, "Kyss The Girl - Kyss Major"

    aput-object v3, v0, v1

    const/16 v1, 0x1e0

    const-string v3, "Foerster: Violin Concertos - Ivan Zenaty"

    aput-object v3, v0, v1

    const/16 v1, 0x1e1

    const-string v3, "Dangerously In Love - Beyonce"

    aput-object v3, v0, v1

    const/16 v1, 0x1e2

    const-string v3, "Bible Songs For Kids - Volume 2 - St. John Children\'s Choir"

    aput-object v3, v0, v1

    const/16 v1, 0x1e3

    const-string v3, "Sardaxou 6 - Cobla Contempor\u00e0nia"

    aput-object v3, v0, v1

    const/16 v1, 0x1e4

    const-string v3, "Potion - Down Low"

    aput-object v3, v0, v1

    const/16 v1, 0x1e5

    const-string v3, "Si Me Estas Escuchando - Nocivo"

    aput-object v3, v0, v1

    const/16 v1, 0x1e6

    const-string v3, "Good Feeling - Flo Rida"

    aput-object v3, v0, v1

    const/16 v1, 0x1e7

    const-string v3, "Countach: The Remixes - The Cassettes"

    aput-object v3, v0, v1

    const/16 v1, 0x1e8

    const-string v3, "Hurry Up We\'re Dreaming - M83"

    aput-object v3, v0, v1

    const/16 v1, 0x1e9

    const-string v3, "G-Spot - Gerald Levert"

    aput-object v3, v0, v1

    const/16 v1, 0x1ea

    const-string v3, "My Kinda Party - Jason Aldean"

    aput-object v3, v0, v1

    const/16 v1, 0x1eb

    const-string v3, "The Massacre (Deluxe Edition) - 50 Cent"

    aput-object v3, v0, v1

    const/16 v1, 0x1ec

    const-string v3, "Houari Manar - Houari Manar"

    aput-object v3, v0, v1

    const/16 v1, 0x1ed

    const-string v3, "Nature\u2019s Songs (Nature Sounds) - Nature Sound Collection"

    aput-object v3, v0, v1

    const/16 v1, 0x1ee

    const-string v3, "Fearless: Platinum Edition - Taylor Swift"

    aput-object v3, v0, v1

    const/16 v1, 0x1ef

    const-string v3, "Ceremonials (Deluxe Edition) - Florence & The Machine"

    aput-object v3, v0, v1

    const/16 v1, 0x1f0

    const-string v3, "Denuwan - Iraj"

    aput-object v3, v0, v1

    const/16 v1, 0x1f1

    const-string v3, "Bad (Feat. Tiara Thomas) - Wale"

    aput-object v3, v0, v1

    const/16 v1, 0x1f2

    const-string v3, "Real Emotional - Curtis Stigers"

    aput-object v3, v0, v1

    const/16 v1, 0x1f3

    const-string v3, "Urban Legend - T.I."

    aput-object v3, v0, v1

    const/16 v1, 0x1f4

    const-string v3, "Sahara (Music from and Inspired by the Motion Picture) - Various Artists"

    aput-object v3, v0, v1

    const/16 v1, 0x1f5

    const-string v3, "Tribute to the Blues - Mietek Blues Band"

    aput-object v3, v0, v1

    const/16 v1, 0x1f6

    const-string v3, "Traditional Folk Ballads From Ireland - Tara"

    aput-object v3, v0, v1

    const/16 v1, 0x1f7

    aput-object v5, v0, v1

    const/16 v1, 0x1f8

    const-string v3, "Stars Dance - Selena Gomez"

    aput-object v3, v0, v1

    const/16 v1, 0x1f9

    const-string v3, "Camp Rock 2: The Final Jam - Cast of Camp Rock 2"

    aput-object v3, v0, v1

    const/16 v1, 0x1fa

    const-string v3, "Haciendo Historia - Banda El Recodo De Cruz Liz rraga"

    aput-object v3, v0, v1

    const/16 v1, 0x1fb

    const-string v3, "The Promise - Bruce Springsteen"

    aput-object v3, v0, v1

    const/16 v1, 0x1fc

    const-string v3, "Magna Carta... Holy Grail - JAY Z"

    aput-object v3, v0, v1

    const/16 v1, 0x1fd

    const-string v3, "Derivatives - William Fitzsimmons"

    aput-object v3, v0, v1

    const/16 v1, 0x1fe

    const-string v3, "September EP - St. Lucia"

    aput-object v3, v0, v1

    const/16 v1, 0x1ff

    const-string v3, "Who The F*** Are Arctic Monkeys? - Arctic Monkeys"

    aput-object v3, v0, v1

    const/16 v1, 0x200

    const-string v3, "Oblivion Hymns - Hammock"

    aput-object v3, v0, v1

    const/16 v1, 0x201

    const-string v3, "Write Your Story - Francesca Battistelli"

    aput-object v3, v0, v1

    const/16 v1, 0x202

    const-string v3, "Breathe - Faith Hill"

    aput-object v3, v0, v1

    const/16 v1, 0x203

    const-string v3, "I See It Now - Tracy Lawrence"

    aput-object v3, v0, v1

    const/16 v1, 0x204

    const-string v3, "Frick Park Market - Single - Mac Miller"

    aput-object v3, v0, v1

    const/16 v1, 0x205

    const-string v3, "Me And My Uke - Never Shout Never"

    aput-object v3, v0, v1

    const/16 v1, 0x206

    const-string v3, "My Nigga - YG"

    aput-object v3, v0, v1

    const/16 v1, 0x207

    const-string v3, "Sex You - Bando Jonez"

    aput-object v3, v0, v1

    const/16 v1, 0x208

    const-string v3, "Peter Rosenberg x Ecko Present: The New York Renaissance - Various Artists"

    aput-object v3, v0, v1

    const/16 v1, 0x209

    const-string v3, "All You Can Eat - Steel Panther"

    aput-object v3, v0, v1

    const/16 v1, 0x20a

    const-string v3, "Greatest Hits - Sixpence None The Richer"

    aput-object v3, v0, v1

    const/16 v1, 0x20b

    const-string v3, "Violator [digital version] - Depeche Mode"

    aput-object v3, v0, v1

    const/16 v1, 0x20c

    const-string v3, "Clubhouse Vol. 2 - Various Artists"

    aput-object v3, v0, v1

    const/16 v1, 0x20d

    const-string v3, "Fantasy EP (Remix) - MS MR"

    aput-object v3, v0, v1

    const/16 v1, 0x20e

    const-string v3, "Enamorada de Ti - Selena"

    aput-object v3, v0, v1

    const/16 v1, 0x20f

    const-string v3, "The Road To Here - Little Big Town"

    aput-object v3, v0, v1

    const/16 v1, 0x210

    const-string v3, "Love Songs - Destiny\'s Child"

    aput-object v3, v0, v1

    const/16 v1, 0x211

    const-string v3, "Diamond Rio - Diamond Rio"

    aput-object v3, v0, v1

    const/16 v1, 0x212

    const-string v3, "The Well Pennies [EP] - The Well Pennies"

    aput-object v3, v0, v1

    const/16 v1, 0x213

    const-string v3, "Selfish Machines (Reissue) - Pierce The Veil"

    aput-object v3, v0, v1

    const/16 v1, 0x214

    aput-object v10, v0, v1

    const/16 v1, 0x215

    const-string v3, "The Blue Print - JAY-Z"

    aput-object v3, v0, v1

    const/16 v1, 0x216

    const-string v3, "Flume - Flume"

    aput-object v3, v0, v1

    const/16 v1, 0x217

    const-string v3, "Classical Chillout - Various Artists"

    aput-object v3, v0, v1

    const/16 v1, 0x218

    const-string v3, "Live In London - Birdy"

    aput-object v3, v0, v1

    const/16 v1, 0x219

    const-string v3, "Looking Glass - Looking Glass"

    aput-object v3, v0, v1

    const/16 v1, 0x21a

    const-string v3, "Double Take - Shawn McDonald - Shawn McDonald"

    aput-object v3, v0, v1

    const/16 v1, 0x21b

    const-string v3, "Home - Phillip Phillips"

    aput-object v3, v0, v1

    const/16 v1, 0x21c

    const-string v3, "B\'Day Deluxe Edition - Beyonce"

    aput-object v3, v0, v1

    const/16 v1, 0x21d

    const-string v3, "Brother Bear - Phil Collins"

    aput-object v3, v0, v1

    const/16 v1, 0x21e

    const-string v3, "Almeria - Lifehouse"

    aput-object v3, v0, v1

    const/16 v1, 0x21f

    const-string v3, "The Complete Box - The Replacements"

    aput-object v3, v0, v1

    const/16 v1, 0x220

    const-string v3, "Nation Of Heat Ep - Joe Pug"

    aput-object v3, v0, v1

    const/16 v1, 0x221

    const-string v3, "The Essential Bill Withers - Bill Withers"

    aput-object v3, v0, v1

    const/16 v1, 0x222

    const-string v3, "Drop That #NaeNae - Single - We Are Toonz"

    aput-object v3, v0, v1

    const/16 v1, 0x223

    const-string v3, "A State Of Trance Episode 656 (A State Of Trance 2014 Special) - Armin van Buuren"

    aput-object v3, v0, v1

    const/16 v1, 0x224

    const-string v3, "In My Veins - Andrew Belle"

    aput-object v3, v0, v1

    const/16 v1, 0x225

    aput-object v2, v0, v1

    const/16 v1, 0x226

    const-string v2, "Hippie Flipp - Hippie Flipp"

    aput-object v2, v0, v1

    const/16 v1, 0x227

    const-string v2, "Light Up Gold - Parquet Courts"

    aput-object v2, v0, v1

    const/16 v1, 0x228

    const-string v2, "Silent Treatment - Highasakite"

    aput-object v2, v0, v1

    const/16 v1, 0x229

    const-string v2, "Don\'t Wanna Dance - M"

    aput-object v2, v0, v1

    const/16 v1, 0x22a

    const-string v2, "Anchor - Mindy Gledhill"

    aput-object v2, v0, v1

    const/16 v1, 0x22b

    const-string v2, "Realmente Lo Mejor - Julieta Venegas"

    aput-object v2, v0, v1

    const/16 v1, 0x22c

    const-string v2, "Greatest Hits - Nas"

    aput-object v2, v0, v1

    const/16 v1, 0x22d

    const-string v2, "The Fray - The Fray"

    aput-object v2, v0, v1

    const/16 v1, 0x22e

    const-string v2, "Monstercat - Best of 2012 - Various Artists"

    aput-object v2, v0, v1

    const/16 v1, 0x22f

    const-string v2, "Get Up (Rattle) - Bingo Players"

    aput-object v2, v0, v1

    const/16 v1, 0x230

    const-string v2, "Indigoism - The Underachievers"

    aput-object v2, v0, v1

    const/16 v1, 0x231

    const-string v2, "SoundWaves EP - Tribal Seeds"

    aput-object v2, v0, v1

    const/16 v1, 0x232

    const-string v2, "All Bad - Justin Bieber"

    aput-object v2, v0, v1

    const/16 v1, 0x233

    const-string v2, "The Best of Rascal Flatts LIVE - Rascal Flatts"

    aput-object v2, v0, v1

    const/16 v1, 0x234

    const-string v2, "Ed Sheeran - Spotify Session - Ed Sheeran"

    aput-object v2, v0, v1

    const/16 v1, 0x235

    const-string v2, "Lanterns - Son Lux"

    aput-object v2, v0, v1

    const/16 v1, 0x236

    const-string v2, "La Roux - La Roux"

    aput-object v2, v0, v1

    const/16 v1, 0x237

    const-string v2, "Call of Duty: Modern Warfare 2 - Hans Zimmer"

    aput-object v2, v0, v1

    const/16 v1, 0x238

    const-string v2, "Grandes  xitos Remezclados Y Remasterizados - Los Angeles Azules"

    aput-object v2, v0, v1

    const/16 v1, 0x239

    aput-object v8, v0, v1

    const/16 v1, 0x23a

    const-string v2, "Clumsy - Our Lady Peace"

    aput-object v2, v0, v1

    const/16 v1, 0x23b

    const-string v2, "Rhino Hi-Five: Metal - Various Artists"

    aput-object v2, v0, v1

    const/16 v1, 0x23c

    const-string v2, "Beacon - Two Door Cinema Club"

    aput-object v2, v0, v1

    const/16 v1, 0x23d

    const-string v2, "Awake - Skillet"

    aput-object v2, v0, v1

    const/16 v1, 0x23e

    const-string v2, "Young & Sick - Young & Sick"

    aput-object v2, v0, v1

    const/16 v1, 0x23f

    const-string v2, "Little Games - The Colourist"

    aput-object v2, v0, v1

    const/16 v1, 0x240

    const-string v2, "A Real Hero EP - College"

    aput-object v2, v0, v1

    const/16 v1, 0x241

    const-string v2, "Cavalier Youth - You Me At Six"

    aput-object v2, v0, v1

    const/16 v1, 0x242

    const-string v2, "Slow Me Down - Sara Evans"

    aput-object v2, v0, v1

    const/16 v1, 0x243

    const-string v2, "Rude - Magic!"

    aput-object v2, v0, v1

    const/16 v1, 0x244

    const-string v2, "Introducing The City Harmonic - The City Harmonic"

    aput-object v2, v0, v1

    const/16 v1, 0x245

    const-string v2, "Soy Mexicano - Los Huracanes Del Norte"

    aput-object v2, v0, v1

    const/16 v1, 0x246

    const-string v2, "MDNA - Madonna"

    aput-object v2, v0, v1

    const/16 v1, 0x247

    const-string v2, "Comeback Cadillac - The Weeks"

    aput-object v2, v0, v1

    const/16 v1, 0x248

    const-string v2, "Glow - Royal Teeth"

    aput-object v2, v0, v1

    const/16 v1, 0x249

    const-string v2, "Seven\'s Travels - Atmosphere"

    aput-object v2, v0, v1

    const/16 v1, 0x24a

    const-string v2, "Ai Se Eu Te Pego - Michel Tel"

    aput-object v2, v0, v1

    const/16 v1, 0x24b

    const-string v2, "Walk The Line - Original Motion Picture Soundtrack - Original Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x24c

    const-string v2, "Covered N Money - Future"

    aput-object v2, v0, v1

    const/16 v1, 0x24d

    const-string v2, "Unplugged - Alicia Keys"

    aput-object v2, v0, v1

    const/16 v1, 0x24e

    const-string v2, "Song Review: A Greatest Hits Collection - Stevie Wonder"

    aput-object v2, v0, v1

    const/16 v1, 0x24f

    const-string v2, "Jars Of Clay - Jars Of Clay"

    aput-object v2, v0, v1

    const/16 v1, 0x250

    const-string v2, "Chill Music, Romantic Dinner Party, Cool Instrumental Songs, Chill Songs, Dinner Guitar, Acoustic Background Guitar, Cool Music - Relaxing Instrumental Jazz Ensemble"

    aput-object v2, v0, v1

    const/16 v1, 0x251

    const-string v2, "Dear Miss Lonelyhearts - Cold War Kids"

    aput-object v2, v0, v1

    const/16 v1, 0x252

    const-string v2, "Hands All Over - Maroon 5"

    aput-object v2, v0, v1

    const/16 v1, 0x253

    const-string v2, "Rome - Danger Mouse"

    aput-object v2, v0, v1

    const/16 v1, 0x254

    const-string v2, "Wonders Of The World - Long Beach Dub Allstars"

    aput-object v2, v0, v1

    const/16 v1, 0x255

    const-string v2, "Duran Duran [The Wedding Album] - Duran Duran"

    aput-object v2, v0, v1

    const/16 v1, 0x256

    const-string v2, "I Wish You Would - DJ Khaled"

    aput-object v2, v0, v1

    const/16 v1, 0x257

    const-string v2, "So Jealous - Tegan And Sara"

    aput-object v2, v0, v1

    const/16 v1, 0x258

    const-string v2, "Day & Age - The Killers"

    aput-object v2, v0, v1

    const/16 v1, 0x259

    const-string v2, "Reloaded 1 - Jawga Boyz"

    aput-object v2, v0, v1

    const/16 v1, 0x25a

    const-string v2, "Causers Of This - Toro Y Moi"

    aput-object v2, v0, v1

    const/16 v1, 0x25b

    const-string v2, "Uprising - Bob Marley & The Wailers"

    aput-object v2, v0, v1

    const/16 v1, 0x25c

    const-string v2, "Lotus (Deluxe Version) - Christina Aguilera"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/projection/protocol/RadioStub;->mRadioTextTable:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 44

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/projection/protocol/Radio;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/Random;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/google/android/projection/protocol/RadioStub;->mRandom:Ljava/util/Random;

    .line 12
    .line 13
    new-instance v1, Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v1, v0, Lcom/google/android/projection/protocol/RadioStub;->mProgramLists:Landroid/util/SparseArray;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/Object;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, v0, Lcom/google/android/projection/protocol/RadioStub;->mRadioStateLock:Ljava/lang/Object;

    .line 26
    .line 27
    new-instance v8, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    new-instance v1, Lcom/google/android/projection/protocol/Radio$StationPresetList;

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    const/4 v9, 0x1

    .line 37
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    new-array v4, v9, [Ljava/lang/Integer;

    .line 42
    .line 43
    const/4 v10, 0x0

    .line 44
    aput-object v3, v4, v10

    .line 45
    .line 46
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 51
    .line 52
    .line 53
    new-instance v4, Ljava/util/ArrayList;

    .line 54
    .line 55
    const/4 v5, 0x6

    .line 56
    new-array v6, v5, [Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 57
    .line 58
    new-instance v7, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 59
    .line 60
    const v11, 0x55422c0

    .line 61
    .line 62
    .line 63
    invoke-direct {v7, v9, v11, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 64
    .line 65
    .line 66
    aput-object v7, v6, v10

    .line 67
    .line 68
    new-instance v7, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 69
    .line 70
    const v12, 0x55ed120

    .line 71
    .line 72
    .line 73
    invoke-direct {v7, v9, v12, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 74
    .line 75
    .line 76
    aput-object v7, v6, v9

    .line 77
    .line 78
    new-instance v7, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 79
    .line 80
    const v13, 0x59d60c0

    .line 81
    .line 82
    .line 83
    invoke-direct {v7, v9, v13, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 84
    .line 85
    .line 86
    const/4 v13, 0x2

    .line 87
    aput-object v7, v6, v13

    .line 88
    .line 89
    new-instance v7, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 90
    .line 91
    const v14, 0x5c50d00

    .line 92
    .line 93
    .line 94
    invoke-direct {v7, v9, v14, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 95
    .line 96
    .line 97
    const/4 v14, 0x3

    .line 98
    aput-object v7, v6, v14

    .line 99
    .line 100
    new-instance v7, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 101
    .line 102
    const v15, 0x5e20ae0

    .line 103
    .line 104
    .line 105
    invoke-direct {v7, v9, v15, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 106
    .line 107
    .line 108
    const/16 v16, 0x4

    .line 109
    .line 110
    aput-object v7, v6, v16

    .line 111
    .line 112
    new-instance v7, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 113
    .line 114
    const v12, 0x5f45a60

    .line 115
    .line 116
    .line 117
    invoke-direct {v7, v9, v12, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 118
    .line 119
    .line 120
    const/4 v12, 0x5

    .line 121
    aput-object v7, v6, v12

    .line 122
    .line 123
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    .line 129
    .line 130
    const-string v6, "FM1"

    .line 131
    .line 132
    invoke-direct {v1, v6, v2, v4}, Lcom/google/android/projection/protocol/Radio$StationPresetList;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    new-instance v1, Lcom/google/android/projection/protocol/Radio$StationPresetList;

    .line 139
    .line 140
    new-instance v2, Ljava/util/ArrayList;

    .line 141
    .line 142
    new-array v4, v9, [Ljava/lang/Integer;

    .line 143
    .line 144
    aput-object v3, v4, v10

    .line 145
    .line 146
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    .line 152
    .line 153
    new-instance v4, Ljava/util/ArrayList;

    .line 154
    .line 155
    new-array v6, v5, [Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 156
    .line 157
    new-instance v7, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 158
    .line 159
    invoke-direct {v7, v9, v11, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 160
    .line 161
    .line 162
    aput-object v7, v6, v10

    .line 163
    .line 164
    new-instance v7, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 165
    .line 166
    const v11, 0x58c97e0

    .line 167
    .line 168
    .line 169
    invoke-direct {v7, v9, v11, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 170
    .line 171
    .line 172
    aput-object v7, v6, v9

    .line 173
    .line 174
    new-instance v7, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 175
    .line 176
    const v11, 0x635f740

    .line 177
    .line 178
    .line 179
    invoke-direct {v7, v9, v11, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 180
    .line 181
    .line 182
    aput-object v7, v6, v13

    .line 183
    .line 184
    new-instance v7, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 185
    .line 186
    const v11, 0x5974640

    .line 187
    .line 188
    .line 189
    invoke-direct {v7, v9, v11, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 190
    .line 191
    .line 192
    aput-object v7, v6, v14

    .line 193
    .line 194
    new-instance v7, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 195
    .line 196
    invoke-direct {v7, v9, v15, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 197
    .line 198
    .line 199
    aput-object v7, v6, v16

    .line 200
    .line 201
    new-instance v7, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 202
    .line 203
    const v15, 0x5511580

    .line 204
    .line 205
    .line 206
    invoke-direct {v7, v9, v15, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 207
    .line 208
    .line 209
    aput-object v7, v6, v12

    .line 210
    .line 211
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 216
    .line 217
    .line 218
    const-string v6, "FM2"

    .line 219
    .line 220
    invoke-direct {v1, v6, v2, v4}, Lcom/google/android/projection/protocol/Radio$StationPresetList;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    new-instance v1, Lcom/google/android/projection/protocol/Radio$StationPresetList;

    .line 227
    .line 228
    new-instance v2, Ljava/util/ArrayList;

    .line 229
    .line 230
    new-array v4, v9, [Ljava/lang/Integer;

    .line 231
    .line 232
    aput-object v3, v4, v10

    .line 233
    .line 234
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 239
    .line 240
    .line 241
    new-instance v3, Ljava/util/ArrayList;

    .line 242
    .line 243
    new-array v4, v5, [Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 244
    .line 245
    new-instance v6, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 246
    .line 247
    const v7, 0x64846c0

    .line 248
    .line 249
    .line 250
    invoke-direct {v6, v9, v7, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 251
    .line 252
    .line 253
    aput-object v6, v4, v10

    .line 254
    .line 255
    new-instance v6, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 256
    .line 257
    const v7, 0x55ed120

    .line 258
    .line 259
    .line 260
    invoke-direct {v6, v9, v7, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 261
    .line 262
    .line 263
    aput-object v6, v4, v9

    .line 264
    .line 265
    new-instance v6, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 266
    .line 267
    const v7, 0x56057c0

    .line 268
    .line 269
    .line 270
    invoke-direct {v6, v9, v7, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 271
    .line 272
    .line 273
    aput-object v6, v4, v13

    .line 274
    .line 275
    new-instance v6, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 276
    .line 277
    invoke-direct {v6, v9, v11, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 278
    .line 279
    .line 280
    aput-object v6, v4, v14

    .line 281
    .line 282
    new-instance v6, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 283
    .line 284
    const v7, 0x567f8e0

    .line 285
    .line 286
    .line 287
    invoke-direct {v6, v9, v7, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 288
    .line 289
    .line 290
    aput-object v6, v4, v16

    .line 291
    .line 292
    new-instance v6, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 293
    .line 294
    const v7, 0x612dee0

    .line 295
    .line 296
    .line 297
    invoke-direct {v6, v9, v7, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 298
    .line 299
    .line 300
    aput-object v6, v4, v12

    .line 301
    .line 302
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 303
    .line 304
    .line 305
    move-result-object v4

    .line 306
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 307
    .line 308
    .line 309
    const-string v4, "FM3"

    .line 310
    .line 311
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/projection/protocol/Radio$StationPresetList;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    new-instance v1, Lcom/google/android/projection/protocol/Radio$StationPresetList;

    .line 318
    .line 319
    new-instance v2, Ljava/util/ArrayList;

    .line 320
    .line 321
    new-array v3, v9, [Ljava/lang/Integer;

    .line 322
    .line 323
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 324
    .line 325
    .line 326
    move-result-object v4

    .line 327
    aput-object v4, v3, v10

    .line 328
    .line 329
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 334
    .line 335
    .line 336
    new-instance v3, Ljava/util/ArrayList;

    .line 337
    .line 338
    new-array v4, v5, [Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 339
    .line 340
    new-instance v5, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 341
    .line 342
    const v6, 0x67c280

    .line 343
    .line 344
    .line 345
    invoke-direct {v5, v10, v6, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 346
    .line 347
    .line 348
    aput-object v5, v4, v10

    .line 349
    .line 350
    new-instance v5, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 351
    .line 352
    const v6, 0x788b60

    .line 353
    .line 354
    .line 355
    invoke-direct {v5, v10, v6, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 356
    .line 357
    .line 358
    aput-object v5, v4, v9

    .line 359
    .line 360
    new-instance v5, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 361
    .line 362
    const v6, 0x7b98a0

    .line 363
    .line 364
    .line 365
    invoke-direct {v5, v10, v6, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 366
    .line 367
    .line 368
    aput-object v5, v4, v13

    .line 369
    .line 370
    new-instance v5, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 371
    .line 372
    const v6, 0x958940

    .line 373
    .line 374
    .line 375
    invoke-direct {v5, v10, v6, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 376
    .line 377
    .line 378
    aput-object v5, v4, v14

    .line 379
    .line 380
    new-instance v5, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 381
    .line 382
    const v6, 0xa4cb80

    .line 383
    .line 384
    .line 385
    invoke-direct {v5, v10, v6, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 386
    .line 387
    .line 388
    aput-object v5, v4, v16

    .line 389
    .line 390
    new-instance v5, Lcom/google/android/projection/protocol/Radio$StationPreset;

    .line 391
    .line 392
    const v6, 0x111700

    .line 393
    .line 394
    .line 395
    invoke-direct {v5, v10, v6, v10}, Lcom/google/android/projection/protocol/Radio$StationPreset;-><init>(III)V

    .line 396
    .line 397
    .line 398
    aput-object v5, v4, v12

    .line 399
    .line 400
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 401
    .line 402
    .line 403
    move-result-object v4

    .line 404
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 405
    .line 406
    .line 407
    const-string v4, "AM1"

    .line 408
    .line 409
    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/projection/protocol/Radio$StationPresetList;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    new-instance v1, Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 416
    .line 417
    const/4 v3, 0x1

    .line 418
    const/4 v4, 0x0

    .line 419
    const/4 v5, 0x2

    .line 420
    new-instance v6, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 421
    .line 422
    const v2, 0x5b44420

    .line 423
    .line 424
    .line 425
    invoke-direct/range {p0 .. p0}, Lcom/google/android/projection/protocol/RadioStub;->generateMetaData()Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    invoke-direct {v6, v9, v2, v10, v7}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;-><init>(IIILcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;)V

    .line 430
    .line 431
    .line 432
    new-instance v7, Ljava/util/ArrayList;

    .line 433
    .line 434
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 435
    .line 436
    .line 437
    move-object v2, v1

    .line 438
    invoke-direct/range {v2 .. v8}, Lcom/google/android/projection/protocol/Radio$RadioState;-><init>(ZZILcom/google/android/projection/protocol/Radio$RadioStationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 439
    .line 440
    .line 441
    iput-object v1, v0, Lcom/google/android/projection/protocol/RadioStub;->mRadioState:Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 442
    .line 443
    new-array v1, v13, [Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 444
    .line 445
    new-instance v2, Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 446
    .line 447
    const/4 v15, 0x1

    .line 448
    const/16 v16, 0x0

    .line 449
    .line 450
    new-array v3, v9, [Lcom/google/android/projection/protocol/Radio$Range;

    .line 451
    .line 452
    new-instance v4, Lcom/google/android/projection/protocol/Radio$Range;

    .line 453
    .line 454
    const v5, 0x8d9a0

    .line 455
    .line 456
    .line 457
    const v6, 0x10c8e0

    .line 458
    .line 459
    .line 460
    invoke-direct {v4, v5, v6}, Lcom/google/android/projection/protocol/Radio$Range;-><init>(II)V

    .line 461
    .line 462
    .line 463
    aput-object v4, v3, v10

    .line 464
    .line 465
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 466
    .line 467
    .line 468
    move-result-object v17

    .line 469
    new-array v3, v9, [Ljava/lang/Integer;

    .line 470
    .line 471
    const/16 v4, 0x2710

    .line 472
    .line 473
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 474
    .line 475
    .line 476
    move-result-object v4

    .line 477
    aput-object v4, v3, v10

    .line 478
    .line 479
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 480
    .line 481
    .line 482
    move-result-object v18

    .line 483
    const/16 v19, 0x2710

    .line 484
    .line 485
    const/16 v20, 0x1

    .line 486
    .line 487
    const/16 v21, 0x1

    .line 488
    .line 489
    const/16 v22, 0x0

    .line 490
    .line 491
    const/16 v23, 0x0

    .line 492
    .line 493
    const/16 v24, 0x0

    .line 494
    .line 495
    const/16 v25, 0x0

    .line 496
    .line 497
    const/16 v26, 0x0

    .line 498
    .line 499
    const/16 v27, 0x0

    .line 500
    .line 501
    const/16 v28, 0x0

    .line 502
    .line 503
    move-object v14, v2

    .line 504
    invoke-direct/range {v14 .. v28}, Lcom/google/android/projection/protocol/Radio$RadioProperties;-><init>(IILjava/util/List;Ljava/util/List;IZIIZZIZZI)V

    .line 505
    .line 506
    .line 507
    aput-object v2, v1, v10

    .line 508
    .line 509
    new-instance v2, Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 510
    .line 511
    const/16 v30, 0x2

    .line 512
    .line 513
    const/16 v31, 0x1

    .line 514
    .line 515
    new-array v3, v9, [Lcom/google/android/projection/protocol/Radio$Range;

    .line 516
    .line 517
    new-instance v4, Lcom/google/android/projection/protocol/Radio$Range;

    .line 518
    .line 519
    const v5, 0x53ec600

    .line 520
    .line 521
    .line 522
    const v6, 0x66ff300

    .line 523
    .line 524
    .line 525
    invoke-direct {v4, v5, v6}, Lcom/google/android/projection/protocol/Radio$Range;-><init>(II)V

    .line 526
    .line 527
    .line 528
    aput-object v4, v3, v10

    .line 529
    .line 530
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 531
    .line 532
    .line 533
    move-result-object v32

    .line 534
    new-array v3, v13, [Ljava/lang/Integer;

    .line 535
    .line 536
    const v4, 0x186a0

    .line 537
    .line 538
    .line 539
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 540
    .line 541
    .line 542
    move-result-object v4

    .line 543
    aput-object v4, v3, v10

    .line 544
    .line 545
    const v4, 0x30d40

    .line 546
    .line 547
    .line 548
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 549
    .line 550
    .line 551
    move-result-object v4

    .line 552
    aput-object v4, v3, v9

    .line 553
    .line 554
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 555
    .line 556
    .line 557
    move-result-object v33

    .line 558
    const v34, 0x186a0

    .line 559
    .line 560
    .line 561
    const/16 v35, 0x1

    .line 562
    .line 563
    const/16 v36, 0x1

    .line 564
    .line 565
    const/16 v37, 0x2

    .line 566
    .line 567
    const/16 v38, 0x1

    .line 568
    .line 569
    const/16 v39, 0x1

    .line 570
    .line 571
    const/16 v40, 0x1

    .line 572
    .line 573
    const/16 v41, 0x0

    .line 574
    .line 575
    const/16 v42, 0x0

    .line 576
    .line 577
    const/16 v43, 0x0

    .line 578
    .line 579
    move-object/from16 v29, v2

    .line 580
    .line 581
    invoke-direct/range {v29 .. v43}, Lcom/google/android/projection/protocol/Radio$RadioProperties;-><init>(IILjava/util/List;Ljava/util/List;IZIIZZIZZI)V

    .line 582
    .line 583
    .line 584
    aput-object v2, v1, v9

    .line 585
    .line 586
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 587
    .line 588
    .line 589
    move-result-object v1

    .line 590
    iput-object v1, v0, Lcom/google/android/projection/protocol/RadioStub;->mRadioProperties:Ljava/util/List;

    .line 591
    .line 592
    new-instance v1, Landroid/util/SparseArray;

    .line 593
    .line 594
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 595
    .line 596
    .line 597
    iput-object v1, v0, Lcom/google/android/projection/protocol/RadioStub;->mCurrentStation:Landroid/util/SparseArray;

    .line 598
    .line 599
    iget-object v1, v0, Lcom/google/android/projection/protocol/RadioStub;->mRadioProperties:Ljava/util/List;

    .line 600
    .line 601
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 606
    .line 607
    .line 608
    move-result v2

    .line 609
    if-eqz v2, :cond_1

    .line 610
    .line 611
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    check-cast v2, Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 616
    .line 617
    iget-object v3, v0, Lcom/google/android/projection/protocol/RadioStub;->mProgramLists:Landroid/util/SparseArray;

    .line 618
    .line 619
    iget v4, v2, Lcom/google/android/projection/protocol/Radio$RadioProperties;->radioId:I

    .line 620
    .line 621
    invoke-direct {v0, v4}, Lcom/google/android/projection/protocol/RadioStub;->generateProgramList(I)Ljava/util/List;

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 626
    .line 627
    .line 628
    iget v3, v2, Lcom/google/android/projection/protocol/Radio$RadioProperties;->radioId:I

    .line 629
    .line 630
    iget-object v4, v0, Lcom/google/android/projection/protocol/RadioStub;->mRadioState:Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 631
    .line 632
    iget v5, v4, Lcom/google/android/projection/protocol/Radio$RadioState;->activeRadioId:I

    .line 633
    .line 634
    if-ne v3, v5, :cond_0

    .line 635
    .line 636
    iget-object v5, v0, Lcom/google/android/projection/protocol/RadioStub;->mCurrentStation:Landroid/util/SparseArray;

    .line 637
    .line 638
    new-instance v6, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 639
    .line 640
    iget v2, v2, Lcom/google/android/projection/protocol/Radio$RadioProperties;->type:I

    .line 641
    .line 642
    iget-object v4, v4, Lcom/google/android/projection/protocol/Radio$RadioState;->stationInfo:Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 643
    .line 644
    iget v7, v4, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 645
    .line 646
    iget v8, v4, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->subChannel:I

    .line 647
    .line 648
    iget-object v4, v4, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->metaData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    .line 649
    .line 650
    invoke-direct {v6, v2, v7, v8, v4}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;-><init>(IIILcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;)V

    .line 651
    .line 652
    .line 653
    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 654
    .line 655
    .line 656
    goto :goto_0

    .line 657
    :cond_0
    iget-object v4, v0, Lcom/google/android/projection/protocol/RadioStub;->mCurrentStation:Landroid/util/SparseArray;

    .line 658
    .line 659
    new-instance v5, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 660
    .line 661
    iget v6, v2, Lcom/google/android/projection/protocol/Radio$RadioProperties;->type:I

    .line 662
    .line 663
    iget-object v2, v2, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelRange:Ljava/util/List;

    .line 664
    .line 665
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 666
    .line 667
    .line 668
    move-result-object v2

    .line 669
    check-cast v2, Lcom/google/android/projection/protocol/Radio$Range;

    .line 670
    .line 671
    iget v2, v2, Lcom/google/android/projection/protocol/Radio$Range;->min:I

    .line 672
    .line 673
    invoke-direct/range {p0 .. p0}, Lcom/google/android/projection/protocol/RadioStub;->generateMetaData()Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    .line 674
    .line 675
    .line 676
    move-result-object v7

    .line 677
    invoke-direct {v5, v6, v2, v10, v7}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;-><init>(IIILcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;)V

    .line 678
    .line 679
    .line 680
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 681
    .line 682
    .line 683
    goto :goto_0

    .line 684
    :cond_1
    new-instance v1, Landroid/os/Handler;

    .line 685
    .line 686
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 687
    .line 688
    .line 689
    iput-object v1, v0, Lcom/google/android/projection/protocol/RadioStub;->mHandler:Landroid/os/Handler;

    .line 690
    .line 691
    new-instance v2, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;

    .line 692
    .line 693
    const/4 v3, 0x0

    .line 694
    invoke-direct {v2, v0, v3}, Lcom/google/android/projection/protocol/RadioStub$ProgramListUpdateRunnable;-><init>(Lcom/google/android/projection/protocol/RadioStub;Lcom/google/android/projection/protocol/RadioStub$1;)V

    .line 695
    .line 696
    .line 697
    const-wide/16 v4, 0x4e20

    .line 698
    .line 699
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 700
    .line 701
    .line 702
    new-instance v2, Lcom/google/android/projection/protocol/RadioStub$StationPresetsRunnable;

    .line 703
    .line 704
    invoke-direct {v2, v0, v3}, Lcom/google/android/projection/protocol/RadioStub$StationPresetsRunnable;-><init>(Lcom/google/android/projection/protocol/RadioStub;Lcom/google/android/projection/protocol/RadioStub$1;)V

    .line 705
    .line 706
    .line 707
    const-wide/16 v3, 0x2710

    .line 708
    .line 709
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 710
    .line 711
    .line 712
    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/projection/protocol/RadioStub;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/protocol/RadioStub;->mProgramLists:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/RadioStub;->generateMetaData()Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/google/android/projection/protocol/RadioStub;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioStateLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioState;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioState:Lcom/google/android/projection/protocol/Radio$RadioState;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/google/android/projection/protocol/RadioStub;)Lcom/google/android/projection/protocol/Radio$RadioEndpoint;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/google/android/projection/protocol/RadioStub;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/projection/protocol/RadioStub;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/google/android/projection/protocol/RadioStub;IZZ)Lcom/google/android/projection/protocol/Radio$RadioStationInfo;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/RadioStub;->findNextStation(IZZ)Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    move-result-object p0

    return-object p0
.end method

.method private static clipChannelToRange(ILjava/util/List;Z)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$Range;",
            ">;Z)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/projection/protocol/Radio$Range;

    .line 12
    .line 13
    iget v0, v0, Lcom/google/android/projection/protocol/Radio$Range;->max:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/google/android/projection/protocol/Radio$Range;

    .line 21
    .line 22
    iget v2, v2, Lcom/google/android/projection/protocol/Radio$Range;->min:I

    .line 23
    .line 24
    if-le p0, v0, :cond_0

    .line 25
    .line 26
    move v0, v2

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    if-ge p0, v2, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    add-int/lit8 v0, v0, -0x1

    .line 36
    .line 37
    if-ge v1, v0, :cond_3

    .line 38
    .line 39
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/google/android/projection/protocol/Radio$Range;

    .line 44
    .line 45
    iget v0, v0, Lcom/google/android/projection/protocol/Radio$Range;->max:I

    .line 46
    .line 47
    add-int/lit8 v1, v1, 0x1

    .line 48
    .line 49
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Lcom/google/android/projection/protocol/Radio$Range;

    .line 54
    .line 55
    iget v2, v2, Lcom/google/android/projection/protocol/Radio$Range;->min:I

    .line 56
    .line 57
    if-le p0, v0, :cond_1

    .line 58
    .line 59
    if-ge p0, v2, :cond_1

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    move p0, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_2
    move p0, v0

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move v0, p0

    .line 68
    :goto_1
    return v0
.end method

.method private findNextStation(IZZ)Lcom/google/android/projection/protocol/Radio$RadioStationInfo;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object p3, p0, Lcom/google/android/projection/protocol/RadioStub;->mCurrentStation:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/RadioStub;->getRadioProperties(I)Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p3, :cond_7

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_0
    iget v0, p3, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 21
    .line 22
    iget-object v2, p0, Lcom/google/android/projection/protocol/RadioStub;->mProgramLists:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/List;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const-string p2, "no program list for radio id "

    .line 33
    .line 34
    const-string p3, "RadioStub"

    .line 35
    .line 36
    invoke-static {p2, p1, p3}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_6

    .line 45
    .line 46
    const/4 p3, 0x1

    .line 47
    if-eqz p2, :cond_4

    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 55
    .line 56
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-ge p3, v1, :cond_3

    .line 61
    .line 62
    add-int/lit8 v1, p3, -0x1

    .line 63
    .line 64
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 69
    .line 70
    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 75
    .line 76
    iget v1, v1, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 77
    .line 78
    if-lt v0, v1, :cond_2

    .line 79
    .line 80
    iget v1, v3, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 81
    .line 82
    if-ge v0, v1, :cond_2

    .line 83
    .line 84
    move-object p3, v3

    .line 85
    goto :goto_2

    .line 86
    :cond_2
    add-int/lit8 p3, p3, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_3
    move-object p3, p2

    .line 90
    goto :goto_2

    .line 91
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    sub-int/2addr p2, p3

    .line 96
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    move-object p3, p2

    .line 101
    check-cast p3, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 102
    .line 103
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result p2

    .line 107
    add-int/lit8 p2, p2, -0x2

    .line 108
    .line 109
    :goto_1
    if-lez p2, :cond_6

    .line 110
    .line 111
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 116
    .line 117
    add-int/lit8 v3, p2, 0x1

    .line 118
    .line 119
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    check-cast v3, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 124
    .line 125
    iget v4, v1, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 126
    .line 127
    if-le v0, v4, :cond_5

    .line 128
    .line 129
    iget v3, v3, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 130
    .line 131
    if-gt v0, v3, :cond_5

    .line 132
    .line 133
    move-object p3, v1

    .line 134
    goto :goto_2

    .line 135
    :cond_5
    add-int/lit8 p2, p2, -0x1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_6
    :goto_2
    iget-object p2, p0, Lcom/google/android/projection/protocol/RadioStub;->mCurrentStation:Landroid/util/SparseArray;

    .line 139
    .line 140
    invoke-virtual {p2, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    return-object p3

    .line 144
    :cond_7
    :goto_3
    return-object v1
.end method

.method private generateMetaData()Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->setAudioChannels(I)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->setSignalQuality(I)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v2, Lcom/google/android/projection/protocol/RadioStub;->mRadioTextTable:[Ljava/lang/String;

    .line 23
    .line 24
    iget-object v3, p0, Lcom/google/android/projection/protocol/RadioStub;->mRandom:Ljava/util/Random;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    array-length v5, v2

    .line 31
    add-int/lit8 v5, v5, -0x1

    .line 32
    .line 33
    int-to-double v5, v5

    .line 34
    mul-double/2addr v3, v5

    .line 35
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    double-to-int v3, v3

    .line 40
    aget-object v2, v2, v3

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->setRadioText(Ljava/lang/String;)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData$Builder;->build()Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->setRdsData(Lcom/google/android/projection/protocol/Radio$RadioStationInfo$RdsData;)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->build()Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

.method private generateProgramList(I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$RadioStationInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/RadioStub;->getRadioProperties(I)Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p1, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelRange:Ljava/util/List;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lcom/google/android/projection/protocol/Radio$Range;

    .line 20
    .line 21
    iget v1, v1, Lcom/google/android/projection/protocol/Radio$Range;->min:I

    .line 22
    .line 23
    iget-object v3, p1, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelRange:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x1

    .line 30
    sub-int/2addr v4, v5

    .line 31
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lcom/google/android/projection/protocol/Radio$Range;

    .line 36
    .line 37
    iget v3, v3, Lcom/google/android/projection/protocol/Radio$Range;->max:I

    .line 38
    .line 39
    :goto_0
    if-ge v1, v3, :cond_0

    .line 40
    .line 41
    iget-object v4, p1, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelRange:Ljava/util/List;

    .line 42
    .line 43
    invoke-static {v1, v4, v5}, Lcom/google/android/projection/protocol/RadioStub;->clipChannelToRange(ILjava/util/List;Z)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    new-instance v4, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 48
    .line 49
    iget v6, p1, Lcom/google/android/projection/protocol/Radio$RadioProperties;->type:I

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/google/android/projection/protocol/RadioStub;->generateMetaData()Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-direct {v4, v6, v1, v2, v7}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;-><init>(IIILcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    iget v4, p1, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelSpacing:I

    .line 62
    .line 63
    iget-object v6, p0, Lcom/google/android/projection/protocol/RadioStub;->mRandom:Ljava/util/Random;

    .line 64
    .line 65
    invoke-virtual {v6}, Ljava/util/Random;->nextGaussian()D

    .line 66
    .line 67
    .line 68
    move-result-wide v6

    .line 69
    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    .line 70
    .line 71
    mul-double/2addr v6, v8

    .line 72
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    .line 73
    .line 74
    .line 75
    move-result-wide v6

    .line 76
    double-to-int v6, v6

    .line 77
    add-int/2addr v6, v5

    .line 78
    mul-int/2addr v6, v4

    .line 79
    add-int/2addr v1, v6

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    return-object v0
.end method

.method private getMetaDataForStation(IIII)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mProgramLists:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 24
    .line 25
    iget v1, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->radioType:I

    .line 26
    .line 27
    if-ne p2, v1, :cond_0

    .line 28
    .line 29
    iget v1, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 30
    .line 31
    if-ne p3, v1, :cond_0

    .line 32
    .line 33
    iget v1, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->subChannel:I

    .line 34
    .line 35
    if-ne p4, v1, :cond_0

    .line 36
    .line 37
    iget-object p1, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->metaData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    :goto_0
    if-nez p1, :cond_2

    .line 42
    .line 43
    new-instance p1, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;

    .line 44
    .line 45
    invoke-direct {p1}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    invoke-virtual {p1, p2}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->setAudioChannels(I)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, p2}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->setSignalQuality(I)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData$Builder;->build()Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    :cond_2
    return-object p1
.end method

.method private getRadioProperties(I)Lcom/google/android/projection/protocol/Radio$RadioProperties;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 3
    iget v2, v1, Lcom/google/android/projection/protocol/Radio$RadioProperties;->radioId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private validStation(Lcom/google/android/projection/protocol/Radio$RadioProperties;II)Z
    .locals 3

    .line 1
    iget v0, p1, Lcom/google/android/projection/protocol/Radio$RadioProperties;->type:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    :cond_0
    if-ltz p3, :cond_2

    .line 11
    .line 12
    const/16 v0, 0x8

    .line 13
    .line 14
    if-le p3, v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p1, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelRange:Ljava/util/List;

    .line 18
    .line 19
    const/4 p3, 0x1

    .line 20
    invoke-static {p2, p1, p3}, Lcom/google/android/projection/protocol/RadioStub;->clipChannelToRange(ILjava/util/List;Z)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ne p2, p1, :cond_2

    .line 25
    .line 26
    move v2, p3

    .line 27
    :cond_2
    :goto_0
    return v2
.end method


# virtual methods
.method public cancel(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/projection/protocol/RadioStub;->mScanRunnable:Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1, p1}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendCancelResponse(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method

.method public configureChannelSpacing(II)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/RadioStub;->getRadioProperties(I)Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "RadioStub"

    .line 8
    .line 9
    const-string v1, "Invalid radioId"

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 15
    .line 16
    const/16 v1, -0x14

    .line 17
    .line 18
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendChannelSpacingResponse(III)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1

    .line 23
    :cond_0
    iput p2, v0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelSpacing:I

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendChannelSpacingResponse(III)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public enableRadioSource()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendRadioSourceResponse(IZ)I

    move-result v0

    return v0
.end method

.method public getCurrentRadioState()Lcom/google/android/projection/protocol/Radio$RadioState;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioState:Lcom/google/android/projection/protocol/Radio$RadioState;

    return-object v0
.end method

.method public getProgramList(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mProgramLists:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-gez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 11
    .line 12
    new-instance v2, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    const/16 v3, -0x14

    .line 18
    .line 19
    invoke-interface {v0, v3, p1, v1, v2}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendProgramListResponse(IIZLjava/util/List;)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mProgramLists:Landroid/util/SparseArray;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/util/List;

    .line 31
    .line 32
    iget-object v2, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-interface {v2, v3, p1, v1, v0}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendProgramListResponse(IIZLjava/util/List;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method

.method public getRadioProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/projection/protocol/Radio$RadioProperties;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioProperties:Ljava/util/List;

    return-object v0
.end method

.method public getTrafficUpdate(I)I
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v3, 0x2

    .line 8
    new-array v3, v3, [Lcom/google/android/projection/protocol/Radio$TrafficIncident;

    .line 9
    .line 10
    new-instance v11, Lcom/google/android/projection/protocol/Radio$TrafficIncident;

    .line 11
    .line 12
    const/16 v5, 0x309

    .line 13
    .line 14
    const/16 v6, 0x3e8

    .line 15
    .line 16
    const-wide v7, 0x4042b5dd7ecbb7faL    # 37.420822

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    const-wide v9, -0x3fa17aa469d7342fL    # -122.083715

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    move-object v4, v11

    .line 27
    invoke-direct/range {v4 .. v10}, Lcom/google/android/projection/protocol/Radio$TrafficIncident;-><init>(IIDD)V

    .line 28
    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    aput-object v11, v3, v4

    .line 32
    .line 33
    new-instance v5, Lcom/google/android/projection/protocol/Radio$TrafficIncident;

    .line 34
    .line 35
    const/16 v13, 0x30a

    .line 36
    .line 37
    const/16 v14, 0x1f4

    .line 38
    .line 39
    const-wide v15, 0x4042b63cfb3311a5L    # 37.423736

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const-wide v17, -0x3fa17a3d68405b3aL    # -122.090002

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    move-object v12, v5

    .line 50
    invoke-direct/range {v12 .. v18}, Lcom/google/android/projection/protocol/Radio$TrafficIncident;-><init>(IIDD)V

    .line 51
    .line 52
    .line 53
    const/4 v6, 0x1

    .line 54
    aput-object v5, v3, v6

    .line 55
    .line 56
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    .line 62
    .line 63
    move/from16 v3, p1

    .line 64
    .line 65
    invoke-interface {v1, v4, v3, v2}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendTrafficUpdateResponse(IILjava/util/List;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    return v1
.end method

.method public mute(IZ)I
    .locals 2

    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendMuteResponse(IIZ)I

    move-result p1

    return p1
.end method

.method public scan(IZZZ)I
    .locals 2

    .line 1
    const-string p4, "onScanStationsRequest"

    .line 2
    .line 3
    const-string v0, "RadioStub"

    .line 4
    .line 5
    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p4, p0, Lcom/google/android/projection/protocol/RadioStub;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/projection/protocol/RadioStub;->mScanRunnable:Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;

    .line 11
    .line 12
    invoke-virtual {p4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/RadioStub;->getRadioProperties(I)Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 16
    .line 17
    .line 18
    move-result-object p4

    .line 19
    iget-object v1, p0, Lcom/google/android/projection/protocol/RadioStub;->mCurrentStation:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 26
    .line 27
    if-eqz p4, :cond_3

    .line 28
    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p4, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-interface {p4, v1, p1, p2}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendScanResponse(IIZ)I

    .line 36
    .line 37
    .line 38
    move-result p4

    .line 39
    if-eqz p4, :cond_1

    .line 40
    .line 41
    const-string p1, "nativeSendScanStationsResponse() returned error"

    .line 42
    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return p4

    .line 47
    :cond_1
    iget-object p4, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioState:Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 48
    .line 49
    iput p1, p4, Lcom/google/android/projection/protocol/Radio$RadioState;->activeRadioId:I

    .line 50
    .line 51
    if-eqz p2, :cond_2

    .line 52
    .line 53
    new-instance p2, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;

    .line 54
    .line 55
    invoke-direct {p2, p0, p1, p3}, Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;-><init>(Lcom/google/android/projection/protocol/RadioStub;IZ)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Lcom/google/android/projection/protocol/RadioStub;->mScanRunnable:Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;

    .line 59
    .line 60
    iget-object p1, p0, Lcom/google/android/projection/protocol/RadioStub;->mHandler:Landroid/os/Handler;

    .line 61
    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    .line 64
    .line 65
    :cond_2
    return v1

    .line 66
    :cond_3
    :goto_0
    const-string p3, "Invalid radioId"

    .line 67
    .line 68
    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget-object p3, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 72
    .line 73
    const/16 p4, -0x14

    .line 74
    .line 75
    invoke-interface {p3, p4, p1, p2}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendScanResponse(IIZ)I

    .line 76
    .line 77
    .line 78
    return p4
.end method

.method public seek(IZZ)I
    .locals 2

    .line 1
    const-string v0, "RadioStub"

    .line 2
    .line 3
    const-string v1, "onSeekStationRequest up="

    .line 4
    .line 5
    invoke-static {v1, p2, v0}, Landroid/accessibilityservice/c;->z(Ljava/lang/String;ZLjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/projection/protocol/RadioStub;->mScanRunnable:Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/RadioStub;->getRadioProperties(I)Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/RadioStub;->findNextStation(IZZ)Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object p3, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-interface {p3, v0, p1}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendSeekResponse(II)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    const-string p1, "RadioStub"

    .line 38
    .line 39
    const-string p2, "nativeSendSeekStationResponse() returned error"

    .line 40
    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return p3

    .line 45
    :cond_1
    iget-object p3, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioStateLock:Ljava/lang/Object;

    .line 46
    .line 47
    monitor-enter p3

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioState:Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 49
    .line 50
    iput p1, v0, Lcom/google/android/projection/protocol/Radio$RadioState;->activeRadioId:I

    .line 51
    .line 52
    iput-object p2, v0, Lcom/google/android/projection/protocol/Radio$RadioState;->stationInfo:Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 53
    .line 54
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    iget-object p3, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 56
    .line 57
    invoke-interface {p3, p1, p2}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendRadioStationInfoNotification(ILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    throw p1

    .line 65
    :cond_2
    :goto_0
    const-string p2, "RadioStub"

    .line 66
    .line 67
    const-string p3, "Invalid radioId"

    .line 68
    .line 69
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p2, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 73
    .line 74
    const/16 p3, -0x14

    .line 75
    .line 76
    invoke-interface {p2, p3, p1}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendSeekResponse(II)I

    .line 77
    .line 78
    .line 79
    return p3
.end method

.method public selectRadio(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mCurrentStation:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p1, "RadioStub"

    .line 12
    .line 13
    const-string v0, "Invalid radioId"

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    const/16 p1, -0x14

    .line 19
    .line 20
    return p1

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioStateLock:Ljava/lang/Object;

    .line 22
    .line 23
    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioState:Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 25
    .line 26
    iput p1, v2, Lcom/google/android/projection/protocol/Radio$RadioState;->activeRadioId:I

    .line 27
    .line 28
    iput-object v0, v2, Lcom/google/android/projection/protocol/Radio$RadioState;->stationInfo:Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 29
    .line 30
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    iget-object v1, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-interface {v1, v2, p1, v0}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendActiveRadioResponse(IILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    throw p1
.end method

.method public setRadioEndpoint(Lcom/google/android/projection/protocol/Radio$RadioEndpoint;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    return-void
.end method

.method public step(IZZ)I
    .locals 4

    .line 1
    const-string p3, "RadioStub"

    .line 2
    .line 3
    const-string v0, "onStepChannelRequest"

    .line 4
    .line 5
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/google/android/projection/protocol/RadioStub;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mScanRunnable:Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;

    .line 11
    .line 12
    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/RadioStub;->getRadioProperties(I)Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    const-string p2, "RadioStub"

    .line 22
    .line 23
    const-string p3, "Invalid radioId"

    .line 24
    .line 25
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 29
    .line 30
    const/16 p3, -0x14

    .line 31
    .line 32
    invoke-interface {p2, p3, p1}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendStepResponse(II)I

    .line 33
    .line 34
    .line 35
    return p3

    .line 36
    :cond_0
    new-instance v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 37
    .line 38
    iget-object v1, p0, Lcom/google/android/projection/protocol/RadioStub;->mCurrentStation:Landroid/util/SparseArray;

    .line 39
    .line 40
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 45
    .line 46
    iget v1, v1, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->radioType:I

    .line 47
    .line 48
    iget-object v2, p0, Lcom/google/android/projection/protocol/RadioStub;->mCurrentStation:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 55
    .line 56
    iget v2, v2, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 57
    .line 58
    iget-object v3, p0, Lcom/google/android/projection/protocol/RadioStub;->mCurrentStation:Landroid/util/SparseArray;

    .line 59
    .line 60
    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 65
    .line 66
    iget v3, v3, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->subChannel:I

    .line 67
    .line 68
    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;-><init>(III)V

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 72
    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-interface {v1, v2, p1}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendStepResponse(II)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_1

    .line 79
    .line 80
    const-string p1, "RadioStub"

    .line 81
    .line 82
    const-string p2, "sendStepResponse() returned error"

    .line 83
    .line 84
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    return v1

    .line 88
    :cond_1
    if-eqz p2, :cond_2

    .line 89
    .line 90
    iget v1, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 91
    .line 92
    iget v3, p3, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelSpacing:I

    .line 93
    .line 94
    add-int/2addr v1, v3

    .line 95
    iput v1, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget v1, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 99
    .line 100
    iget v3, p3, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelSpacing:I

    .line 101
    .line 102
    sub-int/2addr v1, v3

    .line 103
    iput v1, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 104
    .line 105
    :goto_0
    iget v1, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 106
    .line 107
    iget-object p3, p3, Lcom/google/android/projection/protocol/Radio$RadioProperties;->channelRange:Ljava/util/List;

    .line 108
    .line 109
    invoke-static {v1, p3, p2}, Lcom/google/android/projection/protocol/RadioStub;->clipChannelToRange(ILjava/util/List;Z)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    iput p2, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->channel:I

    .line 114
    .line 115
    iput v2, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->subChannel:I

    .line 116
    .line 117
    iget p3, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->radioType:I

    .line 118
    .line 119
    invoke-direct {p0, p1, p3, p2, v2}, Lcom/google/android/projection/protocol/RadioStub;->getMetaDataForStation(IIII)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    iput-object p2, v0, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;->metaData:Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    .line 124
    .line 125
    iget-object p2, p0, Lcom/google/android/projection/protocol/RadioStub;->mCurrentStation:Landroid/util/SparseArray;

    .line 126
    .line 127
    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object p2, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioStateLock:Ljava/lang/Object;

    .line 131
    .line 132
    monitor-enter p2

    .line 133
    :try_start_0
    iget-object p3, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioState:Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 134
    .line 135
    iput p1, p3, Lcom/google/android/projection/protocol/Radio$RadioState;->activeRadioId:I

    .line 136
    .line 137
    iput-object v0, p3, Lcom/google/android/projection/protocol/Radio$RadioState;->stationInfo:Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 138
    .line 139
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object p2, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 141
    .line 142
    invoke-interface {p2, p1, v0}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendRadioStationInfoNotification(ILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I

    .line 143
    .line 144
    .line 145
    move-result p1

    .line 146
    return p1

    .line 147
    :catchall_0
    move-exception p1

    .line 148
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    throw p1
.end method

.method public tune(III)I
    .locals 3

    .line 1
    const-string v0, "RadioStub"

    .line 2
    .line 3
    const-string v1, "onTuneToStationRequest"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/projection/protocol/RadioStub;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/projection/protocol/RadioStub;->mScanRunnable:Lcom/google/android/projection/protocol/RadioStub$ScanRunnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/RadioStub;->getRadioProperties(I)Lcom/google/android/projection/protocol/Radio$RadioProperties;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/projection/protocol/RadioStub;->validStation(Lcom/google/android/projection/protocol/Radio$RadioProperties;II)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-interface {v1, v2, p1}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendTuneResponse(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    const-string p1, "RadioStub"

    .line 38
    .line 39
    const-string p2, "sendTuneResponse() returned error"

    .line 40
    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    return v1

    .line 45
    :cond_1
    new-instance v1, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 46
    .line 47
    iget v0, v0, Lcom/google/android/projection/protocol/Radio$RadioProperties;->type:I

    .line 48
    .line 49
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/projection/protocol/RadioStub;->getMetaDataForStation(IIII)Lcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-direct {v1, v0, p2, p3, v2}, Lcom/google/android/projection/protocol/Radio$RadioStationInfo;-><init>(IIILcom/google/android/projection/protocol/Radio$RadioStationInfo$MetaData;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/google/android/projection/protocol/RadioStub;->mCurrentStation:Landroid/util/SparseArray;

    .line 57
    .line 58
    invoke-virtual {p2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioStateLock:Ljava/lang/Object;

    .line 62
    .line 63
    monitor-enter p2

    .line 64
    :try_start_0
    iget-object p3, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioState:Lcom/google/android/projection/protocol/Radio$RadioState;

    .line 65
    .line 66
    iput-object v1, p3, Lcom/google/android/projection/protocol/Radio$RadioState;->stationInfo:Lcom/google/android/projection/protocol/Radio$RadioStationInfo;

    .line 67
    .line 68
    iput p1, p3, Lcom/google/android/projection/protocol/Radio$RadioState;->activeRadioId:I

    .line 69
    .line 70
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object p2, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 72
    .line 73
    invoke-interface {p2, p1, v1}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendRadioStationInfoNotification(ILcom/google/android/projection/protocol/Radio$RadioStationInfo;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    return p1

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    throw p1

    .line 81
    :cond_2
    :goto_0
    const-string p2, "RadioStub"

    .line 82
    .line 83
    const-string p3, "Invalid radio_id/station"

    .line 84
    .line 85
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/google/android/projection/protocol/RadioStub;->mRadioEndpoint:Lcom/google/android/projection/protocol/Radio$RadioEndpoint;

    .line 89
    .line 90
    const/16 p3, -0x14

    .line 91
    .line 92
    invoke-interface {p2, p3, p1}, Lcom/google/android/projection/protocol/Radio$RadioEndpoint;->sendTuneResponse(II)I

    .line 93
    .line 94
    .line 95
    return p3
.end method
