.class public Lk0/pp$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pp;


# direct methods
.method public constructor <init>(Lk0/pp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pp$f;->a:Lk0/pp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget-object v0, Lu0/b;->j3:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget v0, Lu0/b;->D:I

    const/16 v1, 0x9

    const/4 v2, 0x3

    const/16 v3, 0xa

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_4

    :cond_1
    const/16 v1, 0x71

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    iget-object v0, p0, Lk0/pp$f;->a:Lk0/pp;

    iget-object v0, v0, Lk0/pp;->x:Ljava/lang/String;

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4
    iget-object v0, p0, Lk0/pp$f;->a:Lk0/pp;

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    iput-object v2, v0, Lk0/pp;->x:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1, v2}, Lk0/pp;->l3(Lk0/pp;BLjava/lang/String;)V

    goto :goto_1

    .line 6
    :cond_3
    :goto_0
    iget-object v0, p0, Lk0/pp$f;->a:Lk0/pp;

    iget-object v0, v0, Lk0/pp;->x:Ljava/lang/String;

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7
    iget-object v0, p0, Lk0/pp$f;->a:Lk0/pp;

    sget-object v2, Lu0/b;->j3:Ljava/lang/String;

    iput-object v2, v0, Lk0/pp;->x:Ljava/lang/String;

    .line 8
    invoke-static {v0, v1, v2}, Lk0/pp;->l3(Lk0/pp;BLjava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
