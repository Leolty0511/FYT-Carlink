.class public Lk0/jq$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/jq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/jq;


# direct methods
.method public constructor <init>(Lk0/jq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/jq$i;->a:Lk0/jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lk0/jq$i;->a:Lk0/jq;

    sget-object v4, Lu0/b;->i3:Ljava/lang/String;

    const/4 v5, 0x5

    invoke-static {v0, v5, v1, v4}, Lk0/jq;->e3(Lk0/jq;BBLjava/lang/String;)V

    .line 3
    iget-object v0, p0, Lk0/jq$i;->a:Lk0/jq;

    sget-object v1, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v5, v2, v1}, Lk0/jq;->e3(Lk0/jq;BBLjava/lang/String;)V

    .line 4
    iget-object v0, p0, Lk0/jq$i;->a:Lk0/jq;

    sget-object v1, Lu0/b;->k3:Ljava/lang/String;

    invoke-static {v0, v5, v3, v1}, Lk0/jq;->e3(Lk0/jq;BBLjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lk0/jq$i;->a:Lk0/jq;

    sget-object v4, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4}, Lk0/jq;->e3(Lk0/jq;BBLjava/lang/String;)V

    .line 6
    iget-object v0, p0, Lk0/jq$i;->a:Lk0/jq;

    sget-object v1, Lu0/b;->j3:Ljava/lang/String;

    invoke-static {v0, v3, v2, v1}, Lk0/jq;->e3(Lk0/jq;BBLjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lk0/jq$i;->a:Lk0/jq;

    sget-object v1, Lu0/b;->k3:Ljava/lang/String;

    invoke-static {v0, v3, v3, v1}, Lk0/jq;->e3(Lk0/jq;BBLjava/lang/String;)V

    :goto_0
    return-void
.end method
