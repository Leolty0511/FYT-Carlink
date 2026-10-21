.class public Lk0/a3$m;
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
    iput-object p1, p0, Lk0/a3$m;->a:Lk0/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget-object v0, Lu0/b;->k3:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lk0/a3$m;->a:Lk0/a3;

    iget-object v1, v1, Lk0/a3;->z0:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lk0/a3$m;->a:Lk0/a3;

    sget-object v1, Lu0/b;->k3:Ljava/lang/String;

    iput-object v1, v0, Lk0/a3;->z0:Ljava/lang/String;

    .line 4
    sget v1, Lu0/b;->D:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v3, 0xa

    const/4 v4, 0x4

    const/16 v5, -0x7d

    if-ne v1, v3, :cond_2

    const-string v0, "com.syu.carlink"

    .line 5
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lk0/a3$m;->a:Lk0/a3;

    sget-object v1, Lu0/b;->k3:Ljava/lang/String;

    invoke-static {v0, v5, v4, v1}, Lk0/a3;->o3(Lk0/a3;BBLjava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lk0/a3$m;->a:Lk0/a3;

    sget-object v1, Lu0/b;->k3:Ljava/lang/String;

    invoke-static {v0, v5, v2, v1}, Lk0/a3;->o3(Lk0/a3;BBLjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lu0/b;->k3:Ljava/lang/String;

    invoke-static {v0, v5, v4, v1}, Lk0/a3;->o3(Lk0/a3;BBLjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
