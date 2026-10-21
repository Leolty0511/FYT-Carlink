.class public Lmodule/canbus/k0$r;
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
    iput-object p1, p0, Lmodule/canbus/k0$r;->a:Lmodule/canbus/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x21

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [I

    const/16 v2, 0xc4

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v2, v1, v2

    .line 2
    sget v4, Ly0/f;->C0:I

    const/4 v5, 0x2

    aput v4, v1, v5

    const/16 v6, 0x24

    if-le v4, v6, :cond_1

    aput v6, v1, v5

    .line 3
    :cond_1
    sget v4, Lk0/nt;->c:I

    const/4 v6, 0x4

    if-eq v4, v0, :cond_2

    if-eq v4, v6, :cond_2

    const/16 v7, 0x2b

    if-eq v4, v7, :cond_2

    if-ne v4, v7, :cond_4

    .line 4
    :cond_2
    sget v4, Ly0/f;->i:I

    if-eq v4, v2, :cond_3

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_4

    .line 5
    :cond_3
    aget v2, v1, v5

    or-int/lit16 v2, v2, 0x80

    aput v2, v1, v5

    :cond_4
    new-array v2, v6, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_0
    if-ge v3, v0, :cond_5

    add-int/lit8 v4, v3, 0x1

    .line 6
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_0

    .line 7
    :cond_5
    invoke-static {v2}, Lz/k;->s([I)V

    return-void
.end method
