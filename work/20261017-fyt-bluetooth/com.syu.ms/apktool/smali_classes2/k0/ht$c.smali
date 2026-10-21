.class public Lk0/ht$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ht;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ht;


# direct methods
.method public constructor <init>(Lk0/ht;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ht$c;->a:Lk0/ht;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/ht$c;->a:Lk0/ht;

    iget v1, v0, Lk0/ht;->D:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/ht;->D:I

    const/4 v3, 0x0

    const/4 v4, 0x7

    if-le v1, v4, :cond_0

    .line 2
    iput v3, v0, Lk0/ht;->D:I

    .line 3
    :cond_0
    iget v1, v0, Lk0/ht;->C:I

    if-nez v1, :cond_1

    .line 4
    iput v2, v0, Lk0/ht;->C:I

    goto :goto_0

    .line 5
    :cond_1
    iput v3, v0, Lk0/ht;->C:I

    .line 6
    :goto_0
    iget v1, v0, Lk0/ht;->E:I

    add-int/2addr v1, v2

    iput v1, v0, Lk0/ht;->E:I

    const/16 v3, 0x1e

    if-le v1, v3, :cond_2

    .line 7
    iput v2, v0, Lk0/ht;->E:I

    .line 8
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "server itest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/ht$c;->a:Lk0/ht;

    iget v1, v1, Lk0/ht;->E:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "m1a"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lk0/ht$c;->a:Lk0/ht;

    iget-object v1, v1, Lk0/ht;->G:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
