.class public Lk0/iq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/iq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/iq;


# direct methods
.method public constructor <init>(Lk0/iq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/iq$a;->a:Lk0/iq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

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

    const/16 v3, 0x9

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v3, v4

    const/16 v4, 0x89

    aput v4, v3, v2

    const/4 v4, 0x2

    const/4 v5, 0x6

    aput v5, v3, v4

    const/4 v4, 0x3

    .line 4
    iget v6, v0, Landroid/text/format/Time;->hour:I

    aput v6, v3, v4

    const/4 v4, 0x4

    iget v6, v0, Landroid/text/format/Time;->minute:I

    aput v6, v3, v4

    const/4 v4, 0x5

    aput v1, v3, v4

    iget v1, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v1, v1, -0x7cf

    aput v1, v3, v5

    const/4 v1, 0x7

    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v2

    aput v4, v3, v1

    const/16 v1, 0x8

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    aput v0, v3, v1

    invoke-static {v3}, Lz/k;->s([I)V

    return-void
.end method
