.class public Ln0/q0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/q0;


# direct methods
.method public constructor <init>(Ln0/q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/q0$a;->a:Ln0/q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Ly0/f;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x24

    if-ne v0, v1, :cond_1

    new-array v0, v4, [I

    .line 3
    fill-array-data v0, :array_0

    .line 4
    sget-object v1, Ly0/d;->l:[I

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-static {}, Ly0/d;->q()V

    goto :goto_0

    :cond_1
    new-array v0, v4, [I

    .line 6
    fill-array-data v0, :array_1

    .line 7
    sget-object v1, Ly0/d;->l:[I

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    invoke-static {}, Ly0/d;->q()V

    .line 9
    :goto_0
    invoke-static {}, Ly0/h;->M()V

    :goto_1
    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0x9
        0xd
        0x18
        0x24
        0x30
        0x3c
        0x49
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

    :array_1
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
