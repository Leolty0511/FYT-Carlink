.class public Lk0/rc$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rc;


# direct methods
.method public constructor <init>(Lk0/rc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rc$u;->a:Lk0/rc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/rc$u;->a:Lk0/rc;

    iget-object v0, v0, Lk0/rc;->A:Ljava/lang/String;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk0/rc$u;->a:Lk0/rc;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    iput-object v1, v0, Lk0/rc;->A:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    .line 3
    iput-object v1, v0, Lk0/rc;->A:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    sget v1, Lu0/b;->D:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    const/16 v1, 0x70

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lk0/rc$u;->a:Lk0/rc;

    iget-object v2, v0, Lk0/rc;->A:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lk0/rc;->c3(Lk0/rc;BLjava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Lk0/rc$u;->a:Lk0/rc;

    iget-object v0, v0, Lk0/rc;->A:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    :cond_3
    iget-object v0, p0, Lk0/rc$u;->a:Lk0/rc;

    const-string v2, " "

    invoke-static {v0, v1, v2}, Lk0/rc;->c3(Lk0/rc;BLjava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
