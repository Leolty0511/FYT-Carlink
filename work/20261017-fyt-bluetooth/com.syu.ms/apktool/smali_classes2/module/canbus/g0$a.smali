.class public Lmodule/canbus/g0$a;
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
    iput-object p1, p0, Lmodule/canbus/g0$a;->a:Lmodule/canbus/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0x8f
        0x3
        0x2
        0x6
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x8f
        0x3
        0x2
        0x5
        0x0
    .end array-data
.end method
