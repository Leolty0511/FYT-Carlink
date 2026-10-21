.class public Landroid/text/method/DialerKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "SourceFile"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Landroid/text/method/DialerKeyListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x16

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    .line 9
    .line 10
    return-void

    .line 11
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
        0x23s
        0x2as
        0x2bs
        0x2ds
        0x28s
        0x29s
        0x2cs
        0x2fs
        0x4es
        0x2es
        0x20s
        0x3bs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/DialerKeyListener;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Landroid/text/method/DialerKeyListener;

    .line 7
    .line 8
    invoke-direct {v0}, Landroid/text/method/DialerKeyListener;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    .line 12
    .line 13
    return-object v0
.end method


# virtual methods
.method public getAcceptedChars()[C
    .locals 1

    sget-object v0, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 4

    .line 1
    invoke-static {p2, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    and-int/lit8 v2, v0, 0x3

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    return p2

    .line 23
    :cond_1
    if-eqz v0, :cond_3

    .line 24
    .line 25
    new-instance p2, Landroid/view/KeyCharacterMap$KeyData;

    .line 26
    .line 27
    invoke-direct {p2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/text/method/DialerKeyListener;->getAcceptedChars()[C

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    const/4 p1, 0x1

    .line 41
    :goto_0
    iget-object v2, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 42
    .line 43
    array-length v3, v2

    .line 44
    if-ge p1, v3, :cond_3

    .line 45
    .line 46
    aget-char v2, v2, p1

    .line 47
    .line 48
    invoke-static {v0, v2}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iget-object p2, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    .line 55
    .line 56
    aget-char p1, p2, p1

    .line 57
    .line 58
    return p1

    .line 59
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return v1
.end method
