.class public Lk0/ni$a;
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
    iput-object p1, p0, Lk0/ni$a;->a:Lk0/ni;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x5

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v1, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v1, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_4
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v0, v1, [I

    .line 10
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5901c7 -> :sswitch_8
        0x5a01c7 -> :sswitch_7
        0x6d01c7 -> :sswitch_6
        0x6e01c7 -> :sswitch_6
        0x8201c7 -> :sswitch_5
        0x8301c7 -> :sswitch_4
        0x8401c7 -> :sswitch_3
        0x8f01b7 -> :sswitch_2
        0x9201b7 -> :sswitch_1
        0x9f01c6 -> :sswitch_5
        0xa001c6 -> :sswitch_4
        0xf401c6 -> :sswitch_0
        0xf501c6 -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xee
        0x2
        0x60
        0x1
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xee
        0x2
        0x60
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xee
        0x2
        0x60
        0x3
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xee
        0x2
        0x60
        0x4
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xee
        0x2
        0x60
        0x4
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xee
        0x2
        0x60
        0x5
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xee
        0x2
        0x60
        0x8
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xee
        0x2
        0x60
        0x7
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0xee
        0x2
        0x60
        0x6
    .end array-data
.end method
