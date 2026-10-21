.class public Lk0/rn$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rn;


# direct methods
.method public constructor <init>(Lk0/rn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rn$e;->a:Lk0/rn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/rn$e;->a:Lk0/rn;

    iget v1, v0, Lk0/rn;->y:I

    sget v2, Lu0/b;->D:I

    if-eq v1, v2, :cond_1

    .line 2
    iput v2, v0, Lk0/rn;->y:I

    const/16 v0, 0xd

    const/4 v1, 0x4

    if-ne v2, v0, :cond_0

    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

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
        -0x7b
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        -0x7b
        0x1
        0x1
    .end array-data
.end method
