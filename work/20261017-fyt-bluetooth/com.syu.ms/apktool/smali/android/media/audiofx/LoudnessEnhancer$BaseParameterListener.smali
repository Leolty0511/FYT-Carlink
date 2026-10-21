.class Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/LoudnessEnhancer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseParameterListener"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/media/audiofx/LoudnessEnhancer;


# direct methods
.method private constructor <init>(Landroid/media/audiofx/LoudnessEnhancer;)V
    .locals 0

    .line 2
    iput-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/media/audiofx/LoudnessEnhancer;Landroid/media/audiofx/LoudnessEnhancer$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;-><init>(Landroid/media/audiofx/LoudnessEnhancer;)V

    return-void
.end method


# virtual methods
.method public onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .locals 4

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 1
    iget-object p2, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-static {p2}, Landroid/media/audiofx/LoudnessEnhancer;->access$000(Landroid/media/audiofx/LoudnessEnhancer;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2
    :try_start_0
    iget-object v0, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-static {v0}, Landroid/media/audiofx/LoudnessEnhancer;->access$100(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-static {p1}, Landroid/media/audiofx/LoudnessEnhancer;->access$100(Landroid/media/audiofx/LoudnessEnhancer;)Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;

    move-result-object p1

    .line 4
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_4

    .line 5
    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, -0x1

    if-ne p2, v1, :cond_2

    .line 6
    iget-object p2, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-virtual {p2, p3, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p2

    goto :goto_0

    :cond_2
    move p2, v2

    .line 7
    :goto_0
    array-length p3, p4

    const/high16 v3, -0x80000000

    if-ne p3, v1, :cond_3

    .line 8
    iget-object p3, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-virtual {p3, p4, v0}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result p3

    goto :goto_1

    :cond_3
    move p3, v3

    :goto_1
    if-eq p2, v2, :cond_4

    if-eq p3, v3, :cond_4

    .line 9
    iget-object p4, p0, Landroid/media/audiofx/LoudnessEnhancer$BaseParameterListener;->this$0:Landroid/media/audiofx/LoudnessEnhancer;

    invoke-interface {p1, p4, p2, p3}, Landroid/media/audiofx/LoudnessEnhancer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/LoudnessEnhancer;II)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
