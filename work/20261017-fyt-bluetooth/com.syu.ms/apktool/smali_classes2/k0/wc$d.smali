.class public Lk0/wc$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/wc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/wc;


# direct methods
.method public constructor <init>(Lk0/wc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/wc$d;->a:Lk0/wc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x17

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x16

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x41

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x40

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x15

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x14

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x13

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x12

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x11

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_a
    const/16 v0, 0xf

    goto :goto_0

    :sswitch_b
    const/16 v0, 0xe

    goto :goto_0

    :sswitch_c
    const/16 v0, 0xd

    goto :goto_0

    :sswitch_d
    const/16 v0, 0xc

    goto :goto_0

    :sswitch_e
    const/16 v0, 0xb

    goto :goto_0

    :sswitch_f
    const/16 v0, 0xa

    goto :goto_0

    :sswitch_10
    const/16 v0, 0x9

    goto :goto_0

    :sswitch_11
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_12
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_13
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_14
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_15
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_16
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_17
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_18
    const/4 v0, 0x1

    .line 2
    :goto_0
    iget-object v1, p0, Lk0/wc$d;->a:Lk0/wc;

    invoke-static {v1, v0}, Lk0/wc;->c3(Lk0/wc;I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x8017b -> :sswitch_18
        0x9017b -> :sswitch_17
        0xa017b -> :sswitch_16
        0xb017b -> :sswitch_15
        0xc017b -> :sswitch_14
        0xd017b -> :sswitch_13
        0xe017b -> :sswitch_12
        0xf017b -> :sswitch_11
        0x10017b -> :sswitch_10
        0x11017b -> :sswitch_f
        0x12017b -> :sswitch_e
        0x13017b -> :sswitch_d
        0x14017b -> :sswitch_c
        0x15017b -> :sswitch_b
        0x16017b -> :sswitch_a
        0x17017b -> :sswitch_9
        0x18017b -> :sswitch_8
        0x19017b -> :sswitch_7
        0x1a017b -> :sswitch_6
        0x1b017b -> :sswitch_5
        0x1c017b -> :sswitch_4
        0x1d017b -> :sswitch_3
        0x1e017b -> :sswitch_2
        0x1f017b -> :sswitch_1
        0x20017b -> :sswitch_0
        0x24017b -> :sswitch_17
        0x25017b -> :sswitch_16
        0x26017b -> :sswitch_3
    .end sparse-switch
.end method
