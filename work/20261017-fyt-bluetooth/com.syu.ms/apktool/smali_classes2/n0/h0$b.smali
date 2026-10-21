.class public Ln0/h0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/h0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/h0;


# direct methods
.method public constructor <init>(Ln0/h0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/h0$b;->a:Ln0/h0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ly0/f;->x0:[I

    const/4 v1, 0x0

    const/16 v2, 0xa

    aput v2, v0, v1

    const/4 v3, 0x1

    .line 3
    aput v2, v0, v3

    const/4 v4, 0x5

    .line 4
    aput v2, v0, v4

    const/4 v2, 0x6

    const/4 v5, 0x3

    .line 5
    aput v5, v0, v2

    const/4 v2, 0x7

    .line 6
    aput v4, v0, v2

    const/16 v0, 0x24

    new-array v2, v0, [I

    .line 7
    fill-array-data v2, :array_0

    .line 8
    sget-object v4, Ly0/d;->l:[I

    invoke-static {v2, v1, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-static {}, Ly0/h;->M()V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x9
        0xf
        0x16
        0x1e
        0x25
        0x2d
        0x37
        0x41
        0x4e
        0x58
        0x60
        0x66
        0x6c
        0x72
        0x78
        0x7e
        0x84
        0x8a
        0x92
        0x98
        0x9e
        0xa4
        0xa9
        0xae
        0xb4
        0xba
        0xbd
        0xc0
        0xc3
        0xc6
        0xc8
        0xca
        0xcb
        0xcc
        0xcd
        0xcf
    .end array-data
.end method
