.class public Lmodule/canbus/k0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/k0;


# direct methods
.method public constructor <init>(Lmodule/canbus/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/k0$h;->a:Lmodule/canbus/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x3

    const/16 v2, 0xc

    if-eq v0, v2, :cond_3

    const/16 v2, 0xe

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1f

    if-eq v0, v2, :cond_3

    const/16 v2, 0x20

    if-eq v0, v2, :cond_3

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_3

    const/16 v2, 0x40

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    const/16 v2, 0x29

    if-eq v0, v2, :cond_2

    const/16 v2, 0x31

    if-eq v0, v2, :cond_2

    const/16 v2, 0x32

    if-eq v0, v2, :cond_2

    const/16 v2, 0x33

    if-eq v0, v2, :cond_2

    const/16 v2, 0x34

    if-eq v0, v2, :cond_2

    const/16 v2, 0x35

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3e

    if-eq v0, v2, :cond_2

    const/16 v2, 0x3f

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v0, p0, Lmodule/canbus/k0$h;->a:Lmodule/canbus/k0;

    sget-object v2, Lu0/b;->k3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmodule/canbus/k0;->j3(Lmodule/canbus/k0;BLjava/lang/String;)V

    goto :goto_2

    .line 3
    :cond_2
    :goto_0
    iget-object v0, p0, Lmodule/canbus/k0$h;->a:Lmodule/canbus/k0;

    sget-object v2, Lu0/b;->k3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmodule/canbus/k0;->r3(Lmodule/canbus/k0;BLjava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_3
    :goto_1
    iget-object v0, p0, Lmodule/canbus/k0$h;->a:Lmodule/canbus/k0;

    sget-object v2, Lu0/b;->k3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmodule/canbus/k0;->i3(Lmodule/canbus/k0;BLjava/lang/String;)V

    :goto_2
    return-void
.end method
