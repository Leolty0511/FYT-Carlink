.class public Lk0/a3$f;
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
    iput-object p1, p0, Lk0/a3$f;->a:Lk0/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lk0/a3$f;->a:Lk0/a3;

    const/16 v2, -0x79

    const-string v3, "AUX"

    invoke-static {v0, v2, v1, v3}, Lk0/a3;->o3(Lk0/a3;BBLjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v2, -0x7b

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 3
    iget-object v0, p0, Lk0/a3$f;->a:Lk0/a3;

    const-string v3, "BT"

    invoke-static {v0, v2, v1, v3}, Lk0/a3;->o3(Lk0/a3;BBLjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    .line 4
    iget-object v0, p0, Lk0/a3$f;->a:Lk0/a3;

    const-string v3, "BTAV"

    invoke-static {v0, v2, v1, v3}, Lk0/a3;->o3(Lk0/a3;BBLjava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    if-ne v0, v1, :cond_4

    .line 5
    iget-object v0, p0, Lk0/a3$f;->a:Lk0/a3;

    invoke-static {v0}, Lk0/a3;->p3(Lk0/a3;)V

    goto :goto_1

    .line 6
    :cond_4
    sget v0, Lu0/b;->a0:I

    if-ne v0, v1, :cond_6

    .line 7
    iget-object v0, p0, Lk0/a3$f;->a:Lk0/a3;

    const/16 v2, -0x78

    const-string v3, "NAVI"

    invoke-static {v0, v2, v1, v3}, Lk0/a3;->o3(Lk0/a3;BBLjava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_5
    :goto_0
    iget-object v0, p0, Lk0/a3$f;->a:Lk0/a3;

    const/16 v2, -0x7d

    const-string v4, ""

    invoke-static {v0, v2, v1, v4}, Lk0/a3;->o3(Lk0/a3;BBLjava/lang/String;)V

    .line 9
    iget-object v0, p0, Lk0/a3$f;->a:Lk0/a3;

    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v2, v3, v1}, Lk0/a3;->o3(Lk0/a3;BBLjava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
