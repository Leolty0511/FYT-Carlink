.class public Lk0/qm$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/qm;


# direct methods
.method public constructor <init>(Lk0/qm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/qm$a;->a:Lk0/qm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    const/4 v1, 0x6

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0xe3

    aput v3, v1, v2

    const/4 v2, 0x1

    const/16 v3, 0x83

    aput v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x3

    aput v3, v1, v2

    aput v3, v1, v3

    .line 3
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    const/4 v3, 0x4

    aput v2, v1, v3

    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/4 v2, 0x5

    aput v0, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    sget v0, Lk0/nt;->a:I

    const v1, 0xcc01c7

    if-eq v0, v1, :cond_1

    const v1, 0xd801c4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0xe3
        0xee
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xee
        0x1
        0x1
    .end array-data
.end method
