.class public Lk0/xc$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/xc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/xc;


# direct methods
.method public constructor <init>(Lk0/xc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/xc$e;->a:Lk0/xc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v2, p0, Lk0/xc$e;->a:Lk0/xc;

    const/16 v3, 0xc6

    const/16 v4, 0xaf

    const/16 v5, 0xe

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lk0/xc;->c3(Lk0/xc;IIIII)V

    .line 3
    iget-object v0, p0, Lk0/xc$e;->a:Lk0/xc;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lk0/xc;->r:Z

    :cond_0
    return-void
.end method
