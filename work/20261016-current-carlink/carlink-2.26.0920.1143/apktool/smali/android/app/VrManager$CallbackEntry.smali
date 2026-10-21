.class Landroid/app/VrManager$CallbackEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VrManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackEntry"
.end annotation


# instance fields
.field final mCallback:Landroid/app/VrStateCallback;

.field final mHandler:Landroid/os/Handler;

.field final mPersistentStateCallback:Landroid/service/vr/IPersistentVrStateCallbacks;

.field final mStateCallback:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method public constructor <init>(Landroid/app/VrStateCallback;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/app/VrManager$CallbackEntry$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/app/VrManager$CallbackEntry$1;-><init>(Landroid/app/VrManager$CallbackEntry;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/app/VrManager$CallbackEntry;->mStateCallback:Landroid/service/vr/IVrStateCallbacks;

    .line 10
    .line 11
    new-instance v0, Landroid/app/VrManager$CallbackEntry$2;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Landroid/app/VrManager$CallbackEntry$2;-><init>(Landroid/app/VrManager$CallbackEntry;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/app/VrManager$CallbackEntry;->mPersistentStateCallback:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 17
    .line 18
    iput-object p1, p0, Landroid/app/VrManager$CallbackEntry;->mCallback:Landroid/app/VrStateCallback;

    .line 19
    .line 20
    iput-object p2, p0, Landroid/app/VrManager$CallbackEntry;->mHandler:Landroid/os/Handler;

    .line 21
    .line 22
    return-void
.end method
