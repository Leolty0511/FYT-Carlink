.class public Ll0/o;
.super Ll0/a;
.source "SourceFile"


# static fields
.field public static g:I = -0x1

.field public static h:I

.field public static i:I

.field public static j:I


# instance fields
.field public final c:[B

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ll0/a;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 2
    iput-object v0, p0, Ll0/o;->c:[B

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Ll0/o;->d:I

    .line 4
    iput v0, p0, Ll0/o;->e:I

    .line 5
    iput v0, p0, Ll0/o;->f:I

    return-void
.end method

.method public static g(Ljava/lang/String;)I
    .locals 5

    const-string v0, "VW"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 p0, 0x2

    :goto_0
    move v0, v3

    goto/16 :goto_1

    :cond_0
    const-string v0, "AUDI"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x27

    goto :goto_0

    :cond_1
    const-string v0, "Benz"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 p0, 0x25

    goto :goto_0

    :cond_2
    const-string v0, "BMW"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x24

    goto :goto_0

    :cond_3
    const-string v0, "OP"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p0, 0x70

    goto :goto_0

    :cond_4
    const-string v0, "GM"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x3

    goto :goto_0

    :cond_5
    const-string v0, "FD"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x4

    goto :goto_0

    :cond_6
    const-string v0, "JEEP"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p0, 0x23

    const/16 v0, 0x29

    goto/16 :goto_1

    :cond_7
    const-string v0, "AR"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p0, 0x62

    goto :goto_0

    :cond_8
    const-string v0, "FIAT"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0x21

    goto :goto_0

    :cond_9
    const-string v0, "PSA"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p0, 0x37

    goto :goto_0

    :cond_a
    const-string v0, "Renault"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x1f

    goto :goto_0

    :cond_b
    const-string v0, "DF"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v3, 0x7

    const/16 p0, 0x15

    const/16 v0, 0x3a

    move v4, v0

    move v0, p0

    move p0, v3

    move v3, v4

    goto/16 :goto_1

    :cond_c
    const-string v0, "FT"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x6

    goto/16 :goto_0

    :cond_d
    const-string v0, "HD"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x5

    goto/16 :goto_0

    :cond_e
    const-string v0, "MZD"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p0, 0x2d

    goto/16 :goto_0

    :cond_f
    const-string v0, "MB"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, 0x22

    goto/16 :goto_0

    :cond_10
    const-string v0, "LM"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 p0, 0x32

    goto/16 :goto_0

    :cond_11
    const-string v0, "HYK"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    move p0, v1

    goto/16 :goto_0

    :cond_12
    const-string v0, "SL"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p0, 0x5f

    goto/16 :goto_0

    :cond_13
    const-string v0, "VOLVO"

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/16 p0, 0x2c

    goto/16 :goto_0

    :cond_14
    const-string v0, "LR"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 p0, 0x39

    goto/16 :goto_0

    :cond_15
    const-string v0, "VF"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 p0, 0x6a

    goto/16 :goto_0

    :cond_16
    const-string v0, "LADA"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 p0, 0x33

    goto/16 :goto_0

    :cond_17
    const-string v0, "UAZ"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 p0, 0x57

    goto/16 :goto_0

    :cond_18
    const-string v0, "TATA"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 p0, 0x4c

    goto/16 :goto_0

    :cond_19
    const-string v0, "Mahindra"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 p0, 0x55

    goto/16 :goto_0

    :cond_1a
    const-string v0, "SU"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 p0, 0x38

    goto/16 :goto_0

    :cond_1b
    const-string v0, "QR"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 p0, 0x11

    goto/16 :goto_0

    :cond_1c
    const-string v0, "YQBT"

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 p0, 0xd

    goto/16 :goto_0

    :cond_1d
    const-string v0, "HT"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 p0, 0x45

    goto/16 :goto_0

    :cond_1e
    const-string v0, "SAIC"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v3, 0x19

    const/16 p0, 0x28

    move v0, v3

    move v3, p0

    move p0, v2

    goto/16 :goto_1

    :cond_1f
    const-string v0, "Baoj"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 p0, 0x17

    const/16 v0, 0x41

    goto/16 :goto_1

    :cond_20
    const-string v0, "JAC"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 p0, 0x18

    goto/16 :goto_0

    :cond_21
    const-string v0, "GAC"

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/16 p0, 0x12

    goto/16 :goto_0

    :cond_22
    const-string v0, "GRW"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/16 p0, 0x1c

    goto/16 :goto_0

    :cond_23
    const-string v0, "HM"

    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/16 p0, 0xe

    goto/16 :goto_0

    :cond_24
    const-string v0, "JL"

    .line 38
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/16 p0, 0x31

    goto/16 :goto_0

    :cond_25
    const-string v0, "BISU"

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/16 p0, 0x44

    goto/16 :goto_0

    :cond_26
    const-string v0, "GiL"

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/16 p0, 0x1a

    goto/16 :goto_0

    :cond_27
    const-string v0, "ZH"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 p0, 0x1b

    goto/16 :goto_0

    :cond_28
    const-string v0, "LF"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 p0, 0x1d

    goto/16 :goto_0

    :cond_29
    const-string v0, "DN"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 p0, 0x26

    goto/16 :goto_0

    :cond_2a
    const-string v0, "ChAn"

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 p0, 0x13

    goto/16 :goto_0

    :cond_2b
    const-string v0, "BAIC"

    .line 45
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/16 p0, 0x1e

    goto/16 :goto_0

    :cond_2c
    const-string v0, "ZT"

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/16 p0, 0x16

    goto/16 :goto_0

    :cond_2d
    const-string v0, "JB"

    .line 47
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/16 p0, 0x3c

    goto/16 :goto_0

    :cond_2e
    const-string v0, "HH"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const/16 p0, 0x4d

    goto/16 :goto_0

    :cond_2f
    const-string v0, "YM"

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    const/16 p0, 0x42

    goto/16 :goto_0

    :cond_30
    const-string v0, "DFMC"

    .line 50
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/16 p0, 0x14

    goto/16 :goto_0

    :cond_31
    const-string v0, "LG"

    .line 51
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/16 p0, 0x4a

    goto/16 :goto_0

    :cond_32
    const-string v0, "WC"

    .line 52
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/16 p0, 0x3d

    goto/16 :goto_0

    :cond_33
    const-string v0, "LW"

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/16 p0, 0x46

    goto/16 :goto_0

    :cond_34
    const-string v0, "GZ"

    .line 54
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/16 p0, 0x49

    goto/16 :goto_0

    :cond_35
    const-string v0, "HQ"

    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    const/16 p0, 0x59

    goto/16 :goto_0

    :cond_36
    const-string v0, "SWM"

    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_37

    const/16 p0, 0x3b

    goto/16 :goto_0

    :cond_37
    move p0, v3

    move v0, p0

    :goto_1
    shl-int/lit8 v2, v3, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    shl-int/2addr v0, v1

    const v1, 0xff00

    and-int/2addr v0, v1

    or-int/2addr v0, v2

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 7

    const-string v0, "VW"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/16 v3, 0x8

    const/16 v4, 0x37

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move v1, v5

    :goto_1
    move v4, v6

    goto/16 :goto_4

    :cond_1
    const-string v0, "PA"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    const-string v0, "FT"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "FTF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string v0, "AR"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v1, 0x62

    goto :goto_1

    :cond_4
    const-string v0, "LN"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v4, 0x1f

    move v1, v2

    goto/16 :goto_4

    :cond_5
    const-string v0, "UA"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v1, 0x57

    goto :goto_1

    :cond_6
    const-string v0, "LD"

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x33

    goto :goto_1

    :cond_7
    const-string v0, "AB"

    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v1, 0x5b

    goto :goto_1

    :cond_8
    const-string v0, "AU"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v1, 0x27

    goto :goto_1

    :cond_9
    const-string v0, "BM"

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0x24

    goto :goto_1

    :cond_a
    const-string v0, "BZ"

    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v1, 0x25

    goto :goto_1

    :cond_b
    const-string v0, "OP"

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const-string v0, "FD"

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v1, 0x4

    goto/16 :goto_1

    :cond_d
    const-string v0, "JP"

    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v1, 0x23

    const/16 v4, 0x34

    goto/16 :goto_4

    :cond_e
    const-string v0, "TA"

    .line 15
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v1, 0x4c

    goto/16 :goto_1

    :cond_f
    const-string v0, "MA"

    .line 16
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v1, 0x55

    goto/16 :goto_1

    :cond_10
    const-string v0, "TY"

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_2
    goto/16 :goto_1

    :cond_11
    const-string v0, "LS"

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_2

    :cond_12
    const-string v0, "HD"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v1, 0x5

    goto/16 :goto_1

    :cond_13
    const-string v0, "NS"

    .line 20
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v1, v2

    goto/16 :goto_1

    :cond_14
    const-string v0, "IF"

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v1, 0x3a

    goto/16 :goto_1

    :cond_15
    const-string v0, "SZ"

    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 v1, 0x32

    goto/16 :goto_1

    :cond_16
    const-string v0, "IZ"

    .line 23
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 v1, 0x31

    goto/16 :goto_1

    :cond_17
    const-string v0, "MZ"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/16 v1, 0x2d

    goto/16 :goto_1

    :cond_18
    const-string v0, "MT"

    .line 25
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v1, 0x22

    goto/16 :goto_1

    :cond_19
    const-string v0, "HY"

    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v1, v3

    goto/16 :goto_1

    :cond_1a
    const-string v0, "PT"

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v1, 0x3e

    goto/16 :goto_1

    :cond_1b
    const-string v0, "PD"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/16 v1, 0x69

    goto/16 :goto_1

    :cond_1c
    const-string v0, "BJ"

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v1, 0x17

    goto/16 :goto_1

    :cond_1d
    const-string v0, "BA"

    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v1, 0x1e

    goto/16 :goto_1

    :cond_1e
    const-string v0, "FW"

    .line 31
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v1, 0xd

    goto/16 :goto_1

    :cond_1f
    const-string v0, "BY"

    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/16 v1, 0xf

    goto/16 :goto_1

    :cond_20
    const-string v0, "GA"

    .line 33
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 v1, 0x12

    goto/16 :goto_1

    :cond_21
    const-string v0, "SA"

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0x28

    goto/16 :goto_1

    :cond_22
    const-string v1, "DF"

    .line 35
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/16 v1, 0x14

    goto/16 :goto_1

    :cond_23
    const-string v1, "HM"

    .line 36
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/16 v1, 0xe

    goto/16 :goto_1

    :cond_24
    const-string v1, "GL"

    .line 37
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/16 v1, 0x1a

    goto/16 :goto_1

    :cond_25
    const-string v1, "RF"

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/16 v1, 0x18

    goto/16 :goto_1

    :cond_26
    const-string v1, "LF"

    .line 39
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_27

    const/16 v1, 0x1d

    goto/16 :goto_1

    .line 40
    :cond_27
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/16 v1, 0x19

    const/16 v4, 0x10

    goto :goto_4

    :cond_28
    const-string v0, "CR"

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/16 v1, 0x11

    goto/16 :goto_1

    :cond_29
    const-string v0, "CN"

    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/16 v1, 0x13

    goto/16 :goto_1

    :cond_2a
    const-string v0, "CC"

    .line 43
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/16 v1, 0x1c

    goto/16 :goto_1

    :cond_2b
    const-string v0, "SR"

    .line 44
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2c

    const/16 v1, 0x38

    goto/16 :goto_1

    :cond_2c
    move v1, v6

    move v4, v1

    goto :goto_4

    :cond_2d
    :goto_3
    const/16 v1, 0x21

    :goto_4
    shl-int/lit8 p0, v4, 0x8

    const v0, 0xff00

    and-int/2addr p0, v0

    or-int/2addr p0, v6

    and-int/lit16 v0, v1, 0xff

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public b([B)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Ll0/a;->b([B)V

    .line 2
    invoke-static {}, Lk0/rt;->a3()Lk0/rt;

    move-result-object v0

    invoke-virtual {v0}, Lk0/rt;->f3()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v2, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive---U_CANBUS_FRAME_TO_UI --> -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p1

    invoke-static {p1, v1, v4}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 4
    sget v0, Ln0/j4;->b:I

    const/16 v2, 0x8f

    if-eq v0, v2, :cond_0

    const/16 v0, 0x3fb

    .line 5
    invoke-static {p1}, Lo1/s0;->e([B)[I

    move-result-object v2

    invoke-static {v0, v2}, Lk0/qt;->y0(I[I)V

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_a

    .line 6
    array-length v2, p1

    if-gtz v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    sget v2, Ll0/o;->h:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Ll0/o;->h:I

    .line 8
    sget v4, Ll0/o;->g:I

    const/16 v5, 0xa

    if-ne v4, v0, :cond_2

    if-le v2, v5, :cond_2

    .line 9
    sput v1, Ll0/o;->h:I

    .line 10
    :cond_2
    sget v1, Ln0/j4;->b:I

    const/16 v2, 0x70

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8c

    if-ne v1, v2, :cond_9

    .line 11
    :cond_3
    sget v1, Ll0/o;->g:I

    if-ne v1, v0, :cond_4

    sget v2, Ll0/o;->h:I

    const/4 v4, 0x5

    if-lt v2, v4, :cond_5

    :cond_4
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 12
    :cond_5
    invoke-virtual {p0, p1}, Ll0/o;->i([B)V

    goto :goto_0

    :cond_6
    if-ne v1, v0, :cond_7

    .line 13
    sget v0, Ll0/o;->h:I

    if-lt v0, v5, :cond_8

    :cond_7
    if-ne v1, v3, :cond_9

    .line 14
    :cond_8
    invoke-virtual {p0, p1}, Ll0/o;->j([B)V

    :cond_9
    :goto_0
    return-void

    .line 15
    :cond_a
    :goto_1
    sput v1, Ll0/o;->h:I

    .line 16
    sput v0, Ll0/o;->g:I

    return-void
.end method

.method public varargs f([I)V
    .locals 8

    .line 1
    sget v0, Ln0/j4;->b:I

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8c

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ll0/a;->d([I)V

    goto/16 :goto_7

    .line 3
    :cond_1
    :goto_0
    sget v0, Ll0/o;->g:I

    const-string v1, "WR---->: "

    const/16 v2, 0xe9

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v5, :cond_4

    .line 4
    array-length v0, p1

    const/4 v6, 0x3

    add-int/2addr v0, v6

    .line 5
    new-array v7, v0, [I

    .line 6
    aput v2, v7, v3

    const/16 v2, 0x5a

    .line 7
    aput v2, v7, v5

    const/16 v2, 0xa5

    .line 8
    aput v2, v7, v4

    :goto_1
    add-int/lit8 v2, v0, -0x1

    if-ge v6, v2, :cond_2

    add-int/lit8 v2, v6, -0x2

    .line 9
    aget v2, p1, v2

    aput v2, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 10
    :cond_2
    aput v3, v7, v2

    move v0, v5

    .line 11
    :goto_2
    array-length v3, p1

    if-ge v0, v3, :cond_3

    .line 12
    aget v3, v7, v2

    aget v4, p1, v0

    add-int/2addr v3, v4

    aput v3, v7, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 13
    :cond_3
    aget p1, v7, v2

    sub-int/2addr p1, v5

    and-int/lit16 p1, p1, 0xff

    aput p1, v7, v2

    .line 14
    invoke-static {v7}, Ll0/a;->d([I)V

    .line 15
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v5, v2}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_4
    const/16 v6, 0x2e

    if-ne v0, v4, :cond_7

    .line 16
    array-length v0, p1

    add-int/2addr v0, v4

    .line 17
    new-array v7, v0, [I

    .line 18
    aput v2, v7, v3

    .line 19
    aput v6, v7, v5

    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-ge v4, v2, :cond_5

    add-int/lit8 v2, v4, -0x1

    .line 20
    aget v2, p1, v2

    aput v2, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 21
    :cond_5
    aput v3, v7, v2

    move v0, v5

    .line 22
    :goto_4
    array-length v3, p1

    if-ge v0, v3, :cond_6

    .line 23
    aget v3, v7, v2

    aget v4, p1, v0

    add-int/2addr v3, v4

    aput v3, v7, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 24
    :cond_6
    aget p1, v7, v2

    xor-int/lit16 p1, p1, 0xff

    aput p1, v7, v2

    .line 25
    invoke-static {v7}, Ll0/a;->d([I)V

    .line 26
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v5, v2}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    goto :goto_7

    .line 27
    :cond_7
    array-length v0, p1

    add-int/2addr v0, v4

    .line 28
    new-array v7, v0, [I

    .line 29
    aput v2, v7, v3

    .line 30
    aput v6, v7, v5

    :goto_5
    add-int/lit8 v2, v0, -0x1

    if-ge v4, v2, :cond_8

    add-int/lit8 v2, v4, -0x1

    .line 31
    aget v2, p1, v2

    aput v2, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 32
    :cond_8
    aput v3, v7, v2

    move v0, v5

    .line 33
    :goto_6
    array-length v3, p1

    if-ge v0, v3, :cond_9

    .line 34
    aget v3, v7, v2

    aget v4, p1, v0

    add-int/2addr v3, v4

    aput v3, v7, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 35
    :cond_9
    aget p1, v7, v2

    xor-int/lit16 p1, p1, 0xff

    aput p1, v7, v2

    .line 36
    invoke-static {v7}, Ll0/a;->d([I)V

    .line 37
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object p1

    sget-object v0, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v5, v2}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :goto_7
    return-void
.end method

.method public i([B)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget v2, v0, Ll0/o;->d:I

    array-length v3, v1

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/16 v4, 0x400

    if-le v2, v4, :cond_0

    .line 2
    iput v3, v0, Ll0/o;->d:I

    .line 3
    iput v3, v0, Ll0/o;->e:I

    .line 4
    iput v3, v0, Ll0/o;->f:I

    .line 5
    :cond_0
    iget-object v2, v0, Ll0/o;->c:[B

    iget v4, v0, Ll0/o;->d:I

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v2, v0, Ll0/o;->d:I

    array-length v1, v1

    add-int/2addr v2, v1

    iput v2, v0, Ll0/o;->d:I

    .line 7
    iget v1, v0, Ll0/o;->f:I

    const/16 v4, 0x41b

    const v5, 0xffffff

    const/high16 v6, -0x1000000

    const-string v7, "RZ"

    const/16 v8, -0x79

    const/16 v9, 0x69

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    if-eqz v1, :cond_7

    if-lt v1, v2, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v1, v0, Ll0/o;->c:[B

    aget-byte v1, v1, v13

    move v2, v12

    .line 9
    :goto_0
    iget v14, v0, Ll0/o;->f:I

    if-ge v2, v14, :cond_2

    .line 10
    iget-object v14, v0, Ll0/o;->c:[B

    aget-byte v14, v14, v2

    add-int/2addr v1, v14

    int-to-byte v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    not-int v1, v1

    int-to-byte v1, v1

    .line 11
    iget-object v2, v0, Ll0/o;->c:[B

    aget-byte v2, v2, v14

    if-ne v1, v2, :cond_6

    .line 12
    sput v12, Ll0/o;->g:I

    .line 13
    sget v1, Lk0/nt;->J:I

    if-nez v1, :cond_3

    new-array v1, v10, [I

    .line 14
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Ll0/o;->f([I)V

    .line 15
    :cond_3
    iget-object v1, v0, Ll0/o;->c:[B

    aget-byte v2, v1, v13

    if-eq v2, v9, :cond_4

    goto :goto_1

    .line 16
    :cond_4
    aget-byte v2, v1, v11

    if-ne v2, v8, :cond_5

    .line 17
    new-instance v2, Ljava/lang/String;

    aget-byte v14, v1, v12

    sub-int/2addr v14, v13

    invoke-direct {v2, v1, v10, v14}, Ljava/lang/String;-><init>([BII)V

    .line 18
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    sget-object v14, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Canbus Ver: 2222222222 === "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v14, v8}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    sput v11, Ll0/o;->i:I

    .line 21
    invoke-static {v2}, Ll0/o;->g(Ljava/lang/String;)I

    move-result v1

    sput v1, Ll0/o;->j:I

    .line 22
    sget v2, Ll0/o;->i:I

    shl-int/lit8 v2, v2, 0x18

    and-int/2addr v2, v6

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    sput v1, Lk0/nt;->J:I

    new-array v2, v13, [I

    aput v1, v2, v3

    .line 23
    invoke-static {v4, v2}, Lk0/qt;->y0(I[I)V

    .line 24
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DataCanbus.sCanbusTypeInfo: 2222222222 === 0x"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lk0/nt;->J:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v14, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 25
    :cond_5
    :goto_1
    sget-object v1, Lk0/nt;->d:Lk0/lt;

    iget-object v2, v0, Ll0/o;->c:[B

    iget v8, v0, Ll0/o;->f:I

    sub-int/2addr v8, v13

    invoke-virtual {v1, v2, v13, v8}, Lk0/lt;->U2([BII)V

    .line 26
    iget v1, v0, Ll0/o;->f:I

    add-int/2addr v1, v13

    iput v1, v0, Ll0/o;->e:I

    goto :goto_2

    .line 27
    :cond_6
    iput v13, v0, Ll0/o;->e:I

    .line 28
    :goto_2
    iput v3, v0, Ll0/o;->f:I

    .line 29
    :cond_7
    iget v1, v0, Ll0/o;->d:I

    sub-int/2addr v1, v12

    :goto_3
    iget v2, v0, Ll0/o;->e:I

    if-ge v2, v1, :cond_10

    .line 30
    iget-object v8, v0, Ll0/o;->c:[B

    aget-byte v14, v8, v2

    const/16 v15, 0x2e

    if-ne v14, v15, :cond_f

    add-int/lit8 v14, v2, 0x2

    .line 31
    aget-byte v14, v8, v14

    and-int/lit16 v14, v14, 0xff

    iput v14, v0, Ll0/o;->f:I

    const/16 v15, 0x200

    if-le v14, v15, :cond_8

    .line 32
    iput v3, v0, Ll0/o;->f:I

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v15, v2, 0x3

    add-int/2addr v14, v15

    .line 33
    iput v14, v0, Ll0/o;->f:I

    .line 34
    iget v15, v0, Ll0/o;->d:I

    if-lt v14, v15, :cond_9

    sub-int/2addr v14, v2

    .line 35
    iput v14, v0, Ll0/o;->f:I

    goto/16 :goto_9

    :cond_9
    add-int/lit8 v14, v2, 0x1

    .line 36
    aget-byte v8, v8, v14

    add-int/lit8 v2, v2, 0x2

    .line 37
    :goto_4
    iget v14, v0, Ll0/o;->f:I

    if-ge v2, v14, :cond_a

    .line 38
    iget-object v14, v0, Ll0/o;->c:[B

    aget-byte v14, v14, v2

    add-int/2addr v8, v14

    int-to-byte v8, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    not-int v2, v8

    int-to-byte v2, v2

    .line 39
    iget-object v8, v0, Ll0/o;->c:[B

    aget-byte v8, v8, v14

    if-ne v2, v8, :cond_e

    .line 40
    sput v12, Ll0/o;->g:I

    .line 41
    sget v2, Lk0/nt;->J:I

    if-nez v2, :cond_b

    new-array v2, v10, [I

    .line 42
    fill-array-data v2, :array_1

    invoke-virtual {v0, v2}, Ll0/o;->f([I)V

    .line 43
    :cond_b
    iget-object v2, v0, Ll0/o;->c:[B

    iget v8, v0, Ll0/o;->e:I

    add-int/lit8 v14, v8, 0x1

    aget-byte v14, v2, v14

    if-eq v14, v9, :cond_c

    const/16 v15, -0x79

    goto :goto_5

    :cond_c
    add-int/lit8 v14, v8, 0x3

    .line 44
    aget-byte v14, v2, v14

    const/16 v15, -0x79

    if-ne v14, v15, :cond_d

    .line 45
    new-instance v14, Ljava/lang/String;

    add-int/lit8 v9, v8, 0x4

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, v2, v8

    sub-int/2addr v8, v13

    invoke-direct {v14, v2, v9, v8}, Ljava/lang/String;-><init>([BII)V

    .line 46
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    sget-object v8, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Canbus Ver: 11111111 === "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v14, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 48
    sput v11, Ll0/o;->i:I

    .line 49
    invoke-static {v14}, Ll0/o;->g(Ljava/lang/String;)I

    move-result v2

    sput v2, Ll0/o;->j:I

    .line 50
    sget v9, Ll0/o;->i:I

    shl-int/lit8 v9, v9, 0x18

    and-int/2addr v9, v6

    and-int/2addr v2, v5

    or-int/2addr v2, v9

    sput v2, Lk0/nt;->J:I

    new-array v9, v13, [I

    aput v2, v9, v3

    .line 51
    invoke-static {v4, v9}, Lk0/qt;->y0(I[I)V

    .line 52
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DataCanbus.sCanbusTypeInfo: 1111111 === 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lk0/nt;->J:I

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 53
    :cond_d
    :goto_5
    iget v2, v0, Ll0/o;->f:I

    iput v2, v0, Ll0/o;->e:I

    goto :goto_6

    :cond_e
    const/16 v15, -0x79

    .line 54
    iget v2, v0, Ll0/o;->e:I

    add-int/2addr v2, v13

    iput v2, v0, Ll0/o;->e:I

    .line 55
    :goto_6
    iput v3, v0, Ll0/o;->f:I

    goto :goto_8

    :cond_f
    :goto_7
    const/16 v15, -0x79

    .line 56
    :goto_8
    iget v2, v0, Ll0/o;->e:I

    add-int/2addr v2, v13

    iput v2, v0, Ll0/o;->e:I

    const/16 v9, 0x69

    const/4 v10, 0x4

    goto/16 :goto_3

    :cond_10
    :goto_9
    if-eqz v2, :cond_12

    .line 57
    iget v1, v0, Ll0/o;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Ll0/o;->d:I

    if-lez v1, :cond_11

    .line 58
    iget-object v4, v0, Ll0/o;->c:[B

    invoke-static {v4, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    :cond_11
    iput v3, v0, Ll0/o;->e:I

    :cond_12
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0xd9
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x1
        0xd9
    .end array-data
.end method

.method public j([B)V
    .locals 12

    .line 1
    iget v0, p0, Ll0/o;->d:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    const/16 v2, 0x400

    if-le v0, v2, :cond_0

    .line 2
    iput v1, p0, Ll0/o;->d:I

    .line 3
    iput v1, p0, Ll0/o;->e:I

    .line 4
    iput v1, p0, Ll0/o;->f:I

    .line 5
    :cond_0
    iget-object v0, p0, Ll0/o;->c:[B

    iget v2, p0, Ll0/o;->d:I

    array-length v3, p1

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget v0, p0, Ll0/o;->d:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Ll0/o;->d:I

    .line 7
    iget p1, p0, Ll0/o;->f:I

    const/16 v2, 0x41b

    const v3, 0xffffff

    const/high16 v4, -0x1000000

    const/16 v5, -0x10

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz p1, :cond_5

    if-lt p1, v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object p1, p0, Ll0/o;->c:[B

    aget-byte p1, p1, v8

    move v0, v7

    .line 9
    :goto_0
    iget v10, p0, Ll0/o;->f:I

    if-ge v0, v10, :cond_2

    .line 10
    iget-object v10, p0, Ll0/o;->c:[B

    aget-byte v10, v10, v0

    add-int/2addr p1, v10

    int-to-byte p1, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr p1, v9

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    .line 11
    iget-object v0, p0, Ll0/o;->c:[B

    aget-byte v10, v0, v10

    if-ne p1, v10, :cond_4

    .line 12
    sput v9, Ll0/o;->g:I

    .line 13
    sput v8, Ll0/o;->i:I

    .line 14
    aget-byte p1, v0, v7

    if-eq p1, v5, :cond_3

    goto :goto_1

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/String;

    aget-byte v10, v0, v8

    invoke-direct {p1, v0, v6, v10}, Ljava/lang/String;-><init>([BII)V

    .line 16
    invoke-static {p1}, Ll0/o;->h(Ljava/lang/String;)I

    move-result p1

    sput p1, Ll0/o;->j:I

    .line 17
    :goto_1
    sget p1, Ll0/o;->i:I

    shl-int/lit8 p1, p1, 0x18

    and-int/2addr p1, v4

    sget v0, Ll0/o;->j:I

    and-int/2addr v0, v3

    or-int/2addr p1, v0

    sput p1, Lk0/nt;->J:I

    new-array v0, v9, [I

    aput p1, v0, v1

    .line 18
    invoke-static {v2, v0}, Lk0/qt;->y0(I[I)V

    .line 19
    iget p1, p0, Ll0/o;->f:I

    add-int/2addr p1, v9

    iput p1, p0, Ll0/o;->e:I

    goto :goto_2

    .line 20
    :cond_4
    iput v8, p0, Ll0/o;->e:I

    .line 21
    :goto_2
    iput v1, p0, Ll0/o;->f:I

    .line 22
    :cond_5
    iget p1, p0, Ll0/o;->d:I

    sub-int/2addr p1, v7

    :goto_3
    iget v0, p0, Ll0/o;->e:I

    if-ge v0, p1, :cond_e

    .line 23
    iget-object v7, p0, Ll0/o;->c:[B

    aget-byte v10, v7, v0

    const/16 v11, -0x56

    if-ne v10, v11, :cond_6

    add-int/lit8 v10, v0, 0x1

    aget-byte v10, v7, v10

    const/16 v11, 0x55

    if-eq v10, v11, :cond_7

    :cond_6
    aget-byte v10, v7, v0

    const/16 v11, 0x5a

    if-ne v10, v11, :cond_d

    add-int/lit8 v10, v0, 0x1

    aget-byte v10, v7, v10

    const/16 v11, -0x5b

    if-ne v10, v11, :cond_d

    .line 24
    :cond_7
    iget v10, p0, Ll0/o;->f:I

    const/16 v11, 0x200

    if-le v10, v11, :cond_8

    .line 25
    iput v1, p0, Ll0/o;->f:I

    goto :goto_7

    :cond_8
    add-int/lit8 v10, v0, 0x2

    .line 26
    aget-byte v10, v7, v10

    add-int/2addr v10, v0

    add-int/2addr v10, v6

    iput v10, p0, Ll0/o;->f:I

    .line 27
    iget v11, p0, Ll0/o;->d:I

    if-lt v10, v11, :cond_9

    sub-int/2addr v10, v0

    .line 28
    iput v10, p0, Ll0/o;->f:I

    goto :goto_8

    :cond_9
    add-int/lit8 v10, v0, 0x2

    .line 29
    aget-byte v7, v7, v10

    add-int/lit8 v0, v0, 0x3

    .line 30
    :goto_4
    iget v10, p0, Ll0/o;->f:I

    if-ge v0, v10, :cond_a

    .line 31
    iget-object v10, p0, Ll0/o;->c:[B

    aget-byte v10, v10, v0

    add-int/2addr v7, v10

    int-to-byte v7, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v7, v7, -0x1

    and-int/lit16 v0, v7, 0xff

    int-to-byte v0, v0

    .line 32
    iget-object v7, p0, Ll0/o;->c:[B

    aget-byte v10, v7, v10

    if-ne v0, v10, :cond_c

    .line 33
    sput v9, Ll0/o;->g:I

    .line 34
    sput v8, Ll0/o;->i:I

    .line 35
    iget v0, p0, Ll0/o;->e:I

    add-int/lit8 v10, v0, 0x3

    aget-byte v10, v7, v10

    if-eq v10, v5, :cond_b

    goto :goto_5

    .line 36
    :cond_b
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v11, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, v7, v0

    invoke-direct {v10, v7, v11, v0}, Ljava/lang/String;-><init>([BII)V

    .line 37
    invoke-static {v10}, Ll0/o;->h(Ljava/lang/String;)I

    move-result v0

    sput v0, Ll0/o;->j:I

    .line 38
    :goto_5
    sget v0, Ll0/o;->i:I

    shl-int/lit8 v0, v0, 0x18

    and-int/2addr v0, v4

    sget v7, Ll0/o;->j:I

    and-int/2addr v7, v3

    or-int/2addr v0, v7

    sput v0, Lk0/nt;->J:I

    new-array v7, v9, [I

    aput v0, v7, v1

    .line 39
    invoke-static {v2, v7}, Lk0/qt;->y0(I[I)V

    .line 40
    iget v0, p0, Ll0/o;->f:I

    iput v0, p0, Ll0/o;->e:I

    goto :goto_6

    .line 41
    :cond_c
    iget v0, p0, Ll0/o;->e:I

    add-int/2addr v0, v9

    iput v0, p0, Ll0/o;->e:I

    .line 42
    :goto_6
    iput v1, p0, Ll0/o;->f:I

    .line 43
    :cond_d
    :goto_7
    iget v0, p0, Ll0/o;->e:I

    add-int/2addr v0, v9

    iput v0, p0, Ll0/o;->e:I

    goto/16 :goto_3

    :cond_e
    :goto_8
    if-eqz v0, :cond_10

    .line 44
    iget p1, p0, Ll0/o;->d:I

    sub-int/2addr p1, v0

    iput p1, p0, Ll0/o;->d:I

    if-lez p1, :cond_f

    .line 45
    iget-object v2, p0, Ll0/o;->c:[B

    invoke-static {v2, v0, v2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    :cond_f
    iput v1, p0, Ll0/o;->e:I

    :cond_10
    return-void
.end method
