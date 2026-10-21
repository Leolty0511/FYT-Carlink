.class public Lk0/vb$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vb;


# direct methods
.method public constructor <init>(Lk0/vb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vb$h;->a:Lk0/vb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Ly0/f;->Q0:I

    const/16 v1, 0x75

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lk0/vb$h;->a:Lk0/vb;

    new-array v4, v3, [I

    aput v3, v4, v2

    invoke-static {v0, v1, v3, v4}, Lk0/vb;->k3(Lk0/vb;IB[I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/vb$h;->a:Lk0/vb;

    new-array v4, v3, [I

    aput v2, v4, v2

    invoke-static {v0, v1, v3, v4}, Lk0/vb;->k3(Lk0/vb;IB[I)V

    :goto_0
    return-void
.end method
