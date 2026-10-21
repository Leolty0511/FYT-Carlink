.class public Lplugins/ZLink$g;
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
    iput-object p1, p0, Lplugins/ZLink$g;->a:Lplugins/ZLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lplugins/ZLink$g;->a:Lplugins/ZLink;

    iget-boolean v1, v0, Lplugins/ZLink;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    iput-boolean v2, v0, Lplugins/ZLink;->a:Z

    .line 3
    :cond_0
    iget-boolean v1, v0, Lplugins/ZLink;->b:Z

    if-eqz v1, :cond_1

    .line 4
    iput-boolean v2, v0, Lplugins/ZLink;->b:Z

    .line 5
    iget-boolean v1, v0, Lplugins/ZLink;->f:Z

    invoke-virtual {v0, v1}, Lplugins/ZLink;->b0(Z)V

    :cond_1
    return-void
.end method
