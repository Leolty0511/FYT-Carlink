.class public Lk0/jq$j;
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
    iput-object p1, p0, Lk0/jq$j;->a:Lk0/jq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_3

    if-eq v0, v5, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    move v2, v1

    .line 2
    :cond_4
    :goto_0
    iget-object v0, p0, Lk0/jq$j;->a:Lk0/jq;

    invoke-static {v0}, Lk0/jq;->f3(Lk0/jq;)I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 3
    iget-object v0, p0, Lk0/jq$j;->a:Lk0/jq;

    invoke-static {v0}, Lk0/jq;->f3(Lk0/jq;)I

    move-result v0

    if-eq v0, v7, :cond_5

    iget-object v0, p0, Lk0/jq$j;->a:Lk0/jq;

    invoke-static {v0}, Lk0/jq;->f3(Lk0/jq;)I

    move-result v0

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Lk0/jq$j;->a:Lk0/jq;

    invoke-static {v0}, Lk0/jq;->f3(Lk0/jq;)I

    move-result v0

    if-ne v0, v5, :cond_6

    :cond_5
    if-ne v2, v1, :cond_6

    .line 4
    iget-object v0, p0, Lk0/jq$j;->a:Lk0/jq;

    invoke-static {v0}, Lk0/jq;->h3(Lk0/jq;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lk0/jq;->j3(Lk0/jq;ILjava/lang/String;)V

    const-wide/16 v0, 0x64

    .line 5
    invoke-static {v0, v1}, La/i;->a0(J)V

    .line 6
    :cond_6
    iget-object v0, p0, Lk0/jq$j;->a:Lk0/jq;

    invoke-static {v0, v2}, Lk0/jq;->g3(Lk0/jq;I)I

    move v4, v7

    .line 7
    :cond_7
    iget-object v0, p0, Lk0/jq$j;->a:Lk0/jq;

    invoke-static {v0}, Lk0/jq;->h3(Lk0/jq;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 8
    iget-object v0, p0, Lk0/jq$j;->a:Lk0/jq;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/jq;->i3(Lk0/jq;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lk0/jq$j;->a:Lk0/jq;

    invoke-static {v0}, Lk0/jq;->h3(Lk0/jq;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 10
    iget-object v0, p0, Lk0/jq$j;->a:Lk0/jq;

    const-string v1, ""

    invoke-static {v0, v1}, Lk0/jq;->i3(Lk0/jq;Ljava/lang/String;)Ljava/lang/String;

    :cond_8
    move v7, v4

    :cond_9
    if-eqz v7, :cond_a

    .line 11
    iget-object v0, p0, Lk0/jq$j;->a:Lk0/jq;

    invoke-static {v0}, Lk0/jq;->f3(Lk0/jq;)I

    move-result v1

    iget-object v2, p0, Lk0/jq$j;->a:Lk0/jq;

    invoke-static {v2}, Lk0/jq;->h3(Lk0/jq;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lk0/jq;->j3(Lk0/jq;ILjava/lang/String;)V

    :cond_a
    return-void
.end method
