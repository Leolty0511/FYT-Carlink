.class public Lplugins/ZLink$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugins/ZLink;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lplugins/ZLink;


# direct methods
.method public constructor <init>(Lplugins/ZLink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lplugins/ZLink$u;->a:Lplugins/ZLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lplugins/ZLink$u;->a:Lplugins/ZLink;

    iget-boolean v0, v0, Lplugins/ZLink;->c:Z

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ly0/g;->l:Lo1/z;

    const-string v1, "com.zjinnova.zlink"

    const-string v2, "play"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo1/z;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
