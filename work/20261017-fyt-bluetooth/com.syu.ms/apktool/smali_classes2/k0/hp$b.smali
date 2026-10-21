.class public Lk0/hp$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hp;


# direct methods
.method public constructor <init>(Lk0/hp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hp$b;->a:Lk0/hp;

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

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    int-to-byte v1, v1

    .line 4
    iget v2, v0, Landroid/text/format/Time;->hour:I

    int-to-byte v2, v2

    if-nez v1, :cond_0

    const/16 v1, 0xc

    if-le v2, v1, :cond_0

    add-int/lit8 v2, v2, -0xc

    int-to-byte v2, v2

    .line 5
    :cond_0
    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-byte v0, v0

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/4 v3, 0x1

    const/16 v4, 0xc1

    aput v4, v1, v3

    const/4 v3, 0x2

    aput v3, v1, v3

    const/4 v3, 0x3

    aput v2, v1, v3

    const/4 v2, 0x4

    aput v0, v1, v2

    .line 6
    invoke-static {v1}, Lz/k;->s([I)V

    return-void
.end method
