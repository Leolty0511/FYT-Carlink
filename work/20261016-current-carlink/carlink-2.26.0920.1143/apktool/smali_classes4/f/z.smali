.class public final Lf/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/GalReceiver$AudioFocusListener;


# instance fields
.field public final synthetic a:Lcom/syu/carlink/auto/AutoFragment;


# direct methods
.method public constructor <init>(Lcom/syu/carlink/auto/AutoFragment;)V
    .locals 0

    iput-object p1, p0, Lf/z;->a:Lcom/syu/carlink/auto/AutoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioFocusRequest(I)V
    .locals 4

    .line 1
    const-string v0, "=============>>>>  onAudioFocusRequest request: "

    .line 2
    .line 3
    const-string v1, "  appid : "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->s(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/syu/carlink/CarLink;->a()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "  isShow : "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget-object v1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 24
    .line 25
    iget-boolean v1, v1, Lcom/syu/carlink/CarLink;->d:Z

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "AHU.MAIN_ACTIVITY"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lf/z;->a:Lcom/syu/carlink/auto/AutoFragment;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    if-ne p1, v1, :cond_1

    .line 43
    .line 44
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->a()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/16 v3, 0xa

    .line 51
    .line 52
    if-eq v2, v3, :cond_0

    .line 53
    .line 54
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2, v3, v1}, Lcom/syu/carlink/CarLinkService;->h(IZ)V

    .line 61
    .line 62
    .line 63
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->a()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    sget-object v2, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v2, v1}, Lcom/syu/carlink/CarLinkService;->j(Z)V

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-virtual {v0}, Lcom/syu/carlink/auto/AutoFragment;->e()V

    .line 81
    .line 82
    .line 83
    :cond_1
    iget-object v0, v0, Lcom/syu/carlink/auto/AutoFragment;->f:Lcom/google/android/projection/sink/audio/AudioFocusManager;

    .line 84
    .line 85
    invoke-virtual {v0, p1}, Lcom/google/android/projection/sink/audio/AudioFocusManager;->handleAudioFocusRequest(I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
