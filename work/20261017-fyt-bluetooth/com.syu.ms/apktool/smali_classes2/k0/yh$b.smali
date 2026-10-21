.class public Lk0/yh$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yh;


# direct methods
.method public constructor <init>(Lk0/yh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yh$b;->a:Lk0/yh;

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

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    new-array v0, v2, [I

    .line 13
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x2601b7 -> :sswitch_7
        0x2701b7 -> :sswitch_6
        0x6c01b7 -> :sswitch_5
        0x6d01b7 -> :sswitch_4
        0x7401b7 -> :sswitch_3
        0x8401c4 -> :sswitch_2
        0xac01b7 -> :sswitch_1
        0xb401c6 -> :sswitch_0
        0xb501c6 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x85
        0x1
        0x25
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x85
        0x1
        0xc
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x85
        0x1
        0x10
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x85
        0x1
        0xb
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x85
        0x1
        0x6
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x85
        0x1
        0x7
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x85
        0x1
        0x9
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x85
        0x1
        0x9
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x90
        0x2
        0x27
        0x0
    .end array-data
.end method
