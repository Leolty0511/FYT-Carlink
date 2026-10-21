.class public final Landroid/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/content/Loader;


# direct methods
.method public constructor <init>(Landroid/content/Loader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/Loader$ForceLoadContentObserver;->this$0:Landroid/content/Loader;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroid/content/Loader$ForceLoadContentObserver;->this$0:Landroid/content/Loader;

    invoke-virtual {p1}, Landroid/content/Loader;->onContentChanged()V

    return-void
.end method
