.class final Landroid/app/ContextImpl$40;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public mDefaultDisplay:Landroid/view/Display;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/app/ContextImpl;->access$100(Landroid/app/ContextImpl;)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/app/ContextImpl$40;->mDefaultDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Landroid/app/ContextImpl$40;->mDefaultDisplay:Landroid/view/Display;

    .line 5
    :cond_0
    iget-object v0, p0, Landroid/app/ContextImpl$40;->mDefaultDisplay:Landroid/view/Display;

    .line 6
    :cond_1
    new-instance p1, Landroid/view/WindowManagerImpl;

    invoke-direct {p1, v0}, Landroid/view/WindowManagerImpl;-><init>(Landroid/view/Display;)V

    return-object p1
.end method
