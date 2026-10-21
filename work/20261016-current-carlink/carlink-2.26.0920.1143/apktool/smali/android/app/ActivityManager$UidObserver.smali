.class final Landroid/app/ActivityManager$UidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UidObserver"
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final mListener:Landroid/app/ActivityManager$OnUidImportanceListener;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$OnUidImportanceListener;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/app/ActivityManager$UidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/app/ActivityManager$UidObserver;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 0

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onUidGone(IZ)V
    .locals 1

    iget-object p2, p0, Landroid/app/ActivityManager$UidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    const/16 v0, 0x3e8

    invoke-interface {p2, p1, v0}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0

    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .locals 0

    iget-object p3, p0, Landroid/app/ActivityManager$UidObserver;->mListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    iget-object p4, p0, Landroid/app/ActivityManager$UidObserver;->mContext:Landroid/content/Context;

    invoke-static {p2, p4}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForClient(ILandroid/content/Context;)I

    move-result p2

    invoke-interface {p3, p1, p2}, Landroid/app/ActivityManager$OnUidImportanceListener;->onUidImportance(II)V

    return-void
.end method
