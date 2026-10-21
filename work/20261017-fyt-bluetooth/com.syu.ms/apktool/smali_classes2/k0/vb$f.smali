.class public Lk0/vb$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vb;


# direct methods
.method public constructor <init>(Lk0/vb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vb$f;->a:Lk0/vb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    iget-object v1, p0, Lk0/vb$f;->a:Lk0/vb;

    iget v1, v1, Lk0/vb;->x:I

    if-eq v0, v1, :cond_2

    const/4 v0, 0x5

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
    iget-object v0, p0, Lk0/vb$f;->a:Lk0/vb;

    sget v1, Lu0/b;->D:I

    iput v1, v0, Lk0/vb;->x:I

    :cond_2
    return-void

    :array_0
    .array-data 4
        0xe3
        0x75
        0x2
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x75
        0x2
        0x2
        0x2
    .end array-data
.end method
