.class public Lk0/rn$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rn;


# direct methods
.method public constructor <init>(Lk0/rn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rn$p;->a:Lk0/rn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/rn$p;->a:Lk0/rn;

    iget-object v0, v0, Lk0/rn;->r:Ljava/lang/String;

    sget-object v1, Lh0/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lk0/rn$p;->a:Lk0/rn;

    sget-object v2, Lh0/c;->j:Ljava/lang/String;

    iput-object v2, v0, Lk0/rn;->r:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 3
    iput-object v1, v0, Lk0/rn;->r:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    sget v2, Lu0/b;->D:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/16 v2, 0x71

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lk0/rn$p;->a:Lk0/rn;

    sget-object v1, Lh0/c;->j:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lk0/rn;->h3(Lk0/rn;BLjava/lang/String;)V

    goto :goto_2

    .line 7
    :cond_2
    sget-object v0, Lh0/c;->j:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    :cond_3
    iget-object v0, p0, Lk0/rn$p;->a:Lk0/rn;

    invoke-static {v0, v2, v1}, Lk0/rn;->h3(Lk0/rn;BLjava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
