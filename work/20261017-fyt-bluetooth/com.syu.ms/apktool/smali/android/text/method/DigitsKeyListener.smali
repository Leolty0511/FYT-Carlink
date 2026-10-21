.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "SourceFile"


# static fields
.field private static final CHARACTERS:[[C

.field private static final DECIMAL:I = 0x2

.field private static final SIGN:I = 0x1

.field private static sInstance:[Landroid/text/method/DigitsKeyListener;


# instance fields
.field private mAccepted:[C

.field private mDecimal:Z

.field private mSign:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [[C

    const/16 v2, 0xa

    new-array v2, v2, [C

    .line 1
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0xc

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/16 v2, 0xb

    new-array v2, v2, [C

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/16 v2, 0xd

    new-array v2, v2, [C

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sput-object v1, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    new-array v0, v0, [Landroid/text/method/DigitsKeyListener;

    .line 2
    sput-object v0, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data

    nop

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    .line 3
    iput-boolean p1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    .line 4
    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    or-int/2addr p1, p2

    .line 5
    sget-object p2, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    aget-object p1, p2, p1

    iput-object p1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-void
.end method

.method public static getInstance()Landroid/text/method/DigitsKeyListener;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .locals 4

    .line 6
    new-instance v0, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method

.method public static getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, p0

    .line 2
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v2, v1, v0

    if-eqz v2, :cond_1

    .line 3
    aget-object p0, v1, v0

    return-object p0

    .line 4
    :cond_1
    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    aput-object v2, v1, v0

    .line 5
    sget-object p0, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object p0, p0, v0

    return-object p0
.end method

.method private static isDecimalPointChar(C)Z
    .locals 1

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSignChar(C)Z
    .locals 1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-ne p0, v0, :cond_0

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


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    .line 1
    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    move-object p1, v0

    move p2, v1

    .line 4
    :cond_1
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, -0x1

    move v5, v1

    move v4, v3

    :goto_0
    if-ge v5, p5, :cond_4

    .line 5
    invoke-interface {p4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 6
    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v5

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v5

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const-string v5, ""

    if-ge p6, v2, :cond_7

    .line 8
    invoke-interface {p4, p6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 9
    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v7

    if-eqz v7, :cond_5

    return-object v5

    .line 10
    :cond_5
    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v5

    if-eqz v5, :cond_6

    move v3, p6

    :cond_6
    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 p4, p3, -0x1

    const/4 p6, 0x0

    move-object v2, p6

    :goto_3
    if-lt p4, p2, :cond_11

    .line 11
    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 12
    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_a

    if-ne p4, p2, :cond_d

    if-eqz p5, :cond_8

    goto :goto_5

    :cond_8
    if-ltz v4, :cond_9

    goto :goto_5

    :cond_9
    move v4, p4

    goto :goto_4

    .line 13
    :cond_a
    invoke-static {v6}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v6

    if-eqz v6, :cond_c

    if-ltz v3, :cond_b

    goto :goto_5

    :cond_b
    move v3, p4

    :cond_c
    :goto_4
    move v8, v1

    :cond_d
    :goto_5
    if-eqz v8, :cond_10

    add-int/lit8 v6, p2, 0x1

    if-ne p3, v6, :cond_e

    return-object v5

    :cond_e
    if-nez v2, :cond_f

    .line 14
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    :cond_f
    sub-int v6, p4, p2

    add-int/lit8 v7, p4, 0x1

    sub-int/2addr v7, p2

    .line 15
    invoke-virtual {v2, v6, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_10
    add-int/lit8 p4, p4, -0x1

    goto :goto_3

    :cond_11
    if-eqz v2, :cond_12

    return-object v2

    :cond_12
    if-eqz v0, :cond_13

    return-object v0

    :cond_13
    return-object p6
.end method

.method public getAcceptedChars()[C
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1002

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 2
    :goto_0
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x2000

    :cond_1
    return v0
.end method
