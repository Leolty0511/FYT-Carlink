.class public Lplugins/ZLink$b;
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
    iput-object p1, p0, Lplugins/ZLink$b;->a:Lplugins/ZLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lplugins/ZLink$b;->a:Lplugins/ZLink;

    iget-boolean v1, v0, Lplugins/ZLink;->f:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lplugins/ZLink;->f:Z

    .line 3
    iget-boolean v2, v0, Lplugins/ZLink;->b:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lplugins/ZLink;->b0(Z)V

    :cond_0
    return-void
.end method
