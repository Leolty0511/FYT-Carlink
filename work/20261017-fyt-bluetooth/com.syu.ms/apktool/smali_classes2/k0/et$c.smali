.class public Lk0/et$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/et;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:[B

.field public b:B

.field public c:I

.field public final synthetic d:Lk0/et;


# direct methods
.method public constructor <init>(Lk0/et;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/et$c;->d:Lk0/et;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-byte p1, p0, Lk0/et$c;->b:B

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    iget v0, p0, Lk0/et$c;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lk0/et$c;->c:I

    const/16 v2, 0x14

    if-ge v0, v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x28

    const/16 v3, 0x9

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0x23

    const/16 v10, 0xa

    const/4 v11, 0x4

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-gt v0, v2, :cond_1

    new-array v2, v10, [B

    aput-byte v9, v2, v13

    aput-byte v12, v2, v1

    .line 2
    rem-int/2addr v0, v11

    int-to-byte v0, v0

    aput-byte v0, v2, v8

    aput-byte v1, v2, v7

    aput-byte v13, v2, v11

    aput-byte v13, v2, v6

    aput-byte v13, v2, v5

    aput-byte v13, v2, v4

    aput-byte v13, v2, v12

    aput-byte v13, v2, v3

    iput-object v2, p0, Lk0/et$c;->a:[B

    goto :goto_0

    :cond_1
    const/16 v2, 0x3c

    if-ge v0, v2, :cond_2

    new-array v2, v10, [B

    aput-byte v9, v2, v13

    aput-byte v12, v2, v1

    .line 3
    rem-int/2addr v0, v11

    int-to-byte v0, v0

    aput-byte v0, v2, v8

    aput-byte v13, v2, v7

    aput-byte v13, v2, v11

    aput-byte v13, v2, v6

    aput-byte v13, v2, v5

    aput-byte v13, v2, v4

    aput-byte v13, v2, v12

    aput-byte v13, v2, v3

    iput-object v2, p0, Lk0/et$c;->a:[B

    .line 4
    :goto_0
    iget-object v0, p0, Lk0/et$c;->d:Lk0/et;

    iget-object v1, p0, Lk0/et$c;->a:[B

    array-length v2, v1

    invoke-virtual {v0, v1, v13, v2}, Lk0/et;->U2([BII)V

    return-void

    :cond_2
    const/16 v1, 0x64

    if-lt v0, v1, :cond_3

    .line 5
    iput v13, p0, Lk0/et$c;->c:I

    :cond_3
    return-void
.end method
