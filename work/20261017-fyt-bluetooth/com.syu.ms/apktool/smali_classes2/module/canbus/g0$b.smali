.class public Lmodule/canbus/g0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/g0;


# direct methods
.method public constructor <init>(Lmodule/canbus/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/g0$b;->a:Lmodule/canbus/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmodule/canbus/g0$b;->a:Lmodule/canbus/g0;

    iget v0, v0, Lmodule/canbus/g0;->o:I

    sget v1, Lu0/b;->D:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0xb

    const/4 v2, 0x6

    if-eq v1, v0, :cond_1

    const/16 v0, 0xd

    if-eq v1, v0, :cond_0

    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :goto_0
    iget-object v0, p0, Lmodule/canbus/g0$b;->a:Lmodule/canbus/g0;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lmodule/canbus/g0;->o:I

    :cond_2
    return-void

    :array_0
    .array-data 4
        0xe3
        0x8f
        0x3
        0x2
        0x4
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x8f
        0x3
        0x2
        0x3
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x8f
        0x3
        0x2
        0x1
        0x0
    .end array-data
.end method
