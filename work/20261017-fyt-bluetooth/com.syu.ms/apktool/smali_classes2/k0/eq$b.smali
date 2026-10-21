.class public Lk0/eq$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/eq;


# direct methods
.method public constructor <init>(Lk0/eq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/eq$b;->a:Lk0/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

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

    .line 4
    iget v3, v0, Landroid/text/format/Time;->year:I

    .line 5
    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v2

    .line 6
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    .line 7
    iget v6, v0, Landroid/text/format/Time;->hour:I

    .line 8
    iget v7, v0, Landroid/text/format/Time;->minute:I

    .line 9
    iget v0, v0, Landroid/text/format/Time;->second:I

    const/16 v8, 0xa

    new-array v8, v8, [I

    const/4 v9, 0x0

    const/16 v10, 0xe3

    aput v10, v8, v9

    const/16 v9, 0xc8

    aput v9, v8, v2

    const/4 v2, 0x2

    const/4 v9, 0x7

    aput v9, v8, v2

    const/4 v2, 0x3

    .line 10
    invoke-static {v6}, Ll0/c0;->L1(I)I

    move-result v6

    aput v6, v8, v2

    const/4 v2, 0x4

    .line 11
    invoke-static {v7}, Ll0/c0;->L1(I)I

    move-result v6

    aput v6, v8, v2

    const/4 v2, 0x5

    .line 12
    invoke-static {v0}, Ll0/c0;->L1(I)I

    move-result v0

    aput v0, v8, v2

    const/4 v0, 0x6

    rem-int/lit8 v3, v3, 0x64

    .line 13
    invoke-static {v3}, Ll0/c0;->L1(I)I

    move-result v2

    aput v2, v8, v0

    .line 14
    invoke-static {v4}, Ll0/c0;->L1(I)I

    move-result v0

    aput v0, v8, v9

    const/16 v0, 0x8

    .line 15
    invoke-static {v5}, Ll0/c0;->L1(I)I

    move-result v2

    aput v2, v8, v0

    const/16 v0, 0x9

    aput v1, v8, v0

    .line 16
    invoke-static {v8}, Lz/k;->s([I)V

    return-void
.end method
