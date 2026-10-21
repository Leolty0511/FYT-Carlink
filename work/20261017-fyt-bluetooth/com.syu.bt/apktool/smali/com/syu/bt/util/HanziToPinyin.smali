.class public Lcom/syu/bt/util/HanziToPinyin;
.super Ljava/lang/Object;
.source "HanziToPinyin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/util/HanziToPinyin$Token;
    }
.end annotation


# static fields
.field private static final COLLATOR:Ljava/text/Collator;

.field private static final FIRST_PINYIN_UNIHAN:Ljava/lang/String; = "\u963f"

.field private static final LAST_PINYIN_UNIHAN:Ljava/lang/String; = "\u9fff"

.field public static final PINYINS:[[B

.field public static final UNIHANS:[C

.field private static sInstance:Lcom/syu/bt/util/HanziToPinyin;


# instance fields
.field private final mHasChinaCollator:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0x4e

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x6

    .line 13
    const/16 v0, 0x1a8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/syu/bt/util/HanziToPinyin;->UNIHANS:[C

    .line 86
    const/16 v0, 0x1a8

    new-array v0, v0, [[B

    new-array v1, v5, [B

    const/16 v2, 0x41

    aput-byte v2, v1, v6

    aput-object v1, v0, v6

    .line 87
    new-array v1, v5, [B

    const/16 v2, 0x41

    aput-byte v2, v1, v6

    const/16 v2, 0x49

    aput-byte v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v5, [B

    const/16 v2, 0x41

    aput-byte v2, v1, v6

    aput-byte v9, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x3

    .line 88
    new-array v2, v5, [B

    const/16 v3, 0x41

    aput-byte v3, v2, v6

    aput-byte v9, v2, v7

    const/16 v3, 0x47

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v5, [B

    const/16 v3, 0x41

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 89
    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    new-array v1, v5, [B

    const/16 v2, 0x42

    aput-byte v2, v1, v6

    const/16 v2, 0x41

    aput-byte v2, v1, v7

    const/16 v2, 0x49

    aput-byte v2, v1, v8

    aput-object v1, v0, v5

    const/4 v1, 0x7

    .line 90
    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 91
    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 92
    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 93
    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 94
    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 95
    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 96
    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v5, [B

    const/16 v3, 0x42

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 97
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 98
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 99
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    .line 100
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    .line 101
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    .line 102
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x21

    .line 103
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 104
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x25

    .line 105
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x27

    .line 106
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x29

    .line 107
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    .line 108
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x55

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    .line 109
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x41

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x41

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    .line 110
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x41

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/16 v1, 0x31

    .line 111
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x33

    .line 112
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x35

    .line 113
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x37

    .line 114
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x39

    .line 115
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    .line 116
    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    .line 117
    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    .line 118
    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x41

    .line 119
    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x43

    .line 120
    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x45

    .line 121
    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x47

    .line 122
    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x49

    .line 123
    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    .line 124
    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    .line 125
    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    new-array v1, v5, [B

    const/16 v2, 0x44

    aput-byte v2, v1, v6

    const/16 v2, 0x55

    aput-byte v2, v1, v7

    const/16 v2, 0x41

    aput-byte v2, v1, v8

    const/4 v2, 0x3

    aput-byte v9, v1, v2

    aput-object v1, v0, v9

    const/16 v1, 0x4f

    .line 126
    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x51

    .line 127
    new-array v2, v5, [B

    const/16 v3, 0x44

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v5, [B

    const/16 v3, 0x45

    aput-byte v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x53

    .line 128
    new-array v2, v5, [B

    const/16 v3, 0x45

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v5, [B

    const/16 v3, 0x45

    aput-byte v3, v2, v6

    aput-byte v9, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x55

    .line 129
    new-array v2, v5, [B

    const/16 v3, 0x45

    aput-byte v3, v2, v6

    aput-byte v9, v2, v7

    const/16 v3, 0x47

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v5, [B

    const/16 v3, 0x45

    aput-byte v3, v2, v6

    const/16 v3, 0x52

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x57

    .line 130
    new-array v2, v5, [B

    const/16 v3, 0x46

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v5, [B

    const/16 v3, 0x46

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x59

    .line 131
    new-array v2, v5, [B

    const/16 v3, 0x46

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v5, [B

    const/16 v3, 0x46

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    .line 132
    new-array v2, v5, [B

    const/16 v3, 0x46

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v5, [B

    const/16 v3, 0x46

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    .line 133
    new-array v2, v5, [B

    const/16 v3, 0x46

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v5, [B

    const/16 v3, 0x46

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    .line 134
    new-array v2, v5, [B

    const/16 v3, 0x46

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v5, [B

    const/16 v3, 0x46

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x61

    .line 135
    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x63

    .line 136
    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x65

    .line 137
    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x67

    .line 138
    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x69

    .line 139
    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    .line 140
    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    .line 141
    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    .line 142
    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x71

    .line 143
    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x73

    .line 144
    new-array v2, v5, [B

    const/16 v3, 0x47

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x75

    .line 145
    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x77

    .line 146
    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x79

    .line 147
    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    .line 148
    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    .line 149
    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x4d

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    .line 150
    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x81

    .line 151
    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x83

    .line 152
    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x85

    .line 153
    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x87

    .line 154
    new-array v2, v5, [B

    const/16 v3, 0x48

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x89

    .line 155
    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    .line 156
    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    .line 157
    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    .line 158
    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x91

    .line 159
    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x93

    .line 160
    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x95

    .line 161
    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x97

    .line 162
    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x99

    .line 163
    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    .line 164
    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    .line 165
    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    .line 166
    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    .line 167
    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    .line 168
    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    .line 169
    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    .line 170
    new-array v2, v5, [B

    const/16 v3, 0x4b

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    .line 171
    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xab

    .line 172
    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xad

    .line 173
    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    .line 174
    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    .line 175
    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    .line 176
    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    .line 177
    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    .line 178
    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    .line 179
    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    .line 180
    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    .line 181
    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    .line 182
    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-array v2, v5, [B

    const/16 v3, 0x4c

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    .line 183
    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    .line 184
    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    .line 185
    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    .line 186
    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    .line 187
    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    .line 188
    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    .line 189
    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    .line 190
    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    .line 191
    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    .line 192
    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-array v2, v5, [B

    const/16 v3, 0x4d

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    .line 193
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    .line 194
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    .line 195
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    .line 196
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    .line 197
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    .line 198
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    .line 199
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    .line 200
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    .line 201
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    .line 202
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    .line 203
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    .line 204
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xed

    .line 205
    new-array v2, v5, [B

    aput-byte v9, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-array v2, v5, [B

    const/16 v3, 0x4f

    aput-byte v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xef

    .line 206
    new-array v2, v5, [B

    const/16 v3, 0x4f

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    .line 207
    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    .line 208
    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    .line 209
    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    .line 210
    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    .line 211
    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    .line 212
    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    .line 213
    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xff

    .line 214
    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-array v2, v5, [B

    const/16 v3, 0x50

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x101

    .line 215
    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x103

    .line 216
    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x105

    .line 217
    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x107

    .line 218
    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x109

    .line 219
    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    .line 220
    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    .line 221
    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-array v2, v5, [B

    const/16 v3, 0x51

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    .line 222
    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x111

    .line 223
    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x113

    .line 224
    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x115

    .line 225
    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x117

    .line 226
    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x119

    .line 227
    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    .line 228
    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    .line 229
    new-array v2, v5, [B

    const/16 v3, 0x52

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    .line 230
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x121

    .line 231
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x123

    .line 232
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x125

    .line 233
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x127

    .line 234
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x129

    .line 235
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    .line 236
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    .line 237
    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    .line 238
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x131

    .line 239
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x55

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x133

    .line 240
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x41

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x41

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x135

    .line 241
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x41

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-array v2, v5, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/16 v1, 0x137

    .line 242
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x139

    .line 243
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    .line 244
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    .line 245
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    .line 246
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x141

    .line 247
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x143

    .line 248
    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x145

    .line 249
    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x147

    .line 250
    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x149

    .line 251
    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    .line 252
    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    .line 253
    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    .line 254
    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x151

    .line 255
    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x153

    .line 256
    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x154

    new-array v2, v5, [B

    const/16 v3, 0x54

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x155

    .line 257
    new-array v2, v5, [B

    const/16 v3, 0x57

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x156

    new-array v2, v5, [B

    const/16 v3, 0x57

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x157

    .line 258
    new-array v2, v5, [B

    const/16 v3, 0x57

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x158

    new-array v2, v5, [B

    const/16 v3, 0x57

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x159

    .line 259
    new-array v2, v5, [B

    const/16 v3, 0x57

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    new-array v2, v5, [B

    const/16 v3, 0x57

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    .line 260
    new-array v2, v5, [B

    const/16 v3, 0x57

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    new-array v2, v5, [B

    const/16 v3, 0x57

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    .line 261
    new-array v2, v5, [B

    const/16 v3, 0x57

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    .line 262
    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x160

    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x161

    .line 263
    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x162

    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x163

    .line 264
    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x164

    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x165

    .line 265
    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x166

    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x167

    .line 266
    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x168

    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x169

    .line 267
    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    .line 268
    new-array v2, v5, [B

    const/16 v3, 0x58

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    .line 269
    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    .line 270
    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x170

    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x171

    .line 271
    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x172

    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x173

    .line 272
    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x174

    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x175

    .line 273
    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x176

    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x177

    .line 274
    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x178

    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x179

    .line 275
    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    .line 276
    new-array v2, v5, [B

    const/16 v3, 0x4a

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    new-array v2, v5, [B

    const/16 v3, 0x59

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    .line 277
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    .line 278
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x180

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x181

    .line 279
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x41

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x182

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x183

    .line 280
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x184

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x185

    .line 281
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x45

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x186

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x187

    .line 282
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x188

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x189

    .line 283
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    new-array v2, v5, [B

    const/16 v3, 0x43

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    .line 284
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    .line 285
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    .line 286
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x45

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x190

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x191

    .line 287
    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x192

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x193

    .line 288
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x194

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x55

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x195

    .line 289
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x196

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x41

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x197

    .line 290
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x41

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x198

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x41

    aput-byte v4, v2, v3

    const/4 v3, 0x4

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x199

    .line 291
    new-array v2, v5, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x49

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    .line 292
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x4f

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    .line 293
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x49

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    const/4 v3, 0x3

    const/16 v4, 0x47

    aput-byte v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    .line 294
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x4f

    aput-byte v3, v2, v7

    const/16 v3, 0x55

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    .line 295
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x49

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    .line 296
    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    aput-byte v9, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    new-array v2, v5, [B

    const/16 v3, 0x5a

    aput-byte v3, v2, v6

    const/16 v3, 0x55

    aput-byte v3, v2, v7

    const/16 v3, 0x4f

    aput-byte v3, v2, v8

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    .line 297
    new-array v2, v5, [B

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    new-array v2, v5, [B

    const/16 v3, 0x53

    aput-byte v3, v2, v6

    const/16 v3, 0x48

    aput-byte v3, v2, v7

    const/16 v3, 0x41

    aput-byte v3, v2, v8

    const/4 v3, 0x3

    aput-byte v9, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    .line 298
    new-array v2, v5, [B

    aput-object v2, v0, v1

    .line 86
    sput-object v0, Lcom/syu/bt/util/HanziToPinyin;->PINYINS:[[B

    .line 302
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/syu/bt/util/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    .line 304
    return-void

    .line 13
    nop

    :array_0
    .array-data 2
        -0x69c1s
        0x54ces
        0x5b89s
        -0x7f52s
        0x51f9s
        0x516bs
        0x6300s
        0x6273s
        -0x6f5as
        0x52f9s
        -0x69bes
        0x5954s
        0x4f3bs
        0x5c44s
        -0x7047s
        0x706cs
        0x618bs
        0x6c43s
        0x51abs
        0x7676s
        0x5cecs
        0x5693s
        0x5072s
        0x53c2s
        0x4ed3s
        0x64a1s
        0x518as
        0x5d7es
        0x66fds
        0x66fes
        0x5c64s
        0x53c9s
        -0x7d7as
        -0x7041s
        0x4f25s
        0x6284s
        -0x709as
        0x62bbs
        0x6c88s
        0x6c89s
        -0x69c9s
        0x5403s
        0x5145s
        0x62bds
        0x51fas
        0x6b3bs
        0x63e3s
        0x5ddbs
        0x5205s
        0x5439s
        0x65fes
        -0x6fccs
        0x5472s
        0x5306s
        0x51d1s
        0x7c97s
        0x6c46s
        0x5d14s
        -0x6f58s
        0x6413s
        0x5491s
        0x5446s
        0x4e39s
        0x5f53s
        0x5200s
        0x561as
        0x6265s
        0x706fs
        0x6c10s
        0x55f2s
        0x7538s
        0x5201s
        0x7239s
        0x4e01s
        0x4e1fs
        0x4e1cs
        0x543as
        0x53bes
        -0x7fefs
        -0x7698s
        0x5428s
        0x591as
        0x59b8s
        -0x740as
        0x5940s
        -0x685bs
        0x513fs
        0x53d1s
        0x5e06s
        0x531as
        -0x6722s
        0x5206s
        0x4e30s
        -0x767bs
        0x4ecfs
        0x7d11s
        0x4f15s
        0x65ees
        0x4f85s
        0x7518s
        0x5188s
        0x768bs
        0x6208s
        0x7ed9s
        0x6839s
        0x522fs
        0x5de5s
        0x52fes
        0x4f30s
        0x74dcs
        0x4e56s
        0x5173s
        0x5149s
        0x5f52s
        0x4e28s
        0x5459s
        0x54c8s
        0x548ds
        0x4f44s
        0x592fs
        -0x7ce0s
        -0x743ds
        -0x612es
        0x62ebs
        0x4ea8s
        0x5677s
        0x53ffs
        -0x60bfs
        0x4e6fs
        -0x7d4fs
        0x6000s
        0x72bfs
        0x5ddfs
        0x7070s
        0x660fs
        0x5419s
        0x4e0cs
        0x52a0s
        0x620bs
        0x6c5fs
        -0x7d83s
        -0x69cas
        0x5dfes
        0x5755s
        0x5182s
        0x4e29s
        0x51e5s
        0x59e2s
        0x5658s
        0x519bs
        0x5494s
        0x5f00s
        0x520as
        0x5ffcs
        0x5c3bs
        0x533cs
        -0x7f72s
        0x52a5s
        0x7a7as
        0x62a0s
        0x625ds
        0x5938s
        -0x7b51s
        0x5bbds
        0x5321s
        0x4e8fs
        0x5764s
        0x6269s
        0x5783s
        0x6765s
        0x5170s
        0x5577s
        0x635es
        -0x7f75s
        0x52d2s
        0x5d1as
        0x5215s
        0x4fe9s
        0x5941s
        -0x7d91s
        0x64a9s
        0x5217s
        0x62ces
        0x5222s
        0x6e9cs
        0x56d6s
        -0x6067s
        0x779cs
        0x565cs
        0x5a08s
        0x7567s
        0x62a1s
        0x7f57s
        0x5463s
        0x5988s
        0x57cbs
        0x5adas
        0x7264s
        0x732bs
        0x4e48s
        0x5445s
        -0x6a18s
        0x753fs
        0x54aas
        0x5b80s
        0x55b5s
        0x4e5cs
        0x6c11s
        0x540ds
        -0x73d4s
        0x6478s
        0x54des
        0x6beas
        0x55efs
        0x62cfs
        -0x7eb7s
        0x56e1s
        0x56d4s
        0x5b6cs
        0x7592s
        0x5a1es
        0x6041s
        -0x7f03s
        0x59aes
        0x62c8s
        0x5b22s
        -0x61e1s
        0x634fs
        0x56dcs
        0x5b81s
        0x599es
        0x519cs
        0x7fbas
        0x5974s
        0x597bs
        0x759fs
        -0x613fs
        -0x6f33s
        0x5594s
        -0x744cs
        0x5991s
        0x62cds
        0x7705s
        0x4e53s
        0x629bs
        0x5478s
        0x55b7s
        0x5309s
        0x4e15s
        0x56e8s
        0x527ds
        0x6c15s
        0x59d8s
        0x4e52s
        -0x6b75s
        0x5256s
        0x4ec6s
        0x4e03s
        0x6390s
        0x5343s
        0x545bs
        0x6084s
        0x767fs
        0x4eb2s
        0x72c5s
        -0x7d72s
        0x4e18s
        0x533as
        0x5cd1s
        0x7f3as
        0x590bs
        0x5465s
        0x7a63s
        0x5a06s
        0x60f9s
        0x4ebas
        0x6254s
        0x65e5s
        -0x7cc8s
        0x53b9s
        -0x6f66s
        0x633cs
        0x5827s
        0x5a51s
        0x77a4s
        0x637cs
        0x4ee8s
        0x6be2s
        0x4e09s
        0x6852s
        0x63bbs
        -0x6a56s
        0x68ees
        0x50e7s
        0x6740s
        0x7b5bs
        0x5c71s
        0x4f24s
        0x5f30s
        0x5962s
        0x7533s
        -0x7c68s
        0x6552s
        0x5347s
        0x5c38s
        0x53ces
        0x4e66s
        0x5237s
        -0x7790s
        -0x6a17s
        0x53ccs
        -0x73ffs
        0x542es
        -0x740cs
        0x53b6s
        0x5feas
        0x635cs
        -0x7d31s
        0x72fbs
        0x590as
        0x5b59s
        0x5506s
        0x4ed6s
        0x56fcs
        0x574ds
        0x6c64s
        0x5932s
        0x5fd1s
        0x71a5s
        0x5254s
        0x5929s
        0x65ebs
        0x5e16s
        0x5385s
        0x56f2s
        0x5077s
        0x51f8s
        0x6e4ds
        0x63a8s
        0x541es
        0x4e47s
        0x7a75s
        0x6b6as
        0x5f2fs
        0x5c23s
        0x5371s
        0x6637s
        0x7fc1s
        0x631ds
        0x4e4cs
        0x5915s
        -0x798es
        0x4edas
        0x4e61s
        0x7071s
        0x4e9bs
        0x5fc3s
        0x661fs
        0x51f6s
        0x4f11s
        0x5401s
        0x5405s
        0x524as
        0x5743s
        0x4e2bs
        0x6079s
        0x592es
        0x5e7as
        0x503bs
        0x4e00s
        0x56d9s
        0x5e94s
        0x54dfs
        0x4f63s
        0x4f18s
        0x625cs
        0x56e6s
        0x66f0s
        0x6655s
        0x7b60s
        0x7b7cs
        0x5e00s
        0x707ds
        0x5142s
        0x5328s
        0x50aes
        0x5219s
        -0x72c4s
        0x600es
        0x5897s
        0x624es
        0x635as
        0x6cbes
        0x5f20s
        -0x6a81s
        -0x6a89s
        0x4f4bs
        -0x78f9s
        -0x72e2s
        0x4e89s
        0x4e4bs
        0x5cd9s
        0x5ea2s
        0x4e2ds
        0x5ddes
        0x6731s
        0x6293s
        0x62fds
        0x4e13s
        0x5986s
        -0x6947s
        0x5b92s
        0x5353s
        0x4e72s
        0x5b97s
        -0x6f47s
        0x79dfs
        -0x6b45s
        0x539cs
        0x5c0as
        0x6628s
        0x5159s
        -0x603ds
        -0x603cs
    .end array-data

    .line 110
    :array_1
    .array-data 1
        0x43t
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    .line 241
    nop

    :array_2
    .array-data 1
        0x53t
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data

    .line 291
    nop

    :array_3
    .array-data 1
        0x5at
        0x48t
        0x55t
        0x41t
        0x4et
        0x47t
    .end array-data
.end method

.method protected constructor <init>(Z)V
    .locals 0
    .param p1, "hasChinaCollator"    # Z

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-boolean p1, p0, Lcom/syu/bt/util/HanziToPinyin;->mHasChinaCollator:Z

    .line 331
    return-void
.end method

.method private addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "tokenType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syu/bt/util/HanziToPinyin$Token;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 490
    .local p2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/syu/bt/util/HanziToPinyin$Token;>;"
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .local v0, "str":Ljava/lang/String;
    new-instance v1, Lcom/syu/bt/util/HanziToPinyin$Token;

    invoke-direct {v1, p3, v0, v0}, Lcom/syu/bt/util/HanziToPinyin$Token;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 493
    return-void
.end method

.method public static getHeadPinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 542
    invoke-static {}, Lcom/syu/bt/util/CustomerUtil;->isYFConfig()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    const-string v3, ""

    invoke-static {p0, v3}, Lcom/github/promeg/pinyinhelper/Pinyin;->toPinyin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 561
    :goto_0
    return-object v3

    .line 547
    :cond_0
    sget-object v3, Lcom/syu/bt/App_Bt;->mLocale:Ljava/lang/String;

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/syu/bt/App_Bt;->mLocale:Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 548
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 550
    :cond_1
    invoke-static {}, Lcom/syu/bt/util/HanziToPinyin;->getInstance()Lcom/syu/bt/util/HanziToPinyin;

    move-result-object v3

    invoke-virtual {v3, p0, v6}, Lcom/syu/bt/util/HanziToPinyin;->get(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 551
    .local v2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/syu/bt/util/HanziToPinyin$Token;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 553
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 561
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 553
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syu/bt/util/HanziToPinyin$Token;

    .line 554
    .local v1, "token":Lcom/syu/bt/util/HanziToPinyin$Token;
    const/4 v4, 0x2

    iget v5, v1, Lcom/syu/bt/util/HanziToPinyin$Token;->type:I

    if-ne v4, v5, :cond_4

    .line 555
    iget-object v4, v1, Lcom/syu/bt/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 557
    :cond_4
    iget-object v4, v1, Lcom/syu/bt/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static getInstance()Lcom/syu/bt/util/HanziToPinyin;
    .locals 6

    .prologue
    .line 334
    const-class v4, Lcom/syu/bt/util/HanziToPinyin;

    monitor-enter v4

    .line 335
    :try_start_0
    sget-object v3, Lcom/syu/bt/util/HanziToPinyin;->sInstance:Lcom/syu/bt/util/HanziToPinyin;

    if-eqz v3, :cond_0

    .line 336
    sget-object v3, Lcom/syu/bt/util/HanziToPinyin;->sInstance:Lcom/syu/bt/util/HanziToPinyin;

    monitor-exit v4

    .line 349
    .local v0, "chinaAddition":Ljava/util/Locale;
    .local v1, "i":I
    .local v2, "locale":[Ljava/util/Locale;
    :goto_0
    return-object v3

    .line 338
    .end local v0    # "chinaAddition":Ljava/util/Locale;
    .end local v1    # "i":I
    .end local v2    # "locale":[Ljava/util/Locale;
    :cond_0
    invoke-static {}, Ljava/text/Collator;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v2

    .line 339
    .restart local v2    # "locale":[Ljava/util/Locale;
    new-instance v0, Ljava/util/Locale;

    const-string v3, "zh"

    invoke-direct {v0, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 340
    .restart local v0    # "chinaAddition":Ljava/util/Locale;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_1

    .line 348
    new-instance v3, Lcom/syu/bt/util/HanziToPinyin;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Lcom/syu/bt/util/HanziToPinyin;-><init>(Z)V

    sput-object v3, Lcom/syu/bt/util/HanziToPinyin;->sInstance:Lcom/syu/bt/util/HanziToPinyin;

    .line 349
    sget-object v3, Lcom/syu/bt/util/HanziToPinyin;->sInstance:Lcom/syu/bt/util/HanziToPinyin;

    monitor-exit v4

    goto :goto_0

    .line 334
    .end local v0    # "chinaAddition":Ljava/util/Locale;
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 341
    .restart local v0    # "chinaAddition":Ljava/util/Locale;
    .restart local v1    # "i":I
    :cond_1
    :try_start_1
    aget-object v3, v2, v1

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 342
    aget-object v3, v2, v1

    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 343
    :cond_2
    new-instance v3, Lcom/syu/bt/util/HanziToPinyin;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Lcom/syu/bt/util/HanziToPinyin;-><init>(Z)V

    sput-object v3, Lcom/syu/bt/util/HanziToPinyin;->sInstance:Lcom/syu/bt/util/HanziToPinyin;

    .line 344
    sget-object v3, Lcom/syu/bt/util/HanziToPinyin;->sInstance:Lcom/syu/bt/util/HanziToPinyin;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 340
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getPinYin(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "bHanziAfterEng"    # Z
    .param p2, "bAddCharacterAfterPinyin"    # Z

    .prologue
    .line 518
    sget-object v3, Lcom/syu/bt/App_Bt;->mLocale:Ljava/lang/String;

    const-string v4, "zh"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/syu/bt/App_Bt;->mLocale:Ljava/lang/String;

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 519
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 537
    :goto_0
    return-object v3

    .line 521
    :cond_0
    invoke-static {}, Lcom/syu/bt/util/HanziToPinyin;->getInstance()Lcom/syu/bt/util/HanziToPinyin;

    move-result-object v3

    invoke-virtual {v3, p0, p2}, Lcom/syu/bt/util/HanziToPinyin;->get(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 522
    .local v2, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/syu/bt/util/HanziToPinyin$Token;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 523
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 524
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 537
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 524
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/syu/bt/util/HanziToPinyin$Token;

    .line 525
    .local v1, "token":Lcom/syu/bt/util/HanziToPinyin$Token;
    const/4 v4, 0x2

    iget v5, v1, Lcom/syu/bt/util/HanziToPinyin$Token;->type:I

    if-ne v4, v5, :cond_4

    .line 526
    if-eqz p1, :cond_3

    .line 527
    const-string v4, "\u963f"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_3
    iget-object v4, v1, Lcom/syu/bt/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :goto_2
    const/4 p1, 0x0

    goto :goto_1

    .line 531
    :cond_4
    iget-object v4, v1, Lcom/syu/bt/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static getSimplePinyin(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "pinyin"    # Ljava/lang/String;

    .prologue
    .line 496
    sget-object v4, Lcom/syu/bt/App_Bt;->mLocale:Ljava/lang/String;

    const-string v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/syu/bt/App_Bt;->mLocale:Ljava/lang/String;

    const-string v5, "en"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 514
    .end local p0    # "pinyin":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 499
    .restart local p0    # "pinyin":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    .line 500
    .local v2, "strRet":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 501
    const-string v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 503
    .local v3, "strs":[Ljava/lang/String;
    array-length v1, v3

    .line 504
    .local v1, "iLen":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v1, :cond_2

    .end local v0    # "i":I
    .end local v1    # "iLen":I
    .end local v3    # "strs":[Ljava/lang/String;
    :cond_1
    move-object p0, v2

    .line 514
    goto :goto_0

    .line 505
    .restart local v0    # "i":I
    .restart local v1    # "iLen":I
    .restart local v3    # "strs":[Ljava/lang/String;
    :cond_2
    aget-object v4, v3, v0

    const-string v5, "G"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 507
    aget-object v4, v3, v0

    const/4 v5, 0x0

    aget-object v6, v3, v0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 509
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getToken(CZ)Lcom/syu/bt/util/HanziToPinyin$Token;
    .locals 11
    .param p1, "character"    # C
    .param p2, "bAddCharacterAfterPinyin"    # Z

    .prologue
    .line 354
    new-instance v7, Lcom/syu/bt/util/HanziToPinyin$Token;

    invoke-direct {v7}, Lcom/syu/bt/util/HanziToPinyin$Token;-><init>()V

    .line 355
    .local v7, "token":Lcom/syu/bt/util/HanziToPinyin$Token;
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v4

    .line 356
    .local v4, "letter":Ljava/lang/String;
    iput-object v4, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 357
    const/4 v5, -0x1

    .line 359
    .local v5, "offset":I
    const/16 v9, 0x100

    if-ge p1, v9, :cond_1

    .line 360
    const/4 v9, 0x1

    iput v9, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->type:I

    .line 361
    iput-object v4, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 442
    :cond_0
    :goto_0
    return-object v7

    .line 365
    :cond_1
    sget-object v9, Lcom/syu/bt/util/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    const-string v10, "\u963f"

    invoke-virtual {v9, v4, v10}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 366
    .local v1, "cmp":I
    if-gez v1, :cond_2

    .line 367
    const/4 v9, 0x3

    iput v9, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->type:I

    .line 368
    iput-object v4, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 372
    :cond_2
    if-nez v1, :cond_7

    .line 373
    const/4 v9, 0x2

    iput v9, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->type:I

    .line 374
    const/4 v5, 0x0

    .line 389
    :cond_3
    :goto_1
    const/4 v9, 0x2

    iput v9, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->type:I

    .line 390
    if-gez v5, :cond_4

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, "begin":I
    sget-object v9, Lcom/syu/bt/util/HanziToPinyin;->UNIHANS:[C

    array-length v9, v9

    add-int/lit8 v2, v9, -0x1

    .line 393
    .local v2, "end":I
    :goto_2
    if-le v0, v2, :cond_9

    .line 407
    .end local v0    # "begin":I
    .end local v2    # "end":I
    :cond_4
    if-gez v1, :cond_5

    .line 408
    add-int/lit8 v5, v5, -0x1

    .line 410
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .local v6, "pinyin":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    sget-object v9, Lcom/syu/bt/util/HanziToPinyin;->PINYINS:[[B

    aget-object v9, v9, v5

    array-length v9, v9

    if-ge v3, v9, :cond_6

    sget-object v9, Lcom/syu/bt/util/HanziToPinyin;->PINYINS:[[B

    aget-object v9, v9, v5

    aget-byte v9, v9, v3

    if-nez v9, :cond_b

    .line 414
    :cond_6
    sparse-switch p1, :sswitch_data_0

    .line 432
    :goto_4
    if-eqz p2, :cond_c

    .line 433
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 437
    :goto_5
    iget-object v9, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 438
    const/4 v9, 0x3

    iput v9, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->type:I

    .line 439
    iget-object v9, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    iput-object v9, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 376
    .end local v3    # "j":I
    .end local v6    # "pinyin":Ljava/lang/StringBuilder;
    :cond_7
    sget-object v9, Lcom/syu/bt/util/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    const-string v10, "\u9fff"

    invoke-virtual {v9, v4, v10}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 377
    if-lez v1, :cond_8

    .line 378
    const/4 v9, 0x3

    iput v9, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->type:I

    .line 379
    iput-object v4, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto :goto_0

    .line 383
    :cond_8
    if-nez v1, :cond_3

    .line 384
    const/4 v9, 0x2

    iput v9, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->type:I

    .line 385
    sget-object v9, Lcom/syu/bt/util/HanziToPinyin;->UNIHANS:[C

    array-length v9, v9

    add-int/lit8 v5, v9, -0x1

    goto :goto_1

    .line 394
    .restart local v0    # "begin":I
    .restart local v2    # "end":I
    :cond_9
    add-int v9, v0, v2

    div-int/lit8 v5, v9, 0x2

    .line 395
    sget-object v9, Lcom/syu/bt/util/HanziToPinyin;->UNIHANS:[C

    aget-char v9, v9, v5

    invoke-static {v9}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v8

    .line 396
    .local v8, "unihan":Ljava/lang/String;
    sget-object v9, Lcom/syu/bt/util/HanziToPinyin;->COLLATOR:Ljava/text/Collator;

    invoke-virtual {v9, v4, v8}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 397
    if-eqz v1, :cond_4

    .line 400
    if-lez v1, :cond_a

    .line 401
    add-int/lit8 v0, v5, 0x1

    goto :goto_2

    .line 403
    :cond_a
    add-int/lit8 v2, v5, -0x1

    goto/16 :goto_2

    .line 412
    .end local v0    # "begin":I
    .end local v2    # "end":I
    .end local v8    # "unihan":Ljava/lang/String;
    .restart local v3    # "j":I
    .restart local v6    # "pinyin":Ljava/lang/StringBuilder;
    :cond_b
    sget-object v9, Lcom/syu/bt/util/HanziToPinyin;->PINYINS:[[B

    aget-object v9, v9, v5

    aget-byte v9, v9, v3

    int-to-char v9, v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 411
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 416
    :sswitch_0
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 417
    const-string v9, "TIAO"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 421
    :sswitch_1
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 422
    const-string v9, "LUE"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 426
    :sswitch_2
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 427
    const-string v9, "HANG"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 435
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/syu/bt/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    goto/16 :goto_5

    .line 414
    nop

    :sswitch_data_0
    .sparse-switch
        0x7565 -> :sswitch_1
        0x884c -> :sswitch_2
        0x8c03 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public get(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 9
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "bAddCharacterAfterPinyin"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/syu/bt/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 446
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v6, "tokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/syu/bt/util/HanziToPinyin$Token;>;"
    iget-boolean v7, p0, Lcom/syu/bt/util/HanziToPinyin;->mHasChinaCollator:Z

    if-eqz v7, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-object v6

    .line 450
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 451
    .local v2, "inputLength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 452
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .line 453
    .local v5, "tokenType":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 482
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 483
    invoke-direct {p0, v3, v6, v5}, Lcom/syu/bt/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 455
    .local v0, "character":C
    const/16 v7, 0x20

    if-ne v0, v7, :cond_4

    .line 456
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 457
    invoke-direct {p0, v3, v6, v5}, Lcom/syu/bt/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 453
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 458
    :cond_4
    const/16 v7, 0x100

    if-ge v0, v7, :cond_6

    .line 459
    const/4 v7, 0x1

    if-eq v5, v7, :cond_5

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 460
    invoke-direct {p0, v3, v6, v5}, Lcom/syu/bt/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 462
    :cond_5
    const/4 v5, 0x1

    .line 463
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 465
    :cond_6
    invoke-direct {p0, v0, p2}, Lcom/syu/bt/util/HanziToPinyin;->getToken(CZ)Lcom/syu/bt/util/HanziToPinyin$Token;

    move-result-object v4

    .line 466
    .local v4, "t":Lcom/syu/bt/util/HanziToPinyin$Token;
    iget v7, v4, Lcom/syu/bt/util/HanziToPinyin$Token;->type:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 467
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 468
    invoke-direct {p0, v3, v6, v5}, Lcom/syu/bt/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 470
    :cond_7
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    const/4 v5, 0x2

    .line 472
    goto :goto_2

    .line 473
    :cond_8
    iget v7, v4, Lcom/syu/bt/util/HanziToPinyin$Token;->type:I

    if-eq v5, v7, :cond_9

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_9

    .line 474
    invoke-direct {p0, v3, v6, v5}, Lcom/syu/bt/util/HanziToPinyin;->addToken(Ljava/lang/StringBuilder;Ljava/util/ArrayList;I)V

    .line 476
    :cond_9
    iget v5, v4, Lcom/syu/bt/util/HanziToPinyin$Token;->type:I

    .line 477
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
