.class public Lplugins/ZLink$l;
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
    iput-object p1, p0, Lplugins/ZLink$l;->a:Lplugins/ZLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lplugins/ZLink$l;->a:Lplugins/ZLink;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lplugins/ZLink;->c:Z

    .line 2
    invoke-static {}, Lg/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/dev/zsender-fifo"

    const-string v1, "phone call off"

    .line 3
    invoke-static {v0, v1}, Lq1/a;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
