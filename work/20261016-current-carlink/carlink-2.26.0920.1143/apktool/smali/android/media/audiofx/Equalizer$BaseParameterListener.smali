.class Landroid/media/audiofx/Equalizer$BaseParameterListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Equalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/Equalizer;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/Equalizer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 7

    .line 1
    iget-object p1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/audiofx/Equalizer;->access$000(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->access$100(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->access$100(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    move-object v1, v0

    .line 25
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v1, :cond_5

    .line 27
    .line 28
    array-length p1, p3

    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v2, 0x4

    .line 31
    const/4 v3, -0x1

    .line 32
    if-lt p1, v2, :cond_2

    .line 33
    .line 34
    invoke-static {p3, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    array-length v4, p3

    .line 39
    const/16 v5, 0x8

    .line 40
    .line 41
    if-lt v4, v5, :cond_1

    .line 42
    .line 43
    invoke-static {p3, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    move v4, p1

    .line 48
    move v5, p3

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v4, p1

    .line 51
    move v5, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v4, v3

    .line 54
    move v5, v4

    .line 55
    :goto_1
    array-length p1, p4

    .line 56
    const/4 p3, 0x2

    .line 57
    if-ne p1, p3, :cond_3

    .line 58
    .line 59
    invoke-static {p4, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    :goto_2
    move v6, p1

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    array-length p1, p4

    .line 66
    if-ne p1, v2, :cond_4

    .line 67
    .line 68
    invoke-static {p4, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    goto :goto_2

    .line 73
    :cond_4
    move v6, v3

    .line 74
    :goto_3
    if-eq v4, v3, :cond_5

    .line 75
    .line 76
    if-eq v6, v3, :cond_5

    .line 77
    .line 78
    iget-object v2, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    .line 79
    .line 80
    move v3, p2

    .line 81
    invoke-interface/range {v1 .. v6}, Landroid/media/audiofx/Equalizer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Equalizer;IIII)V

    .line 82
    .line 83
    .line 84
    :cond_5
    return-void

    .line 85
    :catchall_0
    move-exception p2

    .line 86
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    throw p2
.end method
