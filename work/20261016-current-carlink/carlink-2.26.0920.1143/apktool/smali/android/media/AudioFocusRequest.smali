.class public final Landroid/media/AudioFocusRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioFocusRequest$Builder;
    }
.end annotation


# static fields
.field private static final FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;


# instance fields
.field private final mAttr:Landroid/media/AudioAttributes;

.field private final mFlags:I

.field private final mFocusGain:I

.field private final mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mListenerHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroid/media/AudioFocusRequest;->FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

    .line 16
    .line 17
    return-void
.end method

.method private constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 4
    iput-object p2, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    .line 5
    iput p4, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    .line 6
    iput-object p3, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    .line 7
    iput p5, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;IILandroid/media/AudioFocusRequest$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroid/media/AudioFocusRequest;-><init>(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/os/Handler;Landroid/media/AudioAttributes;II)V

    return-void
.end method

.method public static synthetic access$000()Landroid/media/AudioAttributes;
    .locals 1

    sget-object v0, Landroid/media/AudioFocusRequest;->FOCUS_DEFAULT_ATTR:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public static synthetic access$100(Landroid/media/AudioFocusRequest;)Landroid/media/AudioAttributes;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/media/AudioFocusRequest;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object p0
.end method

.method public static synthetic access$300(Landroid/media/AudioFocusRequest;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$400(Landroid/media/AudioFocusRequest;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    return p0
.end method

.method public static final isValidFocusGain(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method


# virtual methods
.method public acceptsDelayedFocusGain()Z
    .locals 2

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getAudioAttributes()Landroid/media/AudioAttributes;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mAttr:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    return v0
.end method

.method public getFocusGain()I
    .locals 1

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFocusGain:I

    return v0
.end method

.method public getOnAudioFocusChangeListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method public getOnAudioFocusChangeListenerHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioFocusRequest;->mListenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public locksFocus()Z
    .locals 2

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public willPauseWhenDucked()Z
    .locals 2

    iget v0, p0, Landroid/media/AudioFocusRequest;->mFlags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
