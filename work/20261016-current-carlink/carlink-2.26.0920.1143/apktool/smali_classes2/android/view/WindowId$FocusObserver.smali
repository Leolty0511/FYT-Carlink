.class public abstract Landroid/view/WindowId$FocusObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FocusObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowId$FocusObserver$H;
    }
.end annotation


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mIObserver:Landroid/view/IWindowFocusObserver$Stub;

.field final mRegistrations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/view/WindowId$FocusObserver$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/view/WindowId$FocusObserver$1;-><init>(Landroid/view/WindowId$FocusObserver;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/WindowId$FocusObserver;->mIObserver:Landroid/view/IWindowFocusObserver$Stub;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Landroid/view/WindowId$FocusObserver$H;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Landroid/view/WindowId$FocusObserver$H;-><init>(Landroid/view/WindowId$FocusObserver;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/view/WindowId$FocusObserver;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract onFocusGained(Landroid/view/WindowId;)V
.end method

.method public abstract onFocusLost(Landroid/view/WindowId;)V
.end method
