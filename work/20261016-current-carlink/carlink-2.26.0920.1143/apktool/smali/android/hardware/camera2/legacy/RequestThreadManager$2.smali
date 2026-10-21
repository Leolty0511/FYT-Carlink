.class Landroid/hardware/camera2/legacy/RequestThreadManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/RequestThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/legacy/RequestThreadManager;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 5

    .line 1
    iget-object p2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    const-string v0, "Received jpeg."

    .line 8
    .line 9
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 13
    .line 14
    invoke-static {p2}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$200(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p2}, Landroid/hardware/camera2/legacy/CaptureCollector;->jpegProduced()Landroid/util/Pair;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    check-cast v0, Landroid/hardware/camera2/legacy/RequestHolder;

    .line 30
    .line 31
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p2, Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {v0}, Landroid/hardware/camera2/legacy/RequestHolder;->getHolderTargets()Ljava/util/Collection;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/view/Surface;

    .line 58
    .line 59
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 60
    .line 61
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$300(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v0, v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->containsSurfaceId(Landroid/view/Surface;Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 72
    .line 73
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    const-string v4, "Producing jpeg buffer..."

    .line 78
    .line 79
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    array-length v3, p1

    .line 83
    invoke-static {}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->nativeGetJpegFooterSize()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    add-int/2addr v3, v4

    .line 88
    add-int/lit8 v3, v3, 0x3

    .line 89
    .line 90
    and-int/lit8 v3, v3, -0x4

    .line 91
    .line 92
    invoke-static {v0, v1, v2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setNextTimestamp(Landroid/view/Surface;J)V

    .line 93
    .line 94
    .line 95
    const/4 v4, 0x1

    .line 96
    invoke-static {v0, v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceFormat(Landroid/view/Surface;I)V

    .line 97
    .line 98
    .line 99
    int-to-double v3, v3

    .line 100
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    .line 105
    .line 106
    .line 107
    move-result-wide v3

    .line 108
    double-to-int v3, v3

    .line 109
    add-int/lit8 v3, v3, 0xf

    .line 110
    .line 111
    and-int/lit8 v3, v3, -0x10

    .line 112
    .line 113
    invoke-static {v0, v3, v3}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->setSurfaceDimens(Landroid/view/Surface;II)V

    .line 114
    .line 115
    .line 116
    const/16 v4, 0x21

    .line 117
    .line 118
    invoke-static {v0, p1, v3, v3, v4}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->produceFrame(Landroid/view/Surface;[BIII)V
    :try_end_0
    .catch Landroid/hardware/camera2/legacy/LegacyExceptionUtils$BufferQueueAbandonedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    iget-object v3, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 124
    .line 125
    invoke-static {v3}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    const-string v4, "Surface abandoned, dropping frame. "

    .line 130
    .line 131
    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    .line 133
    .line 134
    goto :goto_0

    .line 135
    :cond_2
    iget-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 136
    .line 137
    invoke-static {p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$400(Landroid/hardware/camera2/legacy/RequestThreadManager;)Landroid/os/ConditionVariable;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1}, Landroid/os/ConditionVariable;->open()V

    .line 142
    .line 143
    .line 144
    return-void

    .line 145
    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/hardware/camera2/legacy/RequestThreadManager$2;->this$0:Landroid/hardware/camera2/legacy/RequestThreadManager;

    .line 146
    .line 147
    invoke-static {p1}, Landroid/hardware/camera2/legacy/RequestThreadManager;->access$100(Landroid/hardware/camera2/legacy/RequestThreadManager;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const-string p2, "Dropping jpeg frame."

    .line 152
    .line 153
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    .line 155
    .line 156
    return-void
.end method
