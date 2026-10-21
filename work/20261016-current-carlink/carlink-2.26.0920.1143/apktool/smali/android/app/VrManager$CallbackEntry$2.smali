.class Landroid/app/VrManager$CallbackEntry$2;
.super Landroid/service/vr/IPersistentVrStateCallbacks$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VrManager$CallbackEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/VrManager$CallbackEntry;


# direct methods
.method public constructor <init>(Landroid/app/VrManager$CallbackEntry;)V
    .locals 0

    iput-object p1, p0, Landroid/app/VrManager$CallbackEntry$2;->this$0:Landroid/app/VrManager$CallbackEntry;

    invoke-direct {p0}, Landroid/service/vr/IPersistentVrStateCallbacks$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/app/VrManager$CallbackEntry$2;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/VrManager$CallbackEntry$2;->lambda$onPersistentVrStateChanged$0(Z)V

    return-void
.end method

.method private synthetic lambda$onPersistentVrStateChanged$0(Z)V
    .locals 1

    iget-object v0, p0, Landroid/app/VrManager$CallbackEntry$2;->this$0:Landroid/app/VrManager$CallbackEntry;

    iget-object v0, v0, Landroid/app/VrManager$CallbackEntry;->mCallback:Landroid/app/VrStateCallback;

    invoke-virtual {v0, p1}, Landroid/app/VrStateCallback;->onPersistentVrStateChanged(Z)V

    return-void
.end method


# virtual methods
.method public onPersistentVrStateChanged(Z)V
    .locals 3

    iget-object v0, p0, Landroid/app/VrManager$CallbackEntry$2;->this$0:Landroid/app/VrManager$CallbackEntry;

    iget-object v0, v0, Landroid/app/VrManager$CallbackEntry;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/app/p;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Landroid/app/p;-><init>(Landroid/os/Binder;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
