.class public Lk0/zb$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/zb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/zb;


# direct methods
.method public constructor <init>(Lk0/zb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/zb$d;->a:Lk0/zb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/zb$d;->a:Lk0/zb;

    invoke-static {v0}, Lk0/zb;->a3(Lk0/zb;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk0/zb$d;->a:Lk0/zb;

    sget-object v2, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v2}, Lk0/zb;->b3(Lk0/zb;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lk0/zb$d;->a:Lk0/zb;

    invoke-static {v0}, Lk0/zb;->a3(Lk0/zb;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lk0/zb$d;->a:Lk0/zb;

    const-string v2, ""

    invoke-static {v0, v2}, Lk0/zb;->b3(Lk0/zb;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    sget v2, Lh0/c;->E:I

    iget-object v3, p0, Lk0/zb$d;->a:Lk0/zb;

    invoke-static {v3}, Lk0/zb;->c3(Lk0/zb;)I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 6
    iget-object v0, p0, Lk0/zb$d;->a:Lk0/zb;

    sget v2, Lh0/c;->E:I

    invoke-static {v0, v2}, Lk0/zb;->d3(Lk0/zb;I)I

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Lk0/zb$d;->a:Lk0/zb;

    invoke-static {v0}, Lk0/zb;->a3(Lk0/zb;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lk0/zb;->e3(Lk0/zb;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
