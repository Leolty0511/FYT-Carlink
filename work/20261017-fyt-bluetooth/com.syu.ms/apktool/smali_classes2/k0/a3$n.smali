.class public Lk0/a3$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/a3;


# direct methods
.method public constructor <init>(Lk0/a3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/a3$n;->a:Lk0/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v6, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    if-eq v0, v3, :cond_4

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    const/4 v2, 0x6

    goto :goto_0

    :cond_3
    move v2, v3

    .line 2
    :cond_4
    :goto_0
    iget-object v0, p0, Lk0/a3$n;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->q3(Lk0/a3;)I

    move-result v0

    if-eq v0, v2, :cond_5

    .line 3
    iget-object v0, p0, Lk0/a3$n;->a:Lk0/a3;

    invoke-static {v0, v2}, Lk0/a3;->r3(Lk0/a3;I)I

    move v5, v6

    .line 4
    :cond_5
    iget-object v0, p0, Lk0/a3$n;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->s3(Lk0/a3;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5
    iget-object v0, p0, Lk0/a3$n;->a:Lk0/a3;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lk0/a3;->t3(Lk0/a3;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lk0/a3$n;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->s3(Lk0/a3;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 7
    iget-object v0, p0, Lk0/a3$n;->a:Lk0/a3;

    const-string v1, ""

    invoke-static {v0, v1}, Lk0/a3;->t3(Lk0/a3;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    move v6, v5

    :cond_7
    if-eqz v6, :cond_8

    .line 8
    iget-object v0, p0, Lk0/a3$n;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->q3(Lk0/a3;)I

    move-result v1

    iget-object v2, p0, Lk0/a3$n;->a:Lk0/a3;

    invoke-static {v2}, Lk0/a3;->s3(Lk0/a3;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lk0/a3;->u3(Lk0/a3;ILjava/lang/String;)V

    :cond_8
    return-void
.end method
