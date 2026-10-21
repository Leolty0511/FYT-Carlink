.class public Lk0/ws$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ws;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ws;


# direct methods
.method public constructor <init>(Lk0/ws;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ws$b;->a:Lk0/ws;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ws$b;->a:Lk0/ws;

    iget v1, v0, Lk0/ws;->c:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ws;->c:I

    if-lez v1, :cond_3

    const/4 v0, 0x5

    if-gt v1, v0, :cond_4

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_4

    const/4 v0, 0x4

    .line 3
    rem-int/2addr v1, v0

    if-nez v1, :cond_0

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    :cond_0
    iget-object v1, p0, Lk0/ws$b;->a:Lk0/ws;

    iget v1, v1, Lk0/ws;->c:I

    rem-int/2addr v1, v0

    if-ne v1, v2, :cond_1

    new-array v1, v0, [I

    .line 6
    fill-array-data v1, :array_1

    invoke-static {v1}, Lz/k;->s([I)V

    .line 7
    :cond_1
    iget-object v1, p0, Lk0/ws$b;->a:Lk0/ws;

    iget v1, v1, Lk0/ws;->c:I

    rem-int/2addr v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    new-array v1, v0, [I

    .line 8
    fill-array-data v1, :array_2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 9
    :cond_2
    iget-object v1, p0, Lk0/ws$b;->a:Lk0/ws;

    iget v1, v1, Lk0/ws;->c:I

    rem-int/2addr v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v0, v0, Lk0/ws;->e:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/ws$b;->a:Lk0/ws;

    const/16 v1, 0xa

    iput v1, v0, Lk0/ws;->c:I

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xf1
        0x1
        0x71
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xf1
        0x1
        0x23
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xf1
        0x1
        0x30
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xf1
        0x1
        0x31
    .end array-data
.end method
