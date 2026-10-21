.class public Lk0/em$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/em;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/em;


# direct methods
.method public constructor <init>(Lk0/em;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/em$f;->a:Lk0/em;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/em$f;->a:Lk0/em;

    iget v1, v0, Lk0/em;->q:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lk0/em;->q:I

    const/16 v3, 0xf

    if-lt v1, v3, :cond_1

    .line 2
    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 3
    iget v0, v0, Lk0/em;->r:I

    const/4 v1, 0x5

    if-nez v0, :cond_0

    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_1

    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xf8
        0x2
        0x0
        0x2
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xf8
        0x2
        0x1
        0x2
    .end array-data
.end method
