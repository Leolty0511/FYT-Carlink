.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALT:Ljava/lang/Object;

.field private static final CAP:Ljava/lang/Object;

.field private static final LOCKED:I = 0x4000011

.field private static final LOCKED_RETURN_VALUE:I = 0x2

.field public static final META_ALT_LOCKED:I = 0x200

.field private static final META_ALT_MASK:J = 0x2020200000202L

.field public static final META_ALT_ON:I = 0x2

.field private static final META_ALT_PRESSED:J = 0x20000000000L

.field private static final META_ALT_RELEASED:J = 0x2000000000000L

.field private static final META_ALT_USED:J = 0x200000000L

.field public static final META_CAP_LOCKED:I = 0x100

.field private static final META_CAP_PRESSED:J = 0x10000000000L

.field private static final META_CAP_RELEASED:J = 0x1000000000000L

.field private static final META_CAP_USED:J = 0x100000000L

.field public static final META_SELECTING:I = 0x800

.field private static final META_SHIFT_MASK:J = 0x1010100000101L

.field public static final META_SHIFT_ON:I = 0x1

.field public static final META_SYM_LOCKED:I = 0x400

.field private static final META_SYM_MASK:J = 0x4040400000404L

.field public static final META_SYM_ON:I = 0x4

.field private static final META_SYM_PRESSED:J = 0x40000000000L

.field private static final META_SYM_RELEASED:J = 0x4000000000000L

.field private static final META_SYM_USED:J = 0x400000000L

.field private static final PRESSED:I = 0x1000011

.field private static final PRESSED_RETURN_VALUE:I = 0x1

.field private static final RELEASED:I = 0x2000011

.field private static final SELECTING:Ljava/lang/Object;

.field private static final SYM:Ljava/lang/Object;

