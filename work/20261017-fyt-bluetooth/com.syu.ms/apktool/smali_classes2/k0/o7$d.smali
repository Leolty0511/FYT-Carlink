.class public Lk0/o7$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/o7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/o7;


# direct methods
.method public constructor <init>(Lk0/o7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/o7$d;->a:Lk0/o7;

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

    const/4 v2, 0x6

    new-array v3, v2, [I

    const/16 v4, 0xc8

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    const/4 v6, 0x4

    aput v6, v3, v4

    const/4 v4, 0x2

    .line 4
    iget v7, v0, Landroid/text/format/Time;->minute:I

    aput v7, v3, v4

    const/4 v4, 0x3

    .line 5
    iget v0, v0, Landroid/text/format/Time;->hour:I

    aput v0, v3, v4

    aput v1, v3, v6

    const/4 v0, 0x5

    aput v5, v3, v0

    const/4 v0, 0x7

    new-array v0, v0, [I

    const/16 v1, 0xe3

    aput v1, v0, v5

    :goto_0
    if-ge v5, v2, :cond_0

    add-int/lit8 v1, v5, 0x1

    .line 6
    aget v4, v3, v5

    aput v4, v0, v1

    move v5, v1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lk0/o7;->f3([I)V

    return-void
.end method
