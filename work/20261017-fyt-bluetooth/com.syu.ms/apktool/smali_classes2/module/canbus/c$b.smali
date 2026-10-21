.class public Lmodule/canbus/c$b;
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
    iput-object p1, p0, Lmodule/canbus/c$b;->a:Lmodule/canbus/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x2

    const/16 v2, 0xa1

    const/16 v3, 0xe3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    const/4 v8, 0x5

    if-eq v0, v8, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/canbus/c$b;->a:Lmodule/canbus/c;

    iput v4, v0, Lmodule/canbus/c;->P:I

    new-array v5, v5, [I

    aput v3, v5, v4

    aput v2, v5, v7

    aput v7, v5, v1

    .line 3
    iget v0, v0, Lmodule/canbus/c;->N:I

    shl-int/lit8 v0, v0, 0x7

    and-int/lit16 v0, v0, 0x80

    and-int/lit16 v0, v0, 0xbf

    aput v0, v5, v6

    invoke-static {v5}, Lz/k;->s([I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lmodule/canbus/c$b;->a:Lmodule/canbus/c;

    iput v7, v0, Lmodule/canbus/c;->P:I

    new-array v5, v5, [I

    aput v3, v5, v4

    aput v2, v5, v7

    aput v7, v5, v1

    .line 5
    iget v0, v0, Lmodule/canbus/c;->N:I

    shl-int/lit8 v0, v0, 0x7

    and-int/lit16 v0, v0, 0x80

    or-int/lit8 v0, v0, 0x40

    aput v0, v5, v6

    invoke-static {v5}, Lz/k;->s([I)V

    :goto_0
    return-void
.end method
