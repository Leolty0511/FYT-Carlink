.class public Lmodule/canbus/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/c;


# direct methods
.method public constructor <init>(Lmodule/canbus/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/c$a;->a:Lmodule/canbus/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lmodule/canbus/c$a;->a:Lmodule/canbus/c;

    iget v1, v0, Lmodule/canbus/c;->N:I

    sget v2, Ly0/f;->Q0:I

    if-eq v1, v2, :cond_1

    .line 2
    iput v2, v0, Lmodule/canbus/c;->N:I

    const/4 v1, 0x3

    const/4 v3, 0x2

    const/16 v4, 0xa1

    const/16 v5, 0xe3

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-ne v2, v8, :cond_0

    new-array v2, v7, [I

    aput v5, v2, v6

    aput v4, v2, v8

    aput v8, v2, v3

    .line 3
    iget v0, v0, Lmodule/canbus/c;->P:I

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x40

    or-int/lit16 v0, v0, 0x80

    aput v0, v2, v1

    invoke-static {v2}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v2, v7, [I

    aput v5, v2, v6

    aput v4, v2, v8

    aput v8, v2, v3

    .line 4
    iget v0, v0, Lmodule/canbus/c;->P:I

    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x40

    and-int/lit8 v0, v0, 0x7f

    aput v0, v2, v1

    invoke-static {v2}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void
.end method
