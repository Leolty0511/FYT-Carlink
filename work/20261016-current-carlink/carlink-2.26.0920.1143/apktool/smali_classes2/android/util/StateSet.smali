.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOTHING:[I

.field public static final VIEW_STATE_ACCELERATED:I = 0x40

.field public static final VIEW_STATE_ACTIVATED:I = 0x20

.field public static final VIEW_STATE_DRAG_CAN_ACCEPT:I = 0x100

.field public static final VIEW_STATE_DRAG_HOVERED:I = 0x200

.field public static final VIEW_STATE_ENABLED:I = 0x8

.field public static final VIEW_STATE_FOCUSED:I = 0x4

.field public static final VIEW_STATE_HOVERED:I = 0x80

.field static final VIEW_STATE_IDS:[I

.field public static final VIEW_STATE_PRESSED:I = 0x10

.field public static final VIEW_STATE_SELECTED:I = 0x2

.field private static final VIEW_STATE_SETS:[[I

.field public static final VIEW_STATE_WINDOW_FOCUSED:I = 0x1

.field public static final WILD_CARD:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    div-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    sget-object v2, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    .line 14
    .line 15
    array-length v2, v2

    .line 16
    if-ne v1, v2, :cond_6

    .line 17
    .line 18
    array-length v0, v0

    .line 19
    new-array v1, v0, [I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    move v3, v2

    .line 23
    :goto_0
    sget-object v4, Lcom/android/internal/R$styleable;->ViewDrawableStates:[I

    .line 24
    .line 25
    array-length v5, v4

    .line 26
    const/4 v6, 0x1

    .line 27
    if-ge v3, v5, :cond_2

    .line 28
    .line 29
    aget v4, v4, v3

    .line 30
    .line 31
    move v5, v2

    .line 32
    :goto_1
    sget-object v7, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    .line 33
    .line 34
    array-length v8, v7

    .line 35
    if-ge v5, v8, :cond_1

    .line 36
    .line 37
    aget v8, v7, v5

    .line 38
    .line 39
    if-ne v8, v4, :cond_0

    .line 40
    .line 41
    mul-int/lit8 v8, v3, 0x2

    .line 42
    .line 43
    aput v4, v1, v8

    .line 44
    .line 45
    add-int/2addr v8, v6

    .line 46
    add-int/lit8 v9, v5, 0x1

    .line 47
    .line 48
    aget v7, v7, v9

    .line 49
    .line 50
    aput v7, v1, v8

    .line 51
    .line 52
    :cond_0
    add-int/lit8 v5, v5, 0x2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget-object v3, Landroid/util/StateSet;->VIEW_STATE_IDS:[I

    .line 59
    .line 60
    array-length v3, v3

    .line 61
    div-int/lit8 v3, v3, 0x2

    .line 62
    .line 63
    shl-int v3, v6, v3

    .line 64
    .line 65
    new-array v3, v3, [[I

    .line 66
    .line 67
    sput-object v3, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    .line 68
    .line 69
    move v3, v2

    .line 70
    :goto_2
    sget-object v4, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    .line 71
    .line 72
    array-length v4, v4

    .line 73
    if-ge v3, v4, :cond_5

    .line 74
    .line 75
    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    new-array v4, v4, [I

    .line 80
    .line 81
    move v5, v2

    .line 82
    move v7, v5

    .line 83
    :goto_3
    if-ge v5, v0, :cond_4

    .line 84
    .line 85
    add-int/lit8 v8, v5, 0x1

    .line 86
    .line 87
    aget v8, v1, v8

    .line 88
    .line 89
    and-int/2addr v8, v3

    .line 90
    if-eqz v8, :cond_3

    .line 91
    .line 92
    add-int/lit8 v8, v7, 0x1

    .line 93
    .line 94
    aget v9, v1, v5

    .line 95
    .line 96
    aput v9, v4, v7

    .line 97
    .line 98
    move v7, v8

    .line 99
    :cond_3
    add-int/lit8 v5, v5, 0x2

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    sget-object v5, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    .line 103
    .line 104
    aput-object v4, v5, v3

    .line 105
    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_5
    new-array v0, v2, [I

    .line 110
    .line 111
    sput-object v0, Landroid/util/StateSet;->WILD_CARD:[I

    .line 112
    .line 113
    new-array v0, v6, [I

    .line 114
    .line 115
    aput v2, v0, v2

    .line 116
    .line 117
    sput-object v0, Landroid/util/StateSet;->NOTHING:[I

    .line 118
    .line 119
    return-void

    .line 120
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 121
    .line 122
    const-string v1, "VIEW_STATE_IDs array length does not match ViewDrawableStates style array"

    .line 123
    .line 124
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    nop

    .line 129
    :array_0
    .array-data 4
        0x101009d
        0x1
        0x10100a1
        0x2
        0x101009c
        0x4
        0x101009e
        0x8
        0x10100a7
        0x10
        0x10102fe
        0x20
        0x101031b
        0x40
        0x1010367
        0x80
        0x1010368
        0x100
        0x1010369
        0x200
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAttribute([[II)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_4

    .line 3
    .line 4
    array-length v1, p0

    .line 5
    move v2, v0

    .line 6
    :goto_0
    if-ge v2, v1, :cond_4

    .line 7
    .line 8
    aget-object v3, p0, v2

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    array-length v4, v3

    .line 14
    move v5, v0

    .line 15
    :goto_1
    if-ge v5, v4, :cond_3

    .line 16
    .line 17
    aget v6, v3, v5

    .line 18
    .line 19
    if-eq v6, p1, :cond_2

    .line 20
    .line 21
    neg-int v6, v6

    .line 22
    if-ne v6, p1, :cond_1

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    :goto_2
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_4
    :goto_3
    return v0
.end method

.method public static dump([I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_0

    .line 9
    .line 10
    aget v3, p0, v2

    .line 11
    .line 12
    sparse-switch v3, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :sswitch_0
    const-string v3, "A "

    .line 17
    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :sswitch_1
    const-string v3, "P "

    .line 23
    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :sswitch_2
    const-string v3, "S "

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :sswitch_3
    const-string v3, "C "

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :sswitch_4
    const-string v3, "E "

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :sswitch_5
    const-string v3, "W "

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :sswitch_6
    const-string v3, "F "

    .line 53
    .line 54
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :sswitch_data_0
    .sparse-switch
        0x101009c -> :sswitch_6
        0x101009d -> :sswitch_5
        0x101009e -> :sswitch_4
        0x10100a0 -> :sswitch_3
        0x10100a1 -> :sswitch_2
        0x10100a7 -> :sswitch_1
        0x10102fe -> :sswitch_0
    .end sparse-switch
.end method

.method public static get(I)[I
    .locals 2

    .line 1
    sget-object v0, Landroid/util/StateSet;->VIEW_STATE_SETS:[[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p0, v1, :cond_0

    .line 5
    .line 6
    aget-object p0, v0, p0

    .line 7
    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "Invalid state set mask"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method

.method public static isWildCard([I)Z
    .locals 1

    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget p0, p0, v0

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static stateSetMatches([II)Z
    .locals 5

    .line 6
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 7
    aget v4, p0, v2

    if-nez v4, :cond_0

    return v3

    :cond_0
    if-lez v4, :cond_1

    if-eq p1, v4, :cond_2

    return v1

    :cond_1
    neg-int v3, v4

    if-ne p1, v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public static stateSetMatches([I[I)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0}, Landroid/util/StateSet;->isWildCard([I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    .line 2
    :cond_2
    array-length v2, p0

    .line 3
    array-length v3, p1

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_a

    .line 4
    aget v5, p0, v4

    if-nez v5, :cond_3

    return v0

    :cond_3
    if-lez v5, :cond_4

    move v6, v0

    goto :goto_2

    :cond_4
    neg-int v5, v5

    move v6, v1

    :goto_2
    move v7, v1

    :goto_3
    if-ge v7, v3, :cond_8

    .line 5
    aget v8, p1, v7

    if-nez v8, :cond_5

    if-eqz v6, :cond_8

    return v1

    :cond_5
    if-ne v8, v5, :cond_7

    if-eqz v6, :cond_6

    move v5, v0

    goto :goto_4

    :cond_6
    return v1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    move v5, v1

    :goto_4
    if-eqz v6, :cond_9

    if-nez v5, :cond_9

    return v1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_a
    return v0
.end method

.method public static trimStateSet([II)[I
    .locals 2

    .line 1
    array-length v0, p0

    .line 2
    if-ne v0, p1, :cond_0

    .line 3
    .line 4
    return-object p0

    .line 5
    :cond_0
    new-array v0, p1, [I

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
