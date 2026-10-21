.class public Lmodule/canbus/k0$u;
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
    iput-object p1, p0, Lmodule/canbus/k0$u;->a:Lmodule/canbus/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    sget v0, Lh0/c;->P:I

    div-int/lit16 v0, v0, 0x3e8

    .line 2
    div-int/lit16 v1, v0, 0xe10

    .line 3
    rem-int/lit16 v2, v0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    .line 4
    rem-int/lit8 v0, v0, 0x3c

    const/16 v3, 0x22

    new-array v3, v3, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    const/16 v6, 0xcb

    aput v6, v3, v4

    const/4 v4, 0x2

    const/16 v6, 0x21

    aput v6, v3, v4

    const/4 v4, 0x3

    const/4 v7, 0x7

    aput v7, v3, v4

    .line 5
    div-int/lit8 v4, v1, 0x10

    const/4 v8, 0x4

    shl-int/2addr v4, v8

    and-int/lit16 v4, v4, 0xf0

    const/16 v9, 0x10

    rem-int/2addr v1, v9

    const/16 v10, 0xf

    and-int/2addr v1, v10

    or-int/2addr v1, v4

    aput v1, v3, v8

    div-int/lit8 v1, v2, 0x10

    shl-int/2addr v1, v8

    and-int/lit16 v1, v1, 0xf0

    and-int/2addr v2, v10

    or-int/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v3, v2

    div-int/lit8 v1, v0, 0x10

    shl-int/2addr v1, v8

    and-int/lit16 v1, v1, 0xf0

    and-int/2addr v0, v10

    or-int/2addr v0, v1

    const/4 v1, 0x6

    aput v0, v3, v1

    aput v5, v3, v7

    const/16 v0, 0x8

    aput v5, v3, v0

    const/16 v0, 0x9

    aput v5, v3, v0

    const/16 v0, 0xa

    aput v5, v3, v0

    const/16 v0, 0xb

    aput v5, v3, v0

    const/16 v0, 0xc

    aput v5, v3, v0

    const/16 v0, 0xd

    aput v5, v3, v0

    const/16 v0, 0xe

    aput v5, v3, v0

    aput v5, v3, v10

    aput v5, v3, v9

    const/16 v0, 0x11

    aput v5, v3, v0

    const/16 v0, 0x12

    aput v5, v3, v0

    const/16 v0, 0x13

    aput v5, v3, v0

    const/16 v0, 0x14

    aput v5, v3, v0

    const/16 v0, 0x15

    aput v5, v3, v0

    const/16 v0, 0x16

    aput v5, v3, v0

    const/16 v0, 0x17

    aput v5, v3, v0

    const/16 v0, 0x18

    aput v5, v3, v0

    const/16 v0, 0x19

    aput v5, v3, v0

    const/16 v0, 0x1a

    aput v5, v3, v0

    const/16 v0, 0x1b

    aput v5, v3, v0

    const/16 v0, 0x1c

    aput v5, v3, v0

    const/16 v0, 0x1d

    aput v5, v3, v0

    const/16 v0, 0x1e

    aput v5, v3, v0

    const/16 v0, 0x1f

    aput v5, v3, v0

    const/16 v0, 0x20

    aput v5, v3, v0

    aput v5, v3, v6

    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
