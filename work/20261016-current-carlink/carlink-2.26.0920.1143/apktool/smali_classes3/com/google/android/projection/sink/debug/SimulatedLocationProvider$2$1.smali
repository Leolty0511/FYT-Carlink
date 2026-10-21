.class Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2;->onSimulationUpdate(Landroid/location/Location;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2;Landroid/location/Location;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2$1;->this$1:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2;

    iput-object p2, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2$1;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2$1;->this$1:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2;->this$0:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->access$300(Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroid/location/LocationListener;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider$2$1;->val$location:Landroid/location/Location;

    .line 26
    .line 27
    invoke-interface {v1, v2}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method
