.class Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/GLThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigureHolder"
.end annotation


# instance fields
.field public final collector:Landroid/hardware/camera2/legacy/CaptureCollector;

.field public final condition:Landroid/os/ConditionVariable;

.field public final surfaces:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/ConditionVariable;Ljava/util/Collection;Landroid/hardware/camera2/legacy/CaptureCollector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ConditionVariable;",
            "Ljava/util/Collection<",
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Landroid/util/Size;",
            ">;>;",
            "Landroid/hardware/camera2/legacy/CaptureCollector;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->condition:Landroid/os/ConditionVariable;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->surfaces:Ljava/util/Collection;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/hardware/camera2/legacy/GLThreadManager$ConfigureHolder;->collector:Landroid/hardware/camera2/legacy/CaptureCollector;

    .line 9
    .line 10
    return-void
.end method
