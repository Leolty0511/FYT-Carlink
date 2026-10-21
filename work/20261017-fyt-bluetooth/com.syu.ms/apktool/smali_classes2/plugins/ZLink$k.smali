.class public Lplugins/ZLink$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugins/ZLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lplugins/ZLink;


# direct methods
.method public constructor <init>(Lplugins/ZLink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lplugins/ZLink$k;->b:Lplugins/ZLink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lplugins/ZLink$k;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->f:I

    iget v1, p0, Lplugins/ZLink$k;->a:I

    if-eq v0, v1, :cond_0

    .line 2
    iput v0, p0, Lplugins/ZLink$k;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lplugins/ZLink$k;->b:Lplugins/ZLink;

    const-string v1, "ACTION_EXIT"

    invoke-virtual {v0, v1}, Lplugins/ZLink;->h0(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
