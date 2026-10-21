.class Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;
.super Landroid/location/IBatchedLocationCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/BatchedLocationCallbackTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CallbackTransport"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/location/BatchedLocationCallbackTransport;


# direct methods
.method private constructor <init>(Landroid/location/BatchedLocationCallbackTransport;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;->this$0:Landroid/location/BatchedLocationCallbackTransport;

    invoke-direct {p0}, Landroid/location/IBatchedLocationCallback$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/location/BatchedLocationCallbackTransport;Landroid/location/BatchedLocationCallbackTransport$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;-><init>(Landroid/location/BatchedLocationCallbackTransport;)V

    return-void
.end method


# virtual methods
.method public onLocationBatch(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport$1;-><init>(Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroid/location/BatchedLocationCallbackTransport$CallbackTransport;->this$0:Landroid/location/BatchedLocationCallbackTransport;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/location/LocalListenerHelper;->foreach(Landroid/location/LocalListenerHelper$ListenerOperation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
