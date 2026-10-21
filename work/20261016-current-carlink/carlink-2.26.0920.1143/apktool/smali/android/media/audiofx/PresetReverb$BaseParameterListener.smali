.class Landroid/media/audiofx/PresetReverb$BaseParameterListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/PresetReverb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/audiofx/PresetReverb;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/PresetReverb;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/audiofx/PresetReverb;Landroid/media/audiofx/PresetReverb$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/audiofx/PresetReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/PresetReverb;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/media/audiofx/PresetReverb;->access$000(Landroid/media/audiofx/PresetReverb;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    monitor-enter p1

    .line 8
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    .line 9
    .line 10
    invoke-static {v0}, Landroid/media/audiofx/PresetReverb;->access$100(Landroid/media/audiofx/PresetReverb;)Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/media/audiofx/PresetReverb;->access$100(Landroid/media/audiofx/PresetReverb;)Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;

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
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    array-length p1, p3

    .line 28
    const/4 v1, 0x4

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, -0x1

    .line 31
    if-ne p1, v1, :cond_1

    .line 32
    .line 33
    invoke-static {p3, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move p1, v3

    .line 39
    :goto_1
    array-length p3, p4

    .line 40
    const/4 v1, 0x2

    .line 41
    if-ne p3, v1, :cond_2

    .line 42
    .line 43
    invoke-static {p4, v2}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    .line 44
    .line 45
    .line 46
    move-result p3

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    move p3, v3

    .line 49
    :goto_2
    if-eq p1, v3, :cond_3

    .line 50
    .line 51
    if-eq p3, v3, :cond_3

    .line 52
    .line 53
    iget-object p4, p0, Landroid/media/audiofx/PresetReverb$BaseParameterListener;->this$0:Landroid/media/audiofx/PresetReverb;

    .line 54
    .line 55
    invoke-interface {v0, p4, p2, p1, p3}, Landroid/media/audiofx/PresetReverb$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/PresetReverb;IIS)V

    .line 56
    .line 57
    .line 58
    :cond_3
    return-void

    .line 59
    :catchall_0
    move-exception p2

    .line 60
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    throw p2
.end method
