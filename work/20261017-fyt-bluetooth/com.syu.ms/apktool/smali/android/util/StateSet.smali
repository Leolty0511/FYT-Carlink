.class public Landroid/util/StateSet;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NOTHING:[I

.field public static final WILD_CARD:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 1
    sput-object v1, Landroid/util/StateSet;->WILD_CARD:[I

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput v0, v1, v0

    .line 2
    sput-object v1, Landroid/util/StateSet;->NOTHING:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump([I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 3
    aget v3, p0, v2

    const v4, 0x10100a1

    if-eq v3, v4, :cond_1

    const v4, 0x10100a7

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v3, "E "

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v3, "W "

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v3, "F "

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v3, "P "

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "S "

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x101009c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isWildCard([I)Z
    .locals 2

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget p0, p0, v1

    if-nez p0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
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

    if-ne v0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-array v0, p1, [I

    const/4 v1, 0x0

    .line 3
    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
