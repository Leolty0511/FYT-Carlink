.class public Lk0/d1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/d1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/d1;


# direct methods
.method public constructor <init>(Lk0/d1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/d1$d;->a:Lk0/d1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    .line 4
    iget v3, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v3, v3

    .line 5
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    .line 6
    sget v4, Lu0/b;->a0:I

    const/4 v5, 0x4

    if-ne v4, v2, :cond_0

    invoke-static {}, Lk0/d1;->f3()I

    move-result v4

    if-ne v4, v2, :cond_0

    const/4 v4, 0x6

    new-array v4, v4, [I

    const/4 v6, 0x0

    const/16 v7, 0xe3

    aput v7, v4, v6

    const/16 v6, 0x89

    aput v6, v4, v2

    const/4 v6, 0x2

    const/4 v7, 0x3

    aput v7, v4, v6

    aput v3, v4, v7

    aput v0, v4, v5

    const/4 v0, 0x5

    and-int/2addr v1, v2

    aput v1, v4, v0

    .line 7
    invoke-static {v4}, Lz/k;->s([I)V

    :cond_0
    new-array v0, v5, [I

    .line 8
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v5, [I

    .line 9
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x22
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x90
        0x1
        0x23
    .end array-data
.end method
