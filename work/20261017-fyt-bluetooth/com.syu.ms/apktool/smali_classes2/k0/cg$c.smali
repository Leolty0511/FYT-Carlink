.class public Lk0/cg$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/cg;


# direct methods
.method public constructor <init>(Lk0/cg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/cg$c;->a:Lk0/cg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    iget-object v1, p0, Lk0/cg$c;->a:Lk0/cg;

    iget v1, v1, Lk0/cg;->m:I

    if-eq v0, v1, :cond_2

    const/16 v0, 0xb

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    new-array v1, v0, [I

    .line 2
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    :cond_0
    sget v1, Lu0/b;->D:I

    if-ne v1, v2, :cond_1

    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lk0/cg$c;->a:Lk0/cg;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lk0/cg;->m:I

    :cond_2
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xca
        0x8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xca
        0x8
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
