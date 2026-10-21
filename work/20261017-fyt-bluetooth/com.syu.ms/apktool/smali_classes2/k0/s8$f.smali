.class public Lk0/s8$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/s8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/s8;


# direct methods
.method public constructor <init>(Lk0/s8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/s8$f;->a:Lk0/s8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    const/4 v2, 0x4

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v2, [I

    .line 2
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v2, [I

    .line 3
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v2, [I

    .line 4
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    .line 5
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    .line 6
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array v0, v2, [I

    .line 7
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array v0, v2, [I

    .line 8
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :cond_4
    new-array v0, v2, [I

    .line 9
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    .line 10
    :goto_0
    sget v0, Lk0/nt;->a:I

    const/16 v2, 0x135

    if-eq v0, v2, :cond_6

    const v2, 0xa0107

    if-eq v0, v2, :cond_5

    new-array v0, v1, [I

    .line 11
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    :cond_5
    new-array v0, v1, [I

    .line 12
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xe2
        0x1
        0xb
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe2
        0x1
        0x49
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xe2
        0x1
        0x48
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xe2
        0x1
        0x47
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xe2
        0x1
        0x46
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xe2
        0x1
        0x9
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xe2
        0x1
        0xa
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xe2
        0x1
        0x8
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x83
        0x2
        0x81
        0x0
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x83
        0x2
        0x81
        0x1
    .end array-data
.end method
