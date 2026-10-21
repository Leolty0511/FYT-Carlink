.class public final Lf/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;)V
    .locals 0

    iput-object p1, p0, Lf/a0;->a:Lcom/syu/carlink/auto/AutoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusChange(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lf/a0;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, v0, Lcom/syu/carlink/auto/AutoFragment;->s:I

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    const-string v3, "   enablePhoneFocus()"

    .line 12
    .line 13
    const-string v4, "AHU.MAIN_ACTIVITY"

    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    if-eq p1, v2, :cond_2

    .line 17
    .line 18
    if-eq p1, v5, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const-string v1, "001 =================>>>   Auto Audio Focus : "

    .line 22
    .line 23
    invoke-static {v1, p1, v3, v4}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, v0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->enablePhoneFocus()V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v0, Lf/k;->y:Lf/k;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/syu/carlink/CarLinkService;->t(Lg/e;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 44
    .line 45
    iget-boolean p1, p1, Lcom/syu/carlink/CarLink;->d:Z

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    iget-object p1, v0, Lcom/syu/carlink/auto/AutoFragment;->r:Landroid/media/AudioManager;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/syu/carlink/auto/AutoFragment;->t:Lf/a0;

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    invoke-virtual {p1, v1, v2, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-ne p1, v5, :cond_4

    .line 59
    .line 60
    const-string v1, "onAudioFocusChange Auto Audio Focus : "

    .line 61
    .line 62
    invoke-static {v1, p1, v3, v4}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, v0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->enablePhoneFocus()V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object v0, Lf/k;->y:Lf/k;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/syu/carlink/CarLinkService;->t(Lg/e;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->disablePhoneFocus()V

    .line 83
    .line 84
    .line 85
    :cond_4
    :goto_0
    return-void
.end method
