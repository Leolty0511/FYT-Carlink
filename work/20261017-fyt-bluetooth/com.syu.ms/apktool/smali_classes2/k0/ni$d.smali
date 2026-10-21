.class public Lk0/ni$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ni;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ni;


# direct methods
.method public constructor <init>(Lk0/ni;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ni$d;->a:Lk0/ni;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

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

    const/16 v2, -0x38

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x2

    const/4 v4, 0x3

    aput v4, v1, v2

    .line 3
    iget v2, v0, Landroid/text/format/Time;->minute:I

    aput v2, v1, v4

    iget v0, v0, Landroid/text/format/Time;->hour:I

    const/4 v2, 0x4

    aput v0, v1, v2

    const/4 v0, 0x5

    aput v3, v1, v0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 4
    sget v1, Lk0/nt;->a:I

    const v2, 0x9301b7

    if-eq v1, v2, :cond_0

    const v2, 0x9e01b7

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        -0x7c
        0x2
        0x9
        0x1
    .end array-data
.end method
