.class public Landroid/text/method/DialerKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "SourceFile"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Landroid/text/method/DialerKeyListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x16

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

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

    .line 1
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/DialerKeyListener;
    .locals 1

    .line 1
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Landroid/text/method/DialerKeyListener;

    invoke-direct {v0}, Landroid/text/method/DialerKeyListener;-><init>()V

    sput-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    return-object v0
.end method


# virtual methods
.method public getAcceptedChars()[C
    .locals 1

    .line 1
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

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v1

    and-int/lit8 v2, v0, 0x3

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result p2

    if-eqz p2, :cond_1

    return p2

    :cond_1
    if-eqz v0, :cond_3

    .line 4
    new-instance p2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {p2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 5
    invoke-virtual {p0}, Landroid/text/method/DialerKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 7
    :goto_0
    iget-object v2, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v3, v2

    if-ge p1, v3, :cond_3

    .line 8
    aget-char v2, v2, p1

    invoke-static {v0, v2}, Landroid/text/method/NumberKeyListener;->ok([CC)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    iget-object p2, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char p1, p2, p1

    return p1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method
