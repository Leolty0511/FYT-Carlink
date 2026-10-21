.class public Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;
.super Landroid/content/pm/IOnPermissionsChangeListener$Stub;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnPermissionsChangeListenerDelegate"
.end annotation


# static fields
.field private static final MSG_PERMISSIONS_CHANGED:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

.field final synthetic this$0:Landroid/app/ApplicationPackageManager;


# direct methods
.method public constructor <init>(Landroid/app/ApplicationPackageManager;Landroid/content/pm/PackageManager$OnPermissionsChangedListener;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;->this$0:Landroid/app/ApplicationPackageManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/pm/IOnPermissionsChangeListener$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;->mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 7
    .line 8
    new-instance p1, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    return p1

    .line 8
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 9
    .line 10
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;->mListener:Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Landroid/content/pm/PackageManager$OnPermissionsChangedListener;->onPermissionsChanged(I)V

    .line 13
    .line 14
    .line 15
    return v1
.end method

.method public onPermissionsChanged(I)V
    .locals 3

    iget-object v0, p0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
