.class public Lcom/syu/bt/db/Bt_Info;
.super Ljava/lang/Object;
.source "Bt_Info.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/db/Bt_Info$GetListContact;,
        Lcom/syu/bt/db/Bt_Info$GetListHistory;,
        Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;,
        Lcom/syu/bt/db/Bt_Info$RefreshColllogListener;,
        Lcom/syu/bt/db/Bt_Info$RunnableClearCallLog;,
        Lcom/syu/bt/db/Bt_Info$RunnableDelCallLog;,
        Lcom/syu/bt/db/Bt_Info$RunnableDelContact;,
        Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;,
        Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;,
        Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContactsIntoFile;
    }
.end annotation


# static fields
.field public static b:[Ljava/lang/String;

.field public static bIsTR:Z

.field static collator_TR:Ljava/text/Collator;

.field static comparator2_Contact:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field static comparator_Contact:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static comparator_History:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public static startNum:[Ljava/lang/String;


# instance fields
.field public PAIR_INDEX:I

.field public bClearing_Log:Z

.field mGetListContact:Lcom/syu/bt/db/Bt_Info$GetListContact;

.field mGetListHistory:Lcom/syu/bt/db/Bt_Info$GetListHistory;

.field mGetListHistoryAll:Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;

.field public mListContact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListContact2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListContactDownload:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListContactDownload2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListContactHeadId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListFavContact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListHasPaired:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListHistoryAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListHistoryAll2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListHistoryIn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListHistoryIn2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListHistoryMiss:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListHistoryMiss2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListHistoryOut:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListHistoryOut2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListPair:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mListSetPair:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPinYin:[C

.field public mRunnableClearAllContact:Ljava/lang/Runnable;

.field public mRunnable_ClearAllLog:Ljava/lang/Runnable;

.field public refresh:Lcom/syu/bt/db/Bt_Info$RefreshColllogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "#"

    aput-object v1, v0, v3

    const-string v1, "A"

    aput-object v1, v0, v4

    const-string v1, "B"

    aput-object v1, v0, v5

    const-string v1, "C"

    aput-object v1, v0, v6

    const-string v1, "D"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "E"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "F"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 69
    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 70
    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Z"

    aput-object v2, v0, v1

    .line 68
    sput-object v0, Lcom/syu/bt/db/Bt_Info;->b:[Ljava/lang/String;

    .line 73
    sput-boolean v3, Lcom/syu/bt/db/Bt_Info;->bIsTR:Z

    .line 565
    new-instance v0, Ljava/util/Locale;

    const-string v1, "tr"

    const-string v2, "TR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/syu/bt/db/Bt_Info;->collator_TR:Ljava/text/Collator;

    .line 566
    new-instance v0, Lcom/syu/bt/db/Bt_Info$3;

    invoke-direct {v0}, Lcom/syu/bt/db/Bt_Info$3;-><init>()V

    sput-object v0, Lcom/syu/bt/db/Bt_Info;->comparator_Contact:Ljava/util/Comparator;

    .line 594
    new-instance v0, Lcom/syu/bt/db/Bt_Info$4;

    invoke-direct {v0}, Lcom/syu/bt/db/Bt_Info$4;-><init>()V

    sput-object v0, Lcom/syu/bt/db/Bt_Info;->comparator2_Contact:Ljava/util/Comparator;

    .line 1578
    const/16 v0, 0x60

    new-array v0, v0, [Ljava/lang/String;

    .line 1579
    const-string v1, "+20"

    aput-object v1, v0, v3

    const-string v1, "0020"

    aput-object v1, v0, v4

    const-string v1, "+27"

    aput-object v1, v0, v5

    const-string v1, "0027"

    aput-object v1, v0, v6

    const-string v1, "+30"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "0030"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "+31"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "0031"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "+32"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "0032"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "+33"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "0033"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "+351"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "00351"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "+353"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "00353"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "+355"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "00355"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "+356"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "00356"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "+357"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "00357"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "+358"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "00358"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "+359"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "00359"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "+36"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "0036"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "+353"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "00353"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "+382"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "00382"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "+385"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "00385"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "+39"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "0039"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    .line 1580
    const-string v2, "+40"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "0040"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "+421"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "00421"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "+43"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "0043"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "+44"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "0044"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "+45"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "0045"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "+46"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "0046"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "+47"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "0047"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "+48"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "0048"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "+49"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "0049"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "+52"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "0052"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "+54"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "0054"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "+55"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "0055"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "+60"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "0060"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "+61"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "0061"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "+62"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "0062"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "+63"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "0063"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "+64"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "0064"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "+65"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "0065"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "+66"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "0066"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    .line 1581
    const-string v2, "+81"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "0081"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "+82"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "0082"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "+84"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "0084"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "+86"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "0086"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "+90"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "0090"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "+91"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "0091"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "+98"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "0098"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "+966"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "00966"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "+1"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "001"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "+6"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "006"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "+7"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "007"

    aput-object v2, v0, v1

    .line 1578
    sput-object v0, Lcom/syu/bt/db/Bt_Info;->startNum:[Ljava/lang/String;

    .line 1838
    new-instance v0, Lcom/syu/bt/db/Bt_Info$5;

    invoke-direct {v0}, Lcom/syu/bt/db/Bt_Info$5;-><init>()V

    sput-object v0, Lcom/syu/bt/db/Bt_Info;->comparator_History:Ljava/util/Comparator;

    .line 1857
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn2:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut2:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss2:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll2:Ljava/util/List;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContactDownload2:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContactHeadId:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListSetPair:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListHasPaired:Ljava/util/List;

    .line 67
    const/16 v0, 0x1b

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mPinYin:[C

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/db/Bt_Info;->bClearing_Log:Z

    .line 74
    const/16 v0, 0x64

    iput v0, p0, Lcom/syu/bt/db/Bt_Info;->PAIR_INDEX:I

    .line 209
    new-instance v0, Lcom/syu/bt/db/Bt_Info$1;

    invoke-direct {v0, p0}, Lcom/syu/bt/db/Bt_Info$1;-><init>(Lcom/syu/bt/db/Bt_Info;)V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mRunnable_ClearAllLog:Ljava/lang/Runnable;

    .line 525
    new-instance v0, Lcom/syu/bt/db/Bt_Info$2;

    invoke-direct {v0, p0}, Lcom/syu/bt/db/Bt_Info$2;-><init>(Lcom/syu/bt/db/Bt_Info;)V

    iput-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mRunnableClearAllContact:Ljava/lang/Runnable;

    .line 967
    iput-object v1, p0, Lcom/syu/bt/db/Bt_Info;->mGetListContact:Lcom/syu/bt/db/Bt_Info$GetListContact;

    .line 968
    iput-object v1, p0, Lcom/syu/bt/db/Bt_Info;->mGetListHistory:Lcom/syu/bt/db/Bt_Info$GetListHistory;

    .line 969
    iput-object v1, p0, Lcom/syu/bt/db/Bt_Info;->mGetListHistoryAll:Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/db/Bt_Info;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/syu/bt/db/Bt_Info;->clearContacts()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;Ljava/util/ArrayList;I)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1, p2, p3}, Lcom/syu/bt/db/Bt_Info;->opsAdd(Ljava/util/List;Ljava/util/ArrayList;I)V

    return-void
.end method

.method private clearContacts()Landroid/database/Cursor;
    .locals 12

    .prologue
    const/4 v3, 0x0

    .line 495
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bSaveContactsToUrl:Z

    if-nez v0, :cond_0

    .line 496
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrDelete:Ljava/lang/String;

    .line 522
    :goto_0
    return-object v3

    .line 500
    :cond_0
    const-string v0, "BOOK"

    const-string v1, "------------------clear Contacts-----------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "raw_contact_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 503
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 506
    .local v11, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 507
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .local v8, "cnt":I
    const/4 v10, 0x0

    .line 509
    .local v10, "i":I
    :cond_1
    const-string v0, "raw_contact_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 510
    .local v6, "Id":J
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    add-int/lit8 v0, v8, -0x1

    if-eq v10, v0, :cond_2

    rem-int/lit8 v0, v10, 0x50

    if-nez v0, :cond_3

    .line 512
    :cond_2
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.android.contacts"

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 513
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 515
    :cond_3
    add-int/lit8 v10, v10, 0x1

    .line 516
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    .end local v6    # "Id":J
    .end local v8    # "cnt":I
    .end local v10    # "i":I
    :cond_4
    const-string v0, "BOOK"

    const-string v1, "------------------clearContacts end-----------------------"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :goto_1
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrDelete:Ljava/lang/String;

    move-object v3, v9

    .line 522
    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "localNumber"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1750
    move-object v1, p2

    .line 1752
    .local v1, "tempNumber":Ljava/lang/String;
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1753
    sget-object v4, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1754
    sget-object v4, Lcom/syu/bt/App_Bt;->sDialInput:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1755
    .local v0, "pos":I
    if-lez v0, :cond_0

    .line 1756
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1761
    .end local v0    # "pos":I
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    move v2, v3

    .line 1777
    :cond_2
    :goto_0
    return v2

    .line 1764
    :cond_3
    invoke-virtual {p0, p1}, Lcom/syu/bt/db/Bt_Info;->simplifyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1767
    const-string v4, "+972"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1768
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1770
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x6

    if-gt v4, v5, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-ge v4, v5, :cond_2

    .line 1772
    :cond_5
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isXCConfig()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1773
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_6
    move v2, v3

    .line 1777
    goto :goto_0
.end method

.method private opsAdd(Ljava/util/List;Ljava/util/ArrayList;I)V
    .locals 5
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .local p2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 408
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 410
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 418
    .local v1, "rawContactInsertIndex":I
    sget-object v2, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 419
    const-string v3, "account_type"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 420
    const-string v3, "account_name"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 418
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 425
    const-string v3, "raw_contact_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 426
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 427
    const-string v3, "data1"

    const/16 v4, 0x281c

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 424
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v2, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 429
    const-string v3, "raw_contact_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 430
    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 431
    const-string v3, "data1"

    const/16 v4, 0x281e

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 432
    const-string v3, "data2"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    .line 428
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    return-void
.end method


# virtual methods
.method public SendHistoryToServer(Z)V
    .locals 14
    .param p1, "clear"    # Z

    .prologue
    const/4 v12, 0x5

    .line 1860
    sget-boolean v9, Lcom/syu/bt/App_Bt;->bSyncInfo:Z

    if-nez v9, :cond_0

    .line 1899
    :goto_0
    return-void

    .line 1863
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1864
    .local v3, "myList":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-boolean v9, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v9, :cond_2

    .line 1865
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryAll:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1872
    :goto_1
    sget-object v9, Lcom/syu/bt/db/Bt_Info;->comparator_History:Ljava/util/Comparator;

    invoke-static {v3, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1873
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    .line 1874
    .local v7, "size":I
    new-array v2, v12, [Ljava/lang/String;

    .line 1875
    .local v2, "item":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1876
    .local v4, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1877
    .local v5, "num":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1878
    .local v8, "type":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1880
    .local v0, "date":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 1881
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-lt v1, v12, :cond_3

    .line 1898
    .end local v1    # "i":I
    :cond_1
    const/4 v9, 0x0

    aget-object v9, v2, v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    const/4 v11, 0x2

    aget-object v11, v2, v11

    const/4 v12, 0x3

    aget-object v12, v2, v12

    const/4 v13, 0x4

    aget-object v13, v2, v13

    invoke-static {v9, v10, v11, v12, v13}, Lcom/syu/app/ipc/Bt_IpcObj;->sendHistory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1867
    .end local v0    # "date":Ljava/lang/String;
    .end local v2    # "item":[Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "num":Ljava/lang/String;
    .end local v7    # "size":I
    .end local v8    # "type":Ljava/lang/String;
    :cond_2
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryIn:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1868
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryOut:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1869
    sget-object v9, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v9, v9, Lcom/syu/bt/db/Bt_Info;->mListHistoryMiss:Ljava/util/List;

    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1882
    .restart local v0    # "date":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "item":[Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "num":Ljava/lang/String;
    .restart local v7    # "size":I
    .restart local v8    # "type":Ljava/lang/String;
    :cond_3
    if-le v7, v1, :cond_5

    .line 1883
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    const/16 v10, 0x2839

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "name":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 1884
    .restart local v4    # "name":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    const/16 v10, 0x283b

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "num":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1885
    .restart local v5    # "num":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    const/16 v10, 0x2837

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "type":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 1886
    .restart local v8    # "type":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/SparseArray;

    const/16 v10, 0x2838

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "date":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1888
    .restart local v0    # "date":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1889
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v6, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1890
    .local v6, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v9, Ljava/util/Date;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 1893
    .end local v6    # "simpleDateFormat":Ljava/text/SimpleDateFormat;
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "*-*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "*-*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v5

    :goto_3
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "*-*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v1

    .line 1881
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_6
    move-object v9, v4

    .line 1893
    goto :goto_3
.end method

.method public clearAllCallLog()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 228
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v1, "db-operation-history"

    iget-object v2, p0, Lcom/syu/bt/db/Bt_Info;->mRunnable_ClearAllLog:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 230
    return-void
.end method

.method public clearAllContacts(Ljava/lang/String;)V
    .locals 4
    .param p1, "phoneAddr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 549
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    sput-object p1, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrDelete:Ljava/lang/String;

    .line 551
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead:Ljava/lang/String;

    .line 552
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead1:Ljava/lang/String;

    .line 553
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrWrite:Ljava/lang/String;

    .line 554
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrReadHistory:Ljava/lang/String;

    .line 555
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrReadHistory2:Ljava/lang/String;

    .line 556
    const-string v0, "BOOK"

    const-string v1, "clearAllContacts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :goto_0
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v1, "db-operation-contact"

    iget-object v2, p0, Lcom/syu/bt/db/Bt_Info;->mRunnableClearAllContact:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, v3}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 563
    return-void

    .line 558
    :cond_0
    const-string v0, ""

    sput-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrDelete:Ljava/lang/String;

    goto :goto_0
.end method

.method public clearCallLog(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    .line 206
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v1, "db-operation-history"

    new-instance v2, Lcom/syu/bt/db/Bt_Info$RunnableClearCallLog;

    invoke-direct {v2, p0, p1}, Lcom/syu/bt/db/Bt_Info$RunnableClearCallLog;-><init>(Lcom/syu/bt/db/Bt_Info;I)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 207
    return-void
.end method

.method public delCallLog(Ljava/lang/String;J)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 169
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v1, "db-operation-history"

    new-instance v2, Lcom/syu/bt/db/Bt_Info$RunnableDelCallLog;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/syu/bt/db/Bt_Info$RunnableDelCallLog;-><init>(Lcom/syu/bt/db/Bt_Info;Ljava/lang/String;J)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 170
    return-void
.end method

.method public delContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 481
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v1, "db-operation-contact"

    new-instance v2, Lcom/syu/bt/db/Bt_Info$RunnableDelContact;

    invoke-direct {v2, p0, p1, p2}, Lcom/syu/bt/db/Bt_Info$RunnableDelContact;-><init>(Lcom/syu/bt/db/Bt_Info;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3, v3}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 482
    return-void
.end method

.method public getMapContact(Ljava/lang/String;Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1781
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_1

    .line 1782
    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lcom/syu/bt/db/Bt_Info;->getMapContact(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 1788
    :goto_0
    return-object v0

    .line 1785
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lcom/syu/bt/db/Bt_Info;->getMapContact(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    goto :goto_0

    .line 1788
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lcom/syu/bt/db/Bt_Info;->getMapContact(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    goto :goto_0
.end method

.method public getMapContact(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/util/SparseArray;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1803
    .local p3, "listContact":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1804
    if-eqz p3, :cond_1

    .line 1805
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1815
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1805
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1806
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x281e

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1807
    const/16 v1, 0x281c

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public getMapContactDownload(Ljava/lang/String;Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1792
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_1

    .line 1793
    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lcom/syu/bt/db/Bt_Info;->getMapContact(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    .line 1799
    :goto_0
    return-object v0

    .line 1796
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContactDownload2:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lcom/syu/bt/db/Bt_Info;->getMapContact(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    goto :goto_0

    .line 1799
    :cond_1
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContactDownload:Ljava/util/List;

    invoke-virtual {p0, p1, p2, v0}, Lcom/syu/bt/db/Bt_Info;->getMapContact(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object v0

    goto :goto_0
.end method

.method public getNameByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1681
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_3

    .line 1682
    const-string v0, "talk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " 22 sendBtPhoneState  number = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  sPhone_callin_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  sPhone2_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v0

    iget-object v0, v0, Lcom/syu/bt/App_Bt;->mIpcObj:Lcom/syu/app/ipc/Bt_IpcObj;

    invoke-virtual {v0}, Lcom/syu/app/ipc/Bt_IpcObj;->isCalling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1684
    sget v0, Lcom/syu/bt/App_Bt;->sPhone_callin_id:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 1688
    :goto_1
    return-object v0

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    goto :goto_0

    .line 1686
    :cond_1
    sget v0, Lcom/syu/bt/App_Bt;->sPhone2_id:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    :goto_2
    invoke-virtual {p0, p1, v0}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    goto :goto_2

    .line 1688
    :cond_3
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {p0, p1, v0}, Lcom/syu/bt/db/Bt_Info;->getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getNameByNumber(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 12
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const/16 v11, 0x281e

    const/16 v10, 0x281c

    const/16 v9, 0x2818

    const/4 v8, -0x1

    .line 1693
    const-string v4, ""

    .line 1694
    .local v4, "strName":Ljava/lang/String;
    const-string v5, ""

    .line 1696
    .local v5, "strTempNumber":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1697
    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 1699
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/syu/bt/db/Bt_Info;->simplifyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1700
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_3

    .line 1740
    :cond_1
    :goto_1
    const-string v6, "save11"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " getNameByNumber strName = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    sget-boolean v6, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v6, :cond_2

    .line 1742
    const-string v6, "hfp2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1743
    const-string v6, "hfp2"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 1746
    :cond_2
    return-object v4

    .line 1700
    :cond_3
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1701
    .local v3, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v6, 0x281e

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 1702
    const/4 v6, -0x1

    sput v6, Lcom/syu/bt/App_Bt;->iTalkHead:I

    .line 1703
    invoke-direct {p0, v5, p1}, Lcom/syu/bt/db/Bt_Info;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1704
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_NEW"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_BT_1920"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v8, "TZY_OEM"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1705
    :cond_4
    const/16 v6, 0x2818

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1707
    .local v2, "headIco":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1708
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/syu/bt/App_Bt;->iTalkHead:I

    .line 1713
    .end local v2    # "headIco":Ljava/lang/String;
    :cond_5
    const/16 v6, 0x281c

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1716
    .end local v3    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 1717
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1720
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_NEW"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_BT_1920"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    sget-object v6, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v7, "TZY_OEM"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1721
    :cond_7
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContactHeadId:Ljava/util/List;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContactHeadId:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1722
    invoke-virtual {p0, p1}, Lcom/syu/bt/db/Bt_Info;->simplifyNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1723
    sget-object v6, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v6, v6, Lcom/syu/bt/db/Bt_Info;->mListContactHeadId:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1724
    .restart local v3    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "strTempNumber":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 1725
    .restart local v5    # "strTempNumber":Ljava/lang/String;
    sput v8, Lcom/syu/bt/App_Bt;->iTalkHead:I

    .line 1726
    invoke-direct {p0, v5, p1}, Lcom/syu/bt/db/Bt_Info;->match(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1728
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1730
    .restart local v2    # "headIco":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 1731
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/syu/bt/App_Bt;->iTalkHead:I

    .line 1734
    :cond_9
    invoke-virtual {v3, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "strName":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "strName":Ljava/lang/String;
    goto :goto_2
.end method

.method public handlerPairedBt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "addr"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1819
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isDZSJMIB4Config()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1835
    :cond_0
    :goto_0
    return-void

    .line 1822
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1825
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 1826
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 1827
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1828
    .local v0, "dev":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x28da

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1829
    const/16 v1, 0x28db

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1830
    const/16 v1, 0x28d9

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1831
    const-string v1, "gdy6"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 00 mListPair.add name = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    sget-object v1, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v1, v1, Lcom/syu/bt/db/Bt_Info;->mListPair:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public insertCallLog(Landroid/content/ContentValues;Z)V
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "bQueryCallLog"    # Z

    .prologue
    .line 124
    const-string v1, "his6"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 000 Bt_Info insertCallLog   values.toString = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " NUMBER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "number"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_0
    sget-object v1, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v2, "db-operation-history"

    new-instance v3, Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;

    invoke-direct {v3, p0, p1, p2}, Lcom/syu/bt/db/Bt_Info$RunnableInsertCallLog;-><init>(Lcom/syu/bt/db/Bt_Info;Landroid/content/ContentValues;Z)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "his6"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " 111 insertCallLog Exception e = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public queryCallLogAll()Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v16, "listHistory":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const/4 v8, 0x0

    .line 236
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 237
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "number"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "date"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 238
    const-string v7, "date DESC"

    .line 236
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 240
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 241
    const-string v2, "type"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 242
    .local v13, "indexType":I
    const-string v2, "date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 243
    .local v11, "indexDate":I
    const-string v2, "number"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 244
    .local v12, "indexNumber":I
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    .line 268
    .end local v11    # "indexDate":I
    .end local v12    # "indexNumber":I
    .end local v13    # "indexType":I
    :cond_0
    if-eqz v8, :cond_1

    .line 269
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 275
    :cond_1
    :goto_1
    return-object v16

    .line 245
    .restart local v11    # "indexDate":I
    .restart local v12    # "indexNumber":I
    .restart local v13    # "indexType":I
    :cond_2
    :try_start_2
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 246
    .local v10, "iType":I
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 247
    .local v14, "lData":J
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 249
    .local v18, "strNumber":Ljava/lang/String;
    new-instance v17, Landroid/util/SparseArray;

    invoke-direct/range {v17 .. v17}, Landroid/util/SparseArray;-><init>()V

    .line 250
    .local v17, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v2, 0x283b

    if-eqz v18, :cond_3

    .end local v18    # "strNumber":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    const/16 v2, 0x2837

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 252
    const/16 v2, 0x2838

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    sget-boolean v2, Lcom/syu/bt/App_Bt;->hideBtnWhenDisconnect:Z

    if-eqz v2, :cond_4

    .line 254
    const/16 v2, 0x283c

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/syu/bt/util/BTUtil;->getTimeFromMillisecond(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 255
    const/16 v2, 0x283d

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/syu/bt/util/BTUtil;->getDateTimeFromMillisecond(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    :goto_3
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 264
    .end local v10    # "iType":I
    .end local v11    # "indexDate":I
    .end local v12    # "indexNumber":I
    .end local v13    # "indexType":I
    .end local v14    # "lData":J
    .end local v17    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 265
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 268
    if-eqz v8, :cond_1

    .line 269
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 270
    :catch_1
    move-exception v9

    .line 271
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 250
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "iType":I
    .restart local v11    # "indexDate":I
    .restart local v12    # "indexNumber":I
    .restart local v13    # "indexType":I
    .restart local v14    # "lData":J
    .restart local v17    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v18    # "strNumber":Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v18, ""

    goto :goto_2

    .line 257
    .end local v18    # "strNumber":Ljava/lang/String;
    :cond_4
    const/16 v2, 0x283c

    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    invoke-static {v3, v14, v15}, Lcom/lsec/core/util/FuncUtils;->formatHistoryTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 266
    .end local v10    # "iType":I
    .end local v11    # "indexDate":I
    .end local v12    # "indexNumber":I
    .end local v13    # "indexType":I
    .end local v14    # "lData":J
    .end local v17    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    .line 268
    if-eqz v8, :cond_5

    .line 269
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 273
    :cond_5
    :goto_4
    throw v2

    .line 270
    :catch_2
    move-exception v9

    .line 271
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 270
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 271
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public queryContacts()V
    .locals 21

    .prologue
    .line 973
    const-string v2, "BOOK"

    const-string v3, "------------------queryContacts-----------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    sput-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead:Ljava/lang/String;

    .line 975
    sget-object v2, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sput-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead1:Ljava/lang/String;

    .line 976
    const/16 v19, 0x0

    .line 977
    .local v19, "needSaveContacts":Z
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 978
    .local v16, "listContact":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const/4 v12, 0x1

    .line 979
    .local v12, "doSave":Z
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bSaveContactsToUrl:Z

    if-nez v2, :cond_0

    .line 980
    const/4 v12, 0x0

    .line 983
    :cond_0
    const/4 v9, 0x1

    .line 984
    .local v9, "bNotEmpty":Z
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_a

    .line 985
    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead1:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 986
    const/4 v9, 0x0

    .line 991
    :cond_1
    :goto_0
    const-string v2, "save11"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " 00 queryContacts doSave:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    if-eqz v12, :cond_4

    .line 993
    const/4 v10, 0x0

    .line 994
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "save11"

    const-string v3, "-------------auto downloadBook------------- NUMBER data1 DISPLAY_NAME = display_name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "data1"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "display_name"

    aput-object v3, v4, v2

    .line 997
    .local v4, "mContactsProjection":[Ljava/lang/String;
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "display_name COLLATE LOCALIZED ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 998
    const-string v2, "save11"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "-------------auto downloadBook------------- ContactsContract.Contacts.DISPLAY_NAME display_name  cursor.getCount() = "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_3

    .line 1000
    const-string v2, "display_name"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1001
    .local v14, "iName":I
    const-string v2, "data1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1002
    .local v15, "iNumber":I
    const-string v2, "save11"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, " 11  queryContacts iName:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "iNumber:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :cond_2
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_b

    .line 1026
    .end local v14    # "iName":I
    .end local v15    # "iNumber":I
    :cond_3
    :goto_2
    if-eqz v10, :cond_4

    .line 1027
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1033
    .end local v4    # "mContactsProjection":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    :cond_4
    :goto_3
    const-string v2, "BOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "------------------Read Contacts From Url-----------------------"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const-string v2, "BOOK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "bNotEmpty:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "LLL:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrDelete:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    const-string v2, "save11"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "sPhoneAddr:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "sPhoneAddrRead:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead:Ljava/lang/String;

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 1037
    .local v8, "bAddrRead":Z
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_5

    .line 1038
    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead:Ljava/lang/String;

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead1:Ljava/lang/String;

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v8, 0x0

    .line 1039
    :cond_5
    :goto_4
    if-eqz v9, :cond_9

    if-eqz v8, :cond_9

    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrDelete:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1040
    const-string v2, "BOOK1"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "-------------auto downloadBook------------- listContact.size "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_7

    .line 1042
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bSaveContactsToUrl:Z

    if-nez v2, :cond_10

    .line 1043
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v2

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/util/BTUtil;->readFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 1044
    .local v11, "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1045
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1055
    .end local v11    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    :cond_6
    :goto_5
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoDownPhoneBook:Z

    if-eqz v2, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_7

    .line 1056
    const-string v2, "BOOK"

    const-string v3, "-------------auto downloadBook-------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-static {}, Lcom/syu/app/ipc/Bt_IpcObj;->downloadBook()V

    .line 1061
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/db/Bt_Info;->mGetListContact:Lcom/syu/bt/db/Bt_Info$GetListContact;

    if-eqz v2, :cond_8

    .line 1062
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/db/Bt_Info;->mGetListContact:Lcom/syu/bt/db/Bt_Info$GetListContact;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 1063
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/db/Bt_Info;->mGetListContact:Lcom/syu/bt/db/Bt_Info$GetListContact;

    invoke-virtual {v2}, Lcom/syu/bt/db/Bt_Info$GetListContact;->stopRun()V

    .line 1064
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/db/Bt_Info;->mGetListContact:Lcom/syu/bt/db/Bt_Info$GetListContact;

    .line 1067
    :cond_8
    new-instance v2, Lcom/syu/bt/db/Bt_Info$GetListContact;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v2, v0, v1}, Lcom/syu/bt/db/Bt_Info$GetListContact;-><init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/db/Bt_Info;->mGetListContact:Lcom/syu/bt/db/Bt_Info$GetListContact;

    .line 1068
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/db/Bt_Info;->mGetListContact:Lcom/syu/bt/db/Bt_Info$GetListContact;

    invoke-static {v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    .line 1069
    if-eqz v19, :cond_9

    .line 1070
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v3, "db-operation-contact"

    new-instance v5, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;-><init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;)V

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v2, v3, v5, v6, v7}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 1073
    :cond_9
    const-string v2, ""

    sput-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead:Ljava/lang/String;

    .line 1074
    const-string v2, ""

    sput-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead1:Ljava/lang/String;

    .line 1075
    return-void

    .line 988
    .end local v8    # "bAddrRead":Z
    :cond_a
    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 989
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1005
    .restart local v4    # "mContactsProjection":[Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "iName":I
    .restart local v15    # "iNumber":I
    :cond_b
    :try_start_2
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v2, :cond_d

    .line 1006
    if-eqz v9, :cond_c

    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead:Ljava/lang/String;

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead1:Ljava/lang/String;

    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1011
    :cond_c
    if-eqz v9, :cond_3

    .line 1014
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 1015
    .local v18, "name":Ljava/lang/String;
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1016
    .local v20, "number":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1017
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/syu/bt/App_Bt;->getNewMapContact(Ljava/lang/String;Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v17

    .line 1018
    .local v17, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 1022
    .end local v4    # "mContactsProjection":[Ljava/lang/String;
    .end local v14    # "iName":I
    .end local v15    # "iNumber":I
    .end local v17    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v18    # "name":Ljava/lang/String;
    .end local v20    # "number":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 1023
    .local v13, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1026
    if-eqz v10, :cond_4

    .line 1027
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 1028
    :catch_1
    move-exception v13

    .line 1029
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1008
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v4    # "mContactsProjection":[Ljava/lang/String;
    .restart local v14    # "iName":I
    .restart local v15    # "iNumber":I
    :cond_d
    if-eqz v9, :cond_c

    :try_start_5
    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrRead:Ljava/lang/String;

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_2

    .line 1024
    .end local v4    # "mContactsProjection":[Ljava/lang/String;
    .end local v14    # "iName":I
    .end local v15    # "iNumber":I
    :catchall_0
    move-exception v2

    .line 1026
    if-eqz v10, :cond_e

    .line 1027
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1031
    :cond_e
    :goto_6
    throw v2

    .line 1028
    :catch_2
    move-exception v13

    .line 1029
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1028
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v4    # "mContactsProjection":[Ljava/lang/String;
    :catch_3
    move-exception v13

    .line 1029
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 1038
    .end local v4    # "mContactsProjection":[Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v8    # "bAddrRead":Z
    :cond_f
    const/4 v8, 0x1

    goto/16 :goto_4

    .line 1047
    :cond_10
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bAutoSavePhoneBook:Z

    if-eqz v2, :cond_6

    .line 1048
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v2

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    const-string v5, ":"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/syu/bt/util/BTUtil;->readFile(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 1049
    .restart local v11    # "data":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1050
    const/16 v19, 0x1

    .line 1051
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5
.end method

.method public queryHistory(Ljava/util/List;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p1, "listContactInQuery":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const-string v2, "his"

    const-string v3, " 000  queryHistory Bt_Info queryHistory CallLog.Calls.NUMBER = number"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v18, "listHistoryIn":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v20, "listHistoryOut":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 285
    .local v19, "listHistoryMiss":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v8, "listHistoryAll":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    sput-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrReadHistory:Ljava/lang/String;

    .line 287
    const/4 v9, 0x0

    .line 288
    .local v9, "bEmpty":Z
    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrReadHistory:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    const/4 v9, 0x1

    .line 291
    :cond_0
    const/4 v10, 0x0

    .line 293
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 294
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "number"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "date"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 295
    const-string v7, "date DESC"

    .line 293
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 300
    if-eqz v10, :cond_2

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 301
    const-string v2, "type"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 302
    .local v15, "indexType":I
    const-string v2, "date"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 303
    .local v13, "indexDate":I
    const-string v2, "number"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 304
    .local v14, "indexNumber":I
    :cond_1
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    .line 370
    .end local v13    # "indexDate":I
    .end local v14    # "indexNumber":I
    .end local v15    # "indexType":I
    :cond_2
    if-eqz v10, :cond_3

    .line 371
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 377
    :cond_3
    :goto_1
    if-nez v9, :cond_5

    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrReadHistory:Ljava/lang/String;

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 378
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-nez v2, :cond_e

    .line 379
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/db/Bt_Info;->mGetListHistoryAll:Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;

    if-eqz v2, :cond_4

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/db/Bt_Info;->mGetListHistoryAll:Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;

    invoke-static {v2}, Lcom/lsec/core/ipc/module/main/Main;->removeRunnable_Ui(Ljava/lang/Runnable;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/syu/bt/db/Bt_Info;->mGetListHistoryAll:Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;

    invoke-virtual {v2}, Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;->stopRun()V

    .line 382
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/db/Bt_Info;->mGetListHistoryAll:Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;

    .line 385
    :cond_4
    new-instance v2, Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;

    .line 386
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1, v8}, Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;-><init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;Ljava/util/List;)V

    .line 385
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/db/Bt_Info;->mGetListHistoryAll:Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;

    .line 387
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bBtAcc_On:Z

    if-eqz v2, :cond_d

    .line 388
    const/4 v2, 0x0

    sput-boolean v2, Lcom/syu/bt/App_Bt;->bBtAcc_On:Z

    .line 389
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/db/Bt_Info;->mGetListHistoryAll:Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;

    const-wide/16 v4, 0xbb8

    invoke-static {v2, v3, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    .line 402
    :cond_5
    :goto_2
    const-string v2, "BOOK"

    const-string v3, "queryHistory"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    const-string v2, ""

    sput-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrReadHistory:Ljava/lang/String;

    .line 404
    return-void

    .line 305
    .restart local v13    # "indexDate":I
    .restart local v14    # "indexNumber":I
    .restart local v15    # "indexType":I
    :cond_6
    if-nez v9, :cond_7

    :try_start_2
    sget-object v2, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrReadHistory:Ljava/lang/String;

    sget-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    :cond_7
    if-nez v9, :cond_2

    .line 311
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 312
    .local v12, "iType":I
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 314
    .local v16, "lData":J
    invoke-interface {v10, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 316
    .local v22, "strNumber":Ljava/lang/String;
    const-string v2, "his3"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 22 Bt_Info queryHistory strNumber = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " iType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v21, Landroid/util/SparseArray;

    invoke-direct/range {v21 .. v21}, Landroid/util/SparseArray;-><init>()V

    .line 319
    .local v21, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v2, 0x283b

    if-eqz v22, :cond_8

    .end local v22    # "strNumber":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 320
    const/16 v2, 0x2837

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 321
    const/16 v2, 0x2838

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    sget-boolean v2, Lcom/syu/bt/App_Bt;->hideBtnWhenDisconnect:Z

    if-eqz v2, :cond_9

    .line 323
    const/16 v2, 0x283c

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/syu/bt/util/BTUtil;->getTimeFromMillisecond(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 324
    const/16 v2, 0x283d

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/syu/bt/util/BTUtil;->getDateTimeFromMillisecond(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 332
    :goto_4
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bHistoryLogAllFlag:Z

    if-eqz v2, :cond_c

    .line 333
    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    packed-switch v12, :pswitch_data_0

    goto/16 :goto_0

    .line 337
    :pswitch_0
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 366
    .end local v12    # "iType":I
    .end local v13    # "indexDate":I
    .end local v14    # "indexNumber":I
    .end local v15    # "indexType":I
    .end local v16    # "lData":J
    .end local v21    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 367
    .local v11, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 370
    if-eqz v10, :cond_3

    .line 371
    :try_start_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 372
    :catch_1
    move-exception v11

    .line 373
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 319
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v12    # "iType":I
    .restart local v13    # "indexDate":I
    .restart local v14    # "indexNumber":I
    .restart local v15    # "indexType":I
    .restart local v16    # "lData":J
    .restart local v21    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v22    # "strNumber":Ljava/lang/String;
    :cond_8
    :try_start_5
    const-string v22, ""

    goto :goto_3

    .line 326
    .end local v22    # "strNumber":Ljava/lang/String;
    :cond_9
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bSyncHistory:Z

    if-eqz v2, :cond_b

    .line 327
    const/16 v2, 0x283c

    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/syu/bt/util/BTUtil;->getFormatTime(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 368
    .end local v12    # "iType":I
    .end local v13    # "indexDate":I
    .end local v14    # "indexNumber":I
    .end local v15    # "indexType":I
    .end local v16    # "lData":J
    .end local v21    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    .line 370
    if-eqz v10, :cond_a

    .line 371
    :try_start_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 375
    :cond_a
    :goto_5
    throw v2

    .line 329
    .restart local v12    # "iType":I
    .restart local v13    # "indexDate":I
    .restart local v14    # "indexNumber":I
    .restart local v15    # "indexType":I
    .restart local v16    # "lData":J
    .restart local v21    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :cond_b
    const/16 v2, 0x283c

    :try_start_7
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    move-wide/from16 v0, v16

    invoke-static {v3, v0, v1}, Lcom/lsec/core/util/FuncUtils;->formatHistoryTimeString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    .line 340
    :pswitch_1
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 343
    :pswitch_2
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 349
    :cond_c
    packed-switch v12, :pswitch_data_1

    :pswitch_3
    goto/16 :goto_0

    .line 352
    :pswitch_4
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 356
    :pswitch_5
    invoke-interface/range {v20 .. v21}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 360
    :pswitch_6
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 372
    .end local v12    # "iType":I
    .end local v13    # "indexDate":I
    .end local v14    # "indexNumber":I
    .end local v15    # "indexType":I
    .end local v16    # "lData":J
    .end local v21    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    :catch_2
    move-exception v11

    .line 373
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 372
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .line 373
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 391
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/db/Bt_Info;->mGetListHistoryAll:Lcom/syu/bt/db/Bt_Info$GetListHistoryAll;

    invoke-static {v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 394
    :cond_e
    new-instance v2, Lcom/syu/bt/db/Bt_Info$GetListHistory;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, v18

    move-object/from16 v6, v20

    move-object/from16 v7, v19

    invoke-direct/range {v2 .. v8}, Lcom/syu/bt/db/Bt_Info$GetListHistory;-><init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/syu/bt/db/Bt_Info;->mGetListHistory:Lcom/syu/bt/db/Bt_Info$GetListHistory;

    .line 395
    sget-boolean v2, Lcom/syu/bt/App_Bt;->bBtAcc_On:Z

    if-eqz v2, :cond_f

    .line 396
    const/4 v2, 0x0

    sput-boolean v2, Lcom/syu/bt/App_Bt;->bBtAcc_On:Z

    .line 397
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/db/Bt_Info;->mGetListHistory:Lcom/syu/bt/db/Bt_Info$GetListHistory;

    const-wide/16 v4, 0xbb8

    invoke-static {v2, v3, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto/16 :goto_2

    .line 399
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/syu/bt/db/Bt_Info;->mGetListHistory:Lcom/syu/bt/db/Bt_Info$GetListHistory;

    invoke-static {v2, v3}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;)V

    goto/16 :goto_2

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 349
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public queryNumberByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "strName"    # Ljava/lang/String;

    .prologue
    .line 1111
    const-string v13, ""

    .line 1112
    .local v13, "number":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1113
    const/4 v7, 0x0

    .line 1114
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1116
    .local v8, "cursorNumber":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1117
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1118
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_6

    .line 1147
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    .line 1148
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1154
    :cond_2
    :goto_1
    if-eqz v7, :cond_3

    .line 1155
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 1161
    :cond_3
    :goto_2
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1162
    sget-object v0, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v0, v0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1172
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "cursorNumber":Landroid/database/Cursor;
    :cond_5
    :goto_3
    return-object v13

    .line 1120
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "cursorNumber":Landroid/database/Cursor;
    :cond_6
    :try_start_3
    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1119
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1121
    .local v6, "contactName":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1122
    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    :cond_7
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "data1"

    aput-object v1, v2, v0

    .line 1124
    .local v2, "mContactsProjection":[Ljava/lang/String;
    sget-object v0, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    .line 1125
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 1127
    const-string v3, "display_name = ? "

    .line 1129
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    .line 1130
    const-string v5, "display_name COLLATE LOCALIZED ASC"

    .line 1125
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1132
    if-eqz v8, :cond_1

    .line 1133
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1135
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1136
    .local v10, "iNumber":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1137
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v13

    .line 1139
    goto :goto_0

    .line 1143
    .end local v2    # "mContactsProjection":[Ljava/lang/String;
    .end local v6    # "contactName":Ljava/lang/String;
    .end local v10    # "iNumber":I
    :catch_0
    move-exception v9

    .line 1144
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1147
    if-eqz v8, :cond_8

    .line 1148
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1154
    :cond_8
    :goto_4
    if-eqz v7, :cond_3

    .line 1155
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 1156
    :catch_1
    move-exception v9

    .line 1157
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1149
    :catch_2
    move-exception v9

    .line 1150
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 1145
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 1147
    if-eqz v8, :cond_9

    .line 1148
    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1154
    :cond_9
    :goto_5
    if-eqz v7, :cond_a

    .line 1155
    :try_start_8
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1159
    :cond_a
    :goto_6
    throw v0

    .line 1149
    :catch_3
    move-exception v9

    .line 1150
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1156
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    .line 1157
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1149
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    .line 1150
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1156
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v9

    .line 1157
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1162
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;

    .line 1163
    .local v11, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v1, 0x281c

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1164
    .local v12, "nameTmp":Ljava/lang/String;
    invoke-virtual {v12, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1165
    :cond_c
    const/16 v0, 0x281e

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "number":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 1166
    .restart local v13    # "number":Ljava/lang/String;
    goto/16 :goto_3
.end method

.method public queryNumberByPinYin(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "strNamePinYinFull"    # Ljava/lang/String;

    .prologue
    .line 1176
    const-string v16, ""

    .line 1177
    .local v16, "number":Ljava/lang/String;
    const/4 v12, -0x1

    .line 1178
    .local v12, "iLenDiff":I
    invoke-static/range {p1 .. p1}, Lcom/syu/bt/util/HanziToPinyin;->getSimplePinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1180
    .local v18, "strNamePinYin":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1181
    const/4 v9, 0x0

    .line 1182
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 1184
    .local v10, "cursorNumber":Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1185
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1186
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_6

    .line 1225
    :cond_1
    :goto_0
    if-eqz v10, :cond_2

    .line 1226
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1232
    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    .line 1233
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 1239
    :cond_3
    :goto_2
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1240
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    iget-object v2, v2, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1260
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "cursorNumber":Landroid/database/Cursor;
    :cond_5
    :goto_3
    return-object v16

    .line 1187
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "cursorNumber":Landroid/database/Cursor;
    :cond_6
    :try_start_3
    const-string v2, "display_name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1190
    .local v8, "contactName":Ljava/lang/String;
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1191
    const-string v2, ""

    invoke-static {v8, v2}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syu/bt/util/HanziToPinyin;->getSimplePinyin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1195
    .local v17, "pinyinTmp":Ljava/lang/String;
    :goto_4
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1196
    :cond_7
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 1197
    .local v14, "lenDiff":I
    if-lt v14, v12, :cond_8

    const/4 v2, -0x1

    if-ne v12, v2, :cond_0

    .line 1198
    :cond_8
    move v12, v14

    .line 1200
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "data1"

    aput-object v3, v4, v2

    .line 1201
    .local v4, "mContactsProjection":[Ljava/lang/String;
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->mContentResolver:Landroid/content/ContentResolver;

    .line 1202
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 1204
    const-string v5, "display_name = ? "

    .line 1206
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    .line 1207
    const-string v7, "display_name COLLATE LOCALIZED ASC"

    .line 1202
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1209
    if-eqz v10, :cond_9

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_9

    .line 1210
    const-string v2, "data1"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1211
    .local v13, "iNumber":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1212
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1215
    .end local v13    # "iNumber":I
    :cond_9
    if-nez v12, :cond_0

    goto/16 :goto_0

    .line 1193
    .end local v4    # "mContactsProjection":[Ljava/lang/String;
    .end local v14    # "lenDiff":I
    .end local v17    # "pinyinTmp":Ljava/lang/String;
    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v8, v2, v3}, Lcom/syu/bt/util/HanziToPinyin;->getPinYin(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/syu/bt/util/HanziToPinyin;->getSimplePinyin(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v17

    .restart local v17    # "pinyinTmp":Ljava/lang/String;
    goto :goto_4

    .line 1221
    .end local v8    # "contactName":Ljava/lang/String;
    .end local v17    # "pinyinTmp":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1222
    .local v11, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1225
    if-eqz v10, :cond_b

    .line 1226
    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1232
    :cond_b
    :goto_5
    if-eqz v9, :cond_3

    .line 1233
    :try_start_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_2

    .line 1234
    :catch_1
    move-exception v11

    .line 1235
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1227
    :catch_2
    move-exception v11

    .line 1228
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1223
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 1225
    if-eqz v10, :cond_c

    .line 1226
    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1232
    :cond_c
    :goto_6
    if-eqz v9, :cond_d

    .line 1233
    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1237
    :cond_d
    :goto_7
    throw v2

    .line 1227
    :catch_3
    move-exception v11

    .line 1228
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1234
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v11

    .line 1235
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1227
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v11

    .line 1228
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1234
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v11

    .line 1235
    .restart local v11    # "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1240
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    .line 1242
    .local v15, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1243
    const/16 v2, 0x281c

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, ""

    invoke-static {v2, v5}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1247
    .restart local v17    # "pinyinTmp":Ljava/lang/String;
    :goto_8
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1248
    :cond_f
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 1249
    .restart local v14    # "lenDiff":I
    if-lt v14, v12, :cond_10

    const/4 v2, -0x1

    if-ne v12, v2, :cond_4

    .line 1250
    :cond_10
    move v12, v14

    .line 1251
    const/16 v2, 0x281e

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "number":Ljava/lang/String;
    check-cast v16, Ljava/lang/String;

    .line 1252
    .restart local v16    # "number":Ljava/lang/String;
    if-nez v12, :cond_4

    goto/16 :goto_3

    .line 1245
    .end local v14    # "lenDiff":I
    .end local v17    # "pinyinTmp":Ljava/lang/String;
    :cond_11
    const/16 v2, 0x281c

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v6}, Lcom/syu/bt/util/HanziToPinyin;->getPinYin(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v17

    .restart local v17    # "pinyinTmp":Ljava/lang/String;
    goto :goto_8
.end method

.method public saveCallLog(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "mList":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .local p2, "mList2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const/16 v9, 0x283b

    const/16 v8, 0x2838

    const/16 v7, 0x2837

    const/4 v6, 0x0

    .line 1395
    const-string v2, "his7"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 000 Ipc_New saveCallLog listType mList = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    const-string v2, "his7"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " 111 Ipc_New saveCallLog listType mList2 = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1411
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1423
    return-void

    .line 1399
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1400
    .local v0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1401
    .local v1, "values":Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "values":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1402
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v4, "type"

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    const-string v4, "date"

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1404
    const-string v4, "number"

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    if-eqz v1, :cond_0

    .line 1407
    const-string v2, "his3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 222 Ipc_New saveCallLog listType "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v2, v1, v6}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    goto :goto_0

    .line 1411
    .end local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "values":Landroid/content/ContentValues;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1412
    .restart local v0    # "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1413
    .restart local v1    # "values":Landroid/content/ContentValues;
    new-instance v1, Landroid/content/ContentValues;

    .end local v1    # "values":Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1414
    .restart local v1    # "values":Landroid/content/ContentValues;
    const-string v4, "type"

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget v5, Lcom/syu/bt/App_Bt;->iPhone2HisStep:I

    add-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1415
    const-string v4, "date"

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    const-string v4, "number"

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    if-eqz v1, :cond_1

    .line 1419
    const-string v2, "his3"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 111 Ipc_New saveCallLog listType "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    sget-object v2, Lcom/syu/bt/App_Bt;->mBtInfo:Lcom/syu/bt/db/Bt_Info;

    invoke-virtual {v2, v1, v6}, Lcom/syu/bt/db/Bt_Info;->insertCallLog(Landroid/content/ContentValues;Z)V

    goto/16 :goto_1
.end method

.method public saveDownloadContacts()V
    .locals 9

    .prologue
    const/16 v8, 0x281c

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1462
    const-string v3, "save11"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 000 Bt_Info  saveDownloadContacts  bLinkTwoPhone = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v3, :cond_1

    .line 1464
    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v3, v3, v7

    sput-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    .line 1465
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    if-nez v3, :cond_2

    .line 1501
    :cond_0
    :goto_0
    return-void

    .line 1467
    :cond_1
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1470
    :cond_2
    const-string v3, "con4"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 111 Bt_Info  saveDownloadContacts mListContact = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    const-string v3, "con4"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 222 Bt_Info  saveDownloadContacts mListContact2 = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1476
    .local v0, "listSave":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    sget-boolean v3, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v3, :cond_3

    .line 1478
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v4, "phone1_mac"

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v4, "phone2_mac"

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v4, "phone1_name"

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v4, "phone2_name"

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    sget-object v3, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v3, v3, v7

    sput-object v3, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    .line 1483
    const-string v3, "save11"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 22 Bt_Info  saveDownloadContacts mListContact2 = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1485
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1486
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1487
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1495
    :cond_3
    iget-object v3, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1496
    const-string v3, "save11"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 33 Bt_Info saveDownloadContacts sPhoneAddr"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - listSave = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v4, "db-operation-contact"

    new-instance v5, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;

    invoke-direct {v5, p0, v0}, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;-><init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;)V

    invoke-static {v3, v4, v5, v6, v6}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 1499
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v4, "db-operation-contact"

    new-instance v5, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContactsIntoFile;

    invoke-direct {v5, p0, v0}, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContactsIntoFile;-><init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;)V

    invoke-static {v3, v4, v5, v6, v6}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    goto/16 :goto_0

    .line 1487
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1488
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1489
    .local v2, "name":Ljava/lang/String;
    const-string v4, "hfp2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1490
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "hfp2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1491
    :cond_5
    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public saveDownloadContacts(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "list1":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    .local p2, "list2":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    const/16 v8, 0x281c

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1431
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    .local v0, "listSave":Ljava/util/List;, "Ljava/util/List<Landroid/util/SparseArray<Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v4, "phone1_mac"

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v4, "phone2_mac"

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_MAC:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v4, "phone1_name"

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    const-string v4, "phone2_name"

    sget-object v5, Lcom/syu/bt/App_Bt;->sPhone2_NAME:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/lsec/core/util/MySharePreference2;->saveStringValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    const-string v3, "save11"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 00 Bt_Info  saveDownloadContacts list2 = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1442
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1443
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1444
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1451
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1452
    const-string v3, "save11"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " 11 Bt_Info  saveDownloadContacts listSave = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v4, "db-operation-contact"

    new-instance v5, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;

    invoke-direct {v5, p0, v0}, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContacts;-><init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;)V

    invoke-static {v3, v4, v5, v6, v6}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 1455
    sget-object v3, Lcom/lsec/core/frame/app/MyApplication;->mStrZipTag:Ljava/lang/String;

    const-string v4, "db-operation-contact"

    new-instance v5, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContactsIntoFile;

    invoke-direct {v5, p0, v0}, Lcom/syu/bt/db/Bt_Info$RunnableSaveDownloadContactsIntoFile;-><init>(Lcom/syu/bt/db/Bt_Info;Ljava/util/List;)V

    invoke-static {v3, v4, v5, v6, v6}, Lcom/lsec/core/frame/app/MyApplication;->startThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;ZI)V

    .line 1456
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1457
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1458
    return-void

    .line 1444
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1445
    .local v1, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1446
    .local v2, "name":Ljava/lang/String;
    const-string v4, "hfp2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "hfp2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1448
    :cond_2
    invoke-virtual {v1, v8, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public savePhoneBook()V
    .locals 3

    .prologue
    .line 1504
    const-string v0, "save11"

    const-string v1, " 111 Bt_Info  savePhoneBook  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    sget-boolean v0, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v0, :cond_3

    .line 1508
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1509
    :cond_1
    invoke-virtual {p0}, Lcom/syu/bt/db/Bt_Info;->saveDownloadContacts()V

    .line 1511
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_saving"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    .line 1526
    :goto_0
    return-void

    .line 1513
    :cond_2
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_no_download_data"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1516
    :cond_3
    sget-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrWrite:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/syu/app/ipc/Bt_IpcObj;->sPhoneAddrWrite:Ljava/lang/String;

    sget-object v1, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1517
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_contacts_saved"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1518
    :cond_4
    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 1519
    invoke-virtual {p0}, Lcom/syu/bt/db/Bt_Info;->saveDownloadContacts()V

    .line 1521
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_saving"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 1523
    :cond_5
    invoke-static {}, Lcom/syu/bt/util/ToastUtil;->getInstance()Lcom/syu/bt/util/ToastUtil;

    move-result-object v0

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v1

    iget-object v1, v1, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v2, "bt_no_download_data"

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/app/MyUi;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/syu/bt/util/ToastUtil;->showMessage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnRefreshListener(Lcom/syu/bt/db/Bt_Info$RefreshColllogListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/syu/bt/db/Bt_Info$RefreshColllogListener;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/syu/bt/db/Bt_Info;->refresh:Lcom/syu/bt/db/Bt_Info$RefreshColllogListener;

    .line 488
    return-void
.end method

.method public simplifyNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1583
    move-object v6, p1

    .line 1584
    .local v6, "strRet":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1585
    const/16 v2, 0xff

    .line 1586
    .local v2, "id":I
    const-string v7, "+"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1587
    .local v4, "pos":I
    const-string v7, "00"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1589
    .local v5, "pos1":I
    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 1591
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v7, Lcom/syu/bt/db/Bt_Info;->startNum:[Ljava/lang/String;

    array-length v7, v7

    if-lt v1, v7, :cond_2

    .line 1677
    .end local v1    # "i":I
    .end local v2    # "id":I
    .end local v4    # "pos":I
    .end local v5    # "pos1":I
    :cond_1
    :goto_1
    const-string v7, "\\D"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 1593
    .restart local v1    # "i":I
    .restart local v2    # "id":I
    .restart local v4    # "pos":I
    .restart local v5    # "pos1":I
    :cond_2
    :try_start_0
    sget-object v7, Lcom/syu/bt/db/Bt_Info;->startNum:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1594
    sget-object v7, Lcom/syu/bt/db/Bt_Info;->startNum:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    .line 1595
    .local v3, "len":I
    sget-object v7, Lcom/syu/bt/db/Bt_Info;->startNum:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, "33"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1596
    sget-object v7, Lcom/syu/bt/db/Bt_Info;->startNum:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, "0"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1597
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v3, :cond_4

    .line 1598
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 1600
    :cond_4
    sget-object v7, Lcom/syu/bt/db/Bt_Info;->startNum:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 1604
    .end local v3    # "len":I
    :catch_0
    move-exception v0

    .line 1605
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1591
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sortContact()V
    .locals 3

    .prologue
    .line 1090
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1091
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1092
    .local v0, "language":Ljava/lang/String;
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/syu/bt/db/Bt_Info;->bIsTR:Z

    .line 1093
    sget-object v1, Lcom/syu/bt/App_Bt;->mLocale:Ljava/lang/String;

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/syu/bt/App_Bt;->mLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1094
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    sget-object v2, Lcom/syu/bt/db/Bt_Info;->comparator2_Contact:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1098
    .end local v0    # "language":Ljava/lang/String;
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/syu/bt/App_Bt;->bLinkTwoPhone:Z

    if-eqz v1, :cond_1

    .line 1099
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1101
    .restart local v0    # "language":Ljava/lang/String;
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/syu/bt/db/Bt_Info;->bIsTR:Z

    .line 1102
    sget-object v1, Lcom/syu/bt/App_Bt;->mLocale:Ljava/lang/String;

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/syu/bt/App_Bt;->mLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1103
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    sget-object v2, Lcom/syu/bt/db/Bt_Info;->comparator2_Contact:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1108
    .end local v0    # "language":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1096
    .restart local v0    # "language":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info;->mListContact:Ljava/util/List;

    sget-object v2, Lcom/syu/bt/db/Bt_Info;->comparator_Contact:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 1105
    :cond_3
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info;->mListContact2:Ljava/util/List;

    sget-object v2, Lcom/syu/bt/db/Bt_Info;->comparator_Contact:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method public sortContact_Fav()V
    .locals 3

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1081
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1082
    .local v0, "language":Ljava/lang/String;
    const-string v1, "tr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/syu/bt/db/Bt_Info;->bIsTR:Z

    .line 1083
    sget-object v1, Lcom/syu/bt/App_Bt;->mLocale:Ljava/lang/String;

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/syu/bt/App_Bt;->mLocale:Ljava/lang/String;

    const-string v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1084
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    sget-object v2, Lcom/syu/bt/db/Bt_Info;->comparator2_Contact:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 1086
    :cond_1
    iget-object v1, p0, Lcom/syu/bt/db/Bt_Info;->mListFavContact:Ljava/util/List;

    sget-object v2, Lcom/syu/bt/db/Bt_Info;->comparator_Contact:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method
