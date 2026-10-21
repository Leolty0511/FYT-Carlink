.class public Lplugins/ZLink$e;
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
    iput-object p1, p0, Lplugins/ZLink$e;->a:Lplugins/ZLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lplugins/ZLink$e;->a:Lplugins/ZLink;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lplugins/ZLink;->d:Z

    .line 2
    iget-boolean v0, v0, Lplugins/ZLink;->g:Z

    if-eqz v0, :cond_0

    sget v0, Lh0/c;->a:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    sget v0, Lu0/b;->f:I

    if-ne v0, v2, :cond_0

    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_0

    .line 3
    sget-object v0, Lh0/c;->b:Lh0/f;

    invoke-interface {v0, v1}, Lh0/f;->P(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lplugins/ZLink$e;->a:Lplugins/ZLink;

    invoke-virtual {v0}, Lplugins/ZLink;->f0()V

    return-void
.end method