.field private static final USED:I = 0x3000011


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 21
    .line 22
    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    .line 23
    .line 24
    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x1000011

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const v0, 0x3000011

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {p0, p1, v1, v1, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const v1, 0x2000011

    .line 19
    .line 20
    .line 21
    if-ne v0, v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public static adjustMetaAfterKeypress(J)J
    .locals 6

    .line 1
    const-wide v0, 0x10000000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide v4, -0x1010100000102L

    if-eqz v0, :cond_0

    and-long/2addr p0, v4

    const-wide/16 v0, 0x1

    or-long/2addr p0, v0

    const-wide v0, 0x100000000L

    or-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    and-long/2addr p0, v4

    :cond_1
    :goto_0
    const-wide v0, 0x20000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x2020200000203L

    if-eqz v0, :cond_2

    and-long/2addr p0, v4

    const-wide/16 v0, 0x2

    or-long/2addr p0, v0

    const-wide v0, 0x200000000L

    or-long/2addr p0, v0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    and-long/2addr p0, v4

    :cond_3
    :goto_1
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x4040400000405L

    if-eqz v0, :cond_4

    and-long/2addr p0, v4

    const-wide/16 v0, 0x4

    or-long/2addr p0, v0

    const-wide v0, 0x400000000L

    or-long/2addr p0, v0

    goto :goto_2

    :cond_4
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    and-long/2addr p0, v4

    :cond_5
    :goto_2
    return-wide p0
.end method

.method public static adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .locals 1

    .line 2
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 3
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 4
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static clearMetaKeyState(Landroid/text/Editable;I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_3

    .line 6
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/text/Spanned;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p0, Landroid/text/Spanned;

    .line 8
    .line 9
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const p1, 0x4000011

    .line 14
    .line 15
    .line 16
    if-ne p0, p1, :cond_1

    .line 17
    .line 18
    return p3

    .line 19
    :cond_1
    if-eqz p0, :cond_2

    .line 20
    .line 21
    return p2

    .line 22
    :cond_2
    return v1
.end method

.method public static final getMetaState(J)I
    .locals 6

    .line 1
    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v4, 0x200

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x200

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x2

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    :cond_3
    :goto_1
    const-wide/16 v4, 0x400

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    or-int/lit16 v0, v0, 0x400

    goto :goto_2

    :cond_4
    const-wide/16 v4, 0x4

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_5

    or-int/lit8 v0, v0, 0x4

    :cond_5
    :goto_2
    return v0
.end method

.method public static final getMetaState(JI)I
    .locals 7

    .line 2
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_3

    const/4 v5, 0x4

    if-eq p2, v5, :cond_0

    return v0

    :cond_0
    const-wide/16 v5, 0x400

    and-long/2addr v5, p0

    cmp-long p2, v5, v3

    if-eqz p2, :cond_1

    return v1

    :cond_1
    const-wide/16 v5, 0x4

    and-long/2addr p0, v5

    cmp-long p0, p0, v3

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    const-wide/16 v5, 0x200

    and-long/2addr v5, p0

    cmp-long p2, v5, v3

    if-eqz p2, :cond_4

    return v1

    :cond_4
    const-wide/16 v5, 0x2

    and-long/2addr p0, v5

    cmp-long p0, p0, v3

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    const-wide/16 v5, 0x100

    and-long/2addr v5, p0

    cmp-long p2, v5, v3

    if-eqz p2, :cond_7

    return v1

    :cond_7
    const-wide/16 v5, 0x1

    and-long/2addr p0, v5

    cmp-long p0, p0, v3

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;)I
    .locals 4

    .line 3
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    .line 4
    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    .line 5
    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const/16 v2, 0x800

    .line 6
    invoke-static {p0, v1, v2, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/16 v2, 0x800

    if-eq p1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    .line 10
    :cond_0
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    .line 11
    :cond_1
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    .line 12
    :cond_2
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    .line 13
    :cond_3
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I
    .locals 2

    .line 14
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 15
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 16
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result p0

    or-int/2addr v0, p0

    :cond_0
    const/16 p0, 0x800

    if-ne p0, p1, :cond_2

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    int-to-long v0, v0

    .line 17
    invoke-static {v0, v1, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(JI)I

    move-result p0

    return p0
.end method

.method public static final getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I
    .locals 2

    .line 7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 9
    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result p0

    or-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public static handleKeyDown(JILandroid/view/KeyEvent;)J
    .locals 15

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    const/16 v1, 0x3b

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    const/16 v1, 0x3c

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/16 v1, 0x39

    .line 13
    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/16 v1, 0x3a

    .line 17
    .line 18
    if-eq v0, v1, :cond_3

    .line 19
    .line 20
    const/16 v1, 0x4e

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v1, 0x3f

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    const-wide v5, 0x4040400000404L

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide/16 v7, 0x400

    .line 36
    .line 37
    const-wide v9, 0x40000000000L

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    const-wide/high16 v11, 0x4000000000000L

    .line 43
    .line 44
    const-wide v13, 0x400000000L

    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    move-wide v2, p0

    .line 50
    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    return-wide v0

    .line 55
    :cond_2
    return-wide p0

    .line 56
    :cond_3
    :goto_0
    const/4 v4, 0x2

    .line 57
    const-wide v5, 0x2020200000202L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const-wide/16 v7, 0x200

    .line 63
    .line 64
    const-wide v9, 0x20000000000L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    const-wide/high16 v11, 0x2000000000000L

    .line 70
    .line 71
    const-wide v13, 0x200000000L

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    move-wide v2, p0

    .line 77
    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    return-wide v0

    .line 82
    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 83
    const-wide v5, 0x1010100000101L

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const-wide/16 v7, 0x100

    .line 89
    .line 90
    const-wide v9, 0x10000000000L

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    const-wide/high16 v11, 0x1000000000000L

    .line 96
    .line 97
    const-wide v13, 0x100000000L

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    move-wide v2, p0

    .line 103
    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    return-wide v0
.end method

.method public static handleKeyUp(JILandroid/view/KeyEvent;)J
    .locals 14

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    const/16 v1, 0x3b

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    const/16 v1, 0x3c

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/16 v1, 0x39

    .line 13
    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/16 v1, 0x3a

    .line 17
    .line 18
    if-eq v0, v1, :cond_3

    .line 19
    .line 20
    const/16 v1, 0x4e

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/16 v1, 0x3f

    .line 26
    .line 27
    if-ne v0, v1, :cond_2

    .line 28
    .line 29
    const/4 v4, 0x4

    .line 30
    const-wide v5, 0x4040400000404L

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    const-wide v7, 0x40000000000L

    .line 36
    .line 37
    .line 38
    .line 39
    .line 40
    const-wide/high16 v9, 0x4000000000000L

    .line 41
    .line 42
    const-wide v11, 0x400000000L

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    move-wide v2, p0

    .line 48
    move-object/from16 v13, p3

    .line 49
    .line 50
    invoke-static/range {v2 .. v13}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    return-wide v0

    .line 55
    :cond_2
    return-wide p0

    .line 56
    :cond_3
    :goto_0
    const/4 v4, 0x2

    .line 57
    const-wide v5, 0x2020200000202L

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    const-wide v7, 0x20000000000L

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    const-wide/high16 v9, 0x2000000000000L

    .line 68
    .line 69
    const-wide v11, 0x200000000L

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    move-wide v2, p0

    .line 75
    move-object/from16 v13, p3

    .line 76
    .line 77
    invoke-static/range {v2 .. v13}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    return-wide v0

    .line 82
    :cond_4
    :goto_1
    const/4 v4, 0x1

    .line 83
    const-wide v5, 0x1010100000101L

    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    const-wide v7, 0x10000000000L

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    const-wide/high16 v9, 0x1000000000000L

    .line 94
    .line 95
    const-wide v11, 0x100000000L

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    move-wide v2, p0

    .line 101
    move-object/from16 v13, p3

    .line 102
    .line 103
    invoke-static/range {v2 .. v13}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    return-wide v0
.end method

.method public static isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 0

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

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

.method public static isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 0

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static press(JIJJJJJ)J
    .locals 7

    .line 1
    move v0, p2

    move-wide v1, p3

    and-long v3, p0, p7

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    and-long v3, p0, p9

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    not-long v1, v1

    and-long/2addr v1, p0

    int-to-long v3, v0

    or-long v0, v1, v3

    or-long/2addr v0, p5

    goto :goto_1

    :cond_1
    and-long v3, p0, p11

    cmp-long v3, v3, v5

    if-eqz v3, :cond_2

    :goto_0
    move-wide v0, p0

    goto :goto_1

    :cond_2
    and-long v3, p0, p5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    not-long v0, v1

    and-long/2addr v0, p0

    goto :goto_1

    :cond_3
    int-to-long v0, v0

    or-long/2addr v0, p7

    or-long/2addr v0, p0

    :goto_1
    return-wide v0
.end method

.method private press(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 5

    .line 2
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1000011

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x2000011

    const v3, 0x4000011

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    .line 3
    invoke-interface {p1, p2, v4, v4, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    const v2, 0x3000011

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne v0, v3, :cond_3

    .line 4
    invoke-interface {p1, p2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_3
    invoke-interface {p1, p2, v4, v4, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_0
    return-void
.end method

.method private static release(JIJJJJLandroid/view/KeyEvent;)J
    .locals 2

    .line 6
    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p11

    invoke-virtual {p11}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p11

    const/4 v0, 0x1

    if-eq p11, v0, :cond_0

    :goto_0
    not-long p2, p3

    and-long/2addr p0, p2

    goto :goto_1

    :cond_0
    and-long/2addr p9, p0

    const-wide/16 v0, 0x0

    cmp-long p9, p9, v0

    if-eqz p9, :cond_1

    goto :goto_0

    :cond_1
    and-long p3, p0, p5

    cmp-long p3, p3, v0

    if-eqz p3, :cond_2

    int-to-long p2, p2

    or-long/2addr p2, p7

    or-long/2addr p0, p2

    :cond_2
    :goto_1
    return-wide p0
.end method

.method private release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p3

    const/4 v1, 0x1

    if-eq p3, v1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const p3, 0x3000011

    if-ne v0, p3, :cond_1

    .line 4
    invoke-interface {p1, p2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const p3, 0x1000011

    if-ne v0, p3, :cond_2

    const p3, 0x2000011

    const/4 v0, 0x0

    .line 5
    invoke-interface {p1, p2, v0, v0, p3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x4000011

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static resetLockedMeta(J)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide v0, -0x1010100000102L

    and-long/2addr p0, v0

    :cond_0
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x2020200000203L

    and-long/2addr p0, v0

    :cond_1
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-wide v0, -0x4040400000405L

    and-long/2addr p0, v0

    :cond_2
    return-wide p0
.end method

.method public static resetLockedMeta(Landroid/text/Spannable;)V
    .locals 1

    .line 2
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 3
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 4
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    .line 5
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static resetMetaState(Landroid/text/Spannable;)V
    .locals 1

    .line 1
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 2

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const/4 v0, 0x0

    const v1, 0x1000011

    invoke-interface {p1, p0, v0, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 0

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clearMetaKeyState(JI)J
    .locals 5

    .line 1
    and-int/lit8 v0, p3, 0x1

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x100

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    const-wide v3, -0x1010100000102L

    and-long/2addr p1, v3

    :cond_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    const-wide/16 v3, 0x200

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    const-wide v3, -0x2020200000203L

    and-long/2addr p1, v3

    :cond_1
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_2

    const-wide/16 v3, 0x400

    and-long/2addr v3, p1

    cmp-long p3, v3, v1

    if-eqz p3, :cond_2

    const-wide v0, -0x4040400000405L

    and-long/2addr p1, v0

    :cond_2
    return-wide p1
.end method

.method public clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0

    .line 2
    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    return-void
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/16 p1, 0x3b

    .line 2
    .line 3
    const/4 p4, 0x1

    .line 4
    if-eq p3, p1, :cond_4

    .line 5
    .line 6
    const/16 p1, 0x3c

    .line 7
    .line 8
    if-ne p3, p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/16 p1, 0x39

    .line 12
    .line 13
    if-eq p3, p1, :cond_3

    .line 14
    .line 15
    const/16 p1, 0x3a

    .line 16
    .line 17
    if-eq p3, p1, :cond_3

    .line 18
    .line 19
    const/16 p1, 0x4e

    .line 20
    .line 21
    if-ne p3, p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/16 p1, 0x3f

    .line 25
    .line 26
    if-ne p3, p1, :cond_2

    .line 27
    .line 28
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {p0, p2, p1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return p4

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :cond_3
    :goto_0
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-direct {p0, p2, p1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    return p4

    .line 42
    :cond_4
    :goto_1
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-direct {p0, p2, p1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return p4
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const/16 p1, 0x3b

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p3, p1, :cond_4

    .line 5
    .line 6
    const/16 p1, 0x3c

    .line 7
    .line 8
    if-ne p3, p1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/16 p1, 0x39

    .line 12
    .line 13
    if-eq p3, p1, :cond_3

    .line 14
    .line 15
    const/16 p1, 0x3a

    .line 16
    .line 17
    if-eq p3, p1, :cond_3

    .line 18
    .line 19
    const/16 p1, 0x4e

    .line 20
    .line 21
    if-ne p3, p1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/16 p1, 0x3f

    .line 25
    .line 26
    if-ne p3, p1, :cond_2

    .line 27
    .line 28
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {p0, p2, p1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 31
    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    const/4 p1, 0x0

    .line 35
    return p1

    .line 36
    :cond_3
    :goto_0
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    .line 37
    .line 38
    invoke-direct {p0, p2, p1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 39
    .line 40
    .line 41
    return v0

    .line 42
    :cond_4
    :goto_1
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    .line 43
    .line 44
    invoke-direct {p0, p2, p1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    .line 45
    .line 46
    .line 47
    return v0
.end method
