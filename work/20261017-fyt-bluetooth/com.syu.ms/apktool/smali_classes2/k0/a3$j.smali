.class public Lk0/a3$j;
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
    iput-object p1, p0, Lk0/a3$j;->a:Lk0/a3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-object v0, Lu0/b;->i3:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lk0/a3$j;->a:Lk0/a3;

    iget-object v1, v1, Lk0/a3;->x0:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lk0/a3$j;->a:Lk0/a3;

    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    iput-object v1, v0, Lk0/a3;->x0:Ljava/lang/String;

    .line 4
    sget v1, Lu0/b;->D:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    const/16 v1, -0x7b

    .line 5
    sget-object v2, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lk0/a3;->o3(Lk0/a3;BBLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    const/16 v4, -0x7d

    if-ne v1, v2, :cond_1

    const-string v0, "com.syu.carlink"

    .line 6
    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lk0/a3$j;->a:Lk0/a3;

    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v4, v3, v1}, Lk0/a3;->o3(Lk0/a3;BBLjava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v1, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v4, v3, v1}, Lk0/a3;->o3(Lk0/a3;BBLjava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
