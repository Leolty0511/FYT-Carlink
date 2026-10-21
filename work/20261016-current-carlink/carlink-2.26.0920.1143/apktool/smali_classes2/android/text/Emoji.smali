.class public Landroid/text/Emoji;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static CANCEL_TAG:I = 0xe007f

.field public static COMBINING_ENCLOSING_KEYCAP:I = 0x20e3

.field public static VARIATION_SELECTOR_16:I = 0xfe0f

.field public static ZERO_WIDTH_JOINER:I = 0x200d


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmoji(I)Z
    .locals 1

    invoke-static {p0}, Landroid/text/Emoji;->isNewEmoji(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/net/lowpan/b;->y(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isEmojiModifier(I)Z
    .locals 0

    invoke-static {p0}, Landroid/net/lowpan/b;->C(I)Z

    move-result p0

    return p0
.end method

.method public static isEmojiModifierBase(I)Z
    .locals 1

    const v0, 0x1f91d

    if-eq p0, v0, :cond_3

    const v0, 0x1f93c

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x1f91f

    if-eq p0, v0, :cond_3

    const v0, 0x1f931

    if-gt v0, p0, :cond_1

    const v0, 0x1f932

    if-le p0, v0, :cond_3

    :cond_1
    const v0, 0x1f9d1

    if-gt v0, p0, :cond_2

    const v0, 0x1f9dd

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroid/net/lowpan/b;->D(I)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isKeycapBase(I)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x23

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isNewEmoji(I)Z
    .locals 3

    const/4 v0, 0x0

    const v1, 0x1f6f7

    if-lt p0, v1, :cond_7

    const v2, 0x1f9e6

    if-le p0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-gt v1, p0, :cond_1

    const v1, 0x1f6f8

    if-le p0, v1, :cond_6

    :cond_1
    const v1, 0x1f91f

    if-eq p0, v1, :cond_6

    const v1, 0x1f928

    if-gt v1, p0, :cond_2

    const v1, 0x1f92f

    if-le p0, v1, :cond_6

    :cond_2
    const v1, 0x1f931

    if-gt v1, p0, :cond_3

    const v1, 0x1f932

    if-le p0, v1, :cond_6

    :cond_3
    const v1, 0x1f94c

    if-eq p0, v1, :cond_6

    const v1, 0x1f95f

    if-gt v1, p0, :cond_4

    const v1, 0x1f96b

    if-le p0, v1, :cond_6

    :cond_4
    const v1, 0x1f992

    if-gt v1, p0, :cond_5

    const v1, 0x1f997

    if-le p0, v1, :cond_6

    :cond_5
    const v1, 0x1f9d0

    if-gt v1, p0, :cond_7

    if-gt p0, v2, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    :goto_0
    return v0
.end method

.method public static isRegionalIndicatorSymbol(I)Z
    .locals 1

    const v0, 0x1f1e6

    if-gt v0, p0, :cond_0

    const v0, 0x1f1ff

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isTagSpecChar(I)Z
    .locals 1

    const v0, 0xe0020

    if-gt v0, p0, :cond_0

    const v0, 0xe007e

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
